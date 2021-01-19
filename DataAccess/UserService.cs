using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace DataAccess
{
    public class UserService
    {
        static readonly string myConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MasterFile.mdf;Integrated Security=True";
        readonly SqlConnection myConn = new SqlConnection(myConStr);

        public DataSet GetOrderHistory(User user)
        {
            OpenDatabaseConnection();
            SqlDataAdapter sde = new SqlDataAdapter("SELECT o.Id, p.Name, o.Quantity, o.SuggestedRetailPrice, o.Amount " +
                "FROM [dbo].[Order] o INNER JOIN[dbo].[Transaction] t on o.TransactionId = t.Id " +
                $"LEFT JOIN Product p on o.ProductCode = p.Code WHERE t.UserId = {user.Id} AND o.Quantity > 0", myConn);

            DataSet ds = new DataSet();
            sde.Fill(ds);
            CloseDatabaseConnection();
            return ds;
        }

        public List<Product> GetProducts()
        {
            OpenDatabaseConnection();
            List<Product> products = new List<Product>();
            SqlCommand getCmd = new SqlCommand("GetProducts", myConn);
            getCmd.CommandType = CommandType.StoredProcedure;

            SqlDataReader reader = getCmd.ExecuteReader();

            while (reader.Read())
            {
                var product = new Product
                {
                    Id = (int)reader["Id"],
                    Code = reader["Code"].ToString(),
                    Name = reader["Name"].ToString(),
                    Price = (decimal)reader["Price"],
                    Stock = (int)reader["Stock"],
                    SuggestedRetailPrice = (decimal)reader["SuggestedRetailPrice"]
                };

                products.Add(product);
            }

            CloseDatabaseConnection();
            return products;
        }

        public Product GetProductByCode(string productCode)
        {
            OpenDatabaseConnection();
            Product product = new Product();
            SqlCommand getCmd = new SqlCommand("GetProductByCode", myConn);
            getCmd.CommandType = CommandType.StoredProcedure;
            getCmd.Parameters.Add("@Code", SqlDbType.NVarChar).Value = productCode;

            SqlDataReader reader = getCmd.ExecuteReader();

            while (reader.Read())
            {
                product.Id = (int)reader["Id"];
                product.Code = reader["Code"].ToString();
                product.Name = reader["Name"].ToString();
                product.Price = (decimal)reader["Price"];
                product.Stock = (int)reader["Stock"];
                product.SuggestedRetailPrice = (decimal)reader["SuggestedRetailPrice"];

            }

            CloseDatabaseConnection();
            return product;
        }

        public Transaction CreateTransaction(List<Order> orders, User user)
        {
            if (orders is null)
            {
                throw new ArgumentNullException(nameof(orders));
            }

            var transaction = new Transaction() { Orders = orders, UserId = user.Id };

            var orderTotal = orders.Sum(x => x.Amount);
            var discount = (decimal)0.00;
            var vatPercentage = (decimal)0.10;
            transaction.Total = orderTotal;
            transaction.VatAmount = orderTotal * vatPercentage;

            var totalAmountWithVAt = transaction.Total + transaction.VatAmount;
            if (totalAmountWithVAt > 10000)
            {
                switch (user.MemberType)
                {
                    case MemberType.Silver:
                        discount = totalAmountWithVAt * (decimal)0.05;
                        break;
                    case MemberType.Gold:
                        discount = totalAmountWithVAt * (decimal)0.10;
                        break;
                    case MemberType.Platinum:
                        discount = totalAmountWithVAt * (decimal)0.15;
                        break;
                    default:
                        break;
                }
            }

            transaction.Discount = discount;
            transaction.GrandTotal = totalAmountWithVAt - discount;

            transaction.Id = InsertTransaction(transaction);

            return transaction;
        }

        public void CreateOrders(Transaction transaction)
        {
            foreach(var order in transaction.Orders)
            {
                if (order.Amount > 0)
                {
                    order.TransactionId = transaction.Id;
                    InsertOrder(order);
                    UpdateProduct(order);
                }
            }
        }

        private void UpdateProduct(Order order)
        {
            using (SqlCommand cmd = new SqlCommand("UPDATE dbo.[Product] SET Stock = (Stock - @Quantity) WHERE Code = @Code", myConn))
            {
                cmd.Parameters.AddWithValue("@Code", order.ProductCode);
                cmd.Parameters.AddWithValue("@Quantity", order.Quantity);
                OpenDatabaseConnection();
                cmd.ExecuteNonQuery();
                CloseDatabaseConnection();
            }
        }

        private void InsertOrder(Order order)
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Order] (TransactionId, ProductCode, Quantity, Amount, SuggestedRetailPrice) " +
                "VALUES (@TransactionId, @ProductCode, @Quantity, @Amount, @SuggestedRetailPrice)", myConn))
            {
                cmd.Parameters.AddWithValue("@TransactionId", order.TransactionId);
                cmd.Parameters.AddWithValue("@ProductCode", order.ProductCode);
                cmd.Parameters.AddWithValue("@Quantity", order.Quantity);
                cmd.Parameters.AddWithValue("@Amount", order.Amount);
                cmd.Parameters.AddWithValue("@SuggestedRetailPrice", order.SuggestedRetailPrice);

                OpenDatabaseConnection();
                cmd.ExecuteNonQuery();
                CloseDatabaseConnection();
            }
        }

        private int InsertTransaction(Transaction transaction)
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Transaction] (UserId, Total, VatAmount, Discount, GrandTotal) output INSERTED.ID  " +
                "VALUES (@UserId, @Total, @VatAmount, @Discount, @GrandTotal)", myConn))
            {
                cmd.Parameters.AddWithValue("@UserId", transaction.UserId);
                cmd.Parameters.AddWithValue("@Total", transaction.Total);
                cmd.Parameters.AddWithValue("@VatAmount", transaction.VatAmount);
                cmd.Parameters.AddWithValue("@Discount", transaction.Discount);
                cmd.Parameters.AddWithValue("@GrandTotal", transaction.GrandTotal);

                myConn.Open();
                var modified = (int)cmd.ExecuteScalar();

                if (myConn.State == ConnectionState.Open) myConn.Close();
                return modified;
            }
        }

        private void OpenDatabaseConnection()
        {
            if (myConn.State == ConnectionState.Closed)
            {
                myConn.Open();
            }
        }

        private void CloseDatabaseConnection()
        {
            if (myConn.State == ConnectionState.Open)
            {
                myConn.Close();
            }
        }
    }
}
