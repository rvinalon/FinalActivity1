using DataAccess;
using System;

namespace FinalActivity1
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePass_Click(object sender, EventArgs e)
        {
            DatabaseService db = new DatabaseService();
            User user = (User)Session[SessionKeys.USER];
            var isSuccess = db.ChangePassword(user.UserName, txtCurrentPass.Text, txtNewPass.Text);

            if (isSuccess)
            {
                msgChangePassword.InnerText = "Change password successful";
            }
            else
            {
                msgChangePassword.InnerText = "Password does not match.";
            }
        }
    }
}