using DataAccess;
using System;

namespace FinalActivity1
{
    public partial class OutputPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            var user = Session[SessionKeys.USER];
            if (user == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
}