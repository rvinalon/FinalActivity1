namespace DataAccess
{
    public class SessionService
    {
        DatabaseService db = new DatabaseService();

        public User Login(string userName, string password)
        {
            var user = db.GetUserByUserName(userName, password);
            if (user.UserName == userName && user.PassWord == password)
            {
                return user;
            }
            else
            {
                return null;
            }
        }   
    }

    public class SessionKeys
    {
        public static string USER = "user";

        public static string ORDER = "order";

        public static string TRANSACTION = "transaction";
    }
}
