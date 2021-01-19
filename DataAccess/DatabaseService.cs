using System.Data;
using System.Data.SqlClient;

namespace DataAccess
{
    public class DatabaseService
    {
        static string myConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MasterFile.mdf;Integrated Security=True";
        SqlConnection myConn = new SqlConnection(myConStr);

        public void CreateUser(User user)
        {
            OpenDatabaseConnection();
            SqlCommand saveCmd = new SqlCommand("CreateUser", myConn);
            saveCmd.CommandType = CommandType.StoredProcedure;
            saveCmd.Parameters.Add("@FirstName", SqlDbType.NVarChar).Value = user.FirstName;
            saveCmd.Parameters.Add("@LastName", SqlDbType.NVarChar).Value = user.LastName;
            saveCmd.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = user.UserName;
            saveCmd.Parameters.Add("@PassWord", SqlDbType.NVarChar).Value = user.PassWord;
            saveCmd.Parameters.Add("@MembershipType", SqlDbType.Int).Value = user.MemberType;
            saveCmd.Parameters.Add("@IsAdmin", SqlDbType.Bit).Value = user.IsAdmin;
            saveCmd.ExecuteNonQuery();
            CloseDatabaseConnection();
        }

        public User GetUserByUserName(string username, string password)
        {
            OpenDatabaseConnection();
            User user = new User();
            SqlCommand getCmd = new SqlCommand("GetUserByUserName", myConn);
            getCmd.CommandType = CommandType.StoredProcedure;
            getCmd.Parameters.Add("@Username", SqlDbType.NVarChar).Value = username;
            getCmd.Parameters.Add("@Password", SqlDbType.NVarChar).Value = password;

            SqlDataReader reader = getCmd.ExecuteReader();
            
            while (reader.Read())
            {
                user.Id = (int)reader["Id"];
                user.FirstName = reader["FirstName"].ToString();
                user.LastName = reader["LastName"].ToString();
                user.UserName = reader["UserName"].ToString();
                user.PassWord = reader["Password"].ToString();
                user.MemberType = (MemberType)reader["MembershipType"];
                user.IsAdmin = (bool)reader["IsAdmin"];
            }

            CloseDatabaseConnection();
            return user;
        }

        public bool ChangePassword(string userName, string password, string newPassword)
        {
            User user = GetUserByUserName(userName, password);
            if (user == null)
            {
                return false;
            }

            OpenDatabaseConnection();
            SqlCommand saveCmd = new SqlCommand("ChangePassword", myConn);
            saveCmd.CommandType = CommandType.StoredProcedure;
            saveCmd.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = userName;
            saveCmd.Parameters.Add("@Password", SqlDbType.NVarChar).Value = password;
            saveCmd.Parameters.Add("@NewPassword", SqlDbType.NVarChar).Value = newPassword;
            saveCmd.ExecuteNonQuery();
            CloseDatabaseConnection();
            return true;
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
