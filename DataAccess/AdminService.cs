using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class AdminService
    {
        static string myConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MasterFile.mdf;Integrated Security=True";

        public DataSet GetAllTransactions()
        {
            OpenDatabaseConnection();
            SqlDataAdapter sde = new SqlDataAdapter("Select * from [dbo].[Transaction]", myConn);
            DataSet ds = new DataSet();
            sde.Fill(ds);
            CloseDatabaseConnection();
            return ds;
        }

        SqlConnection myConn = new SqlConnection(myConStr);

        public bool AddProduct(Product product)
        {
            OpenDatabaseConnection();
            SqlCommand saveCmd = new SqlCommand("AddNewProduct", myConn);
            saveCmd.CommandType = CommandType.StoredProcedure;
            saveCmd.Parameters.Add("@Code", SqlDbType.NVarChar).Value = product.Code;
            saveCmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = product.Name;
            saveCmd.Parameters.Add("@Price", SqlDbType.Decimal).Value = product.Price;
            saveCmd.Parameters.Add("@Stock", SqlDbType.Int).Value = product.Stock;
            saveCmd.ExecuteNonQuery();
            CloseDatabaseConnection();
            return true;
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
                product.Price = (decimal)reader["Name"];
                product.Stock = (int)reader["Stock"];

            }

            CloseDatabaseConnection();
            return product;
        }

        public DataSet GetProducts()
        {
            OpenDatabaseConnection();
            SqlDataAdapter sde = new SqlDataAdapter("Select * from Product", myConn);
            DataSet ds = new DataSet();
            sde.Fill(ds);
            CloseDatabaseConnection();
            return ds;
        }

        public DataSet GetRecords()
        {
            OpenDatabaseConnection();
            SqlDataAdapter sde = new SqlDataAdapter("Select Id, FirstName, LastName, UserName, MembershipType from [dbo].[User] Where IsAdmin = 0", myConn);
            DataSet ds = new DataSet();
            sde.Fill(ds);
            CloseDatabaseConnection();
            return ds;
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
