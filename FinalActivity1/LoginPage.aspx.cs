using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalActivity1
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loginErrorMsg.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Session[SessionKeys.USER] = null;

            var user = txtUserName.Text;
            var password = txtPassWord.Text;

            var sessionService = new SessionService();
            var loggedUser = sessionService.Login(user, password);

            if (loggedUser == null)
            {
                loginErrorMsg.Visible = true;
            }
            else
            {
                RedirectoToPage(loggedUser);
            }
        }

        private void RedirectoToPage(User loggedUser)
        {
            Session[SessionKeys.USER] = loggedUser;
            if (loggedUser.IsAdmin)
            {
                Response.Redirect("Admin_Pages/AdminPage.aspx");
            }
            else
            {
                Response.Redirect("User_Pages/UserHomePage.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}