using DataAccess;
using System;
using System.Data;
using System.Web.UI;

namespace FinalActivity1
{
    public partial class OrderHistory : Page
    {
        private readonly UserService _userService = new UserService();
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = (User)Session[SessionKeys.USER];

            if (user == null)
            {
                Response.Redirect("~/LoginPage.aspx");
            }
            DataSet ds = _userService.GetOrderHistory(user);
            DataGrid1.DataSource = ds;
            DataGrid1.DataBind();
        }
    }
}