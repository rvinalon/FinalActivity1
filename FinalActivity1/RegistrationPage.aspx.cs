using DataAccess;
using System;

namespace FinalActivity1
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            var user = new User()
            {
                FirstName = txtFirstName.Text,
                LastName = txtLastName.Text,
                UserName = txtUserName.Text,
                PassWord = txtPassWord.Text,
                MemberType = (MemberType)Convert.ToInt32(drpMembershipType.SelectedValue),
                IsAdmin = chkIsAdmin.Checked
            };

            DatabaseService data = new DatabaseService();
            data.CreateUser(user);
            Session[SessionKeys.USER] = user;
            Response.Redirect("LoginPage.aspx");
        }
    }
}