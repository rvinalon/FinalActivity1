using DataAccess;
using System;

namespace FinalActivity1
{
    public partial class UserPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = Session[SessionKeys.USER];
            if (user == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
        
        protected void btnAddtoCart1_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddtoCart2_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddtoCart3_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddtoCart4_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddtoCart5_Click(object sender, EventArgs e)
        {

        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("OutputPage.aspx");
        }
    }
}