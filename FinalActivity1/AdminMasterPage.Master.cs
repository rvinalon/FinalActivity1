using DataAccess;
using System;

namespace FinalActivity1
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = (User)Session[SessionKeys.USER];
            btnLogout.Visible = user != null;
        }

  
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect ("~/LoginPage.aspx");
        }
    }
}