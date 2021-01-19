using DataAccess;
using System;
using System.Data;
using System.Web.UI;

namespace FinalActivity1
{
    public partial class Transactions : Page
    {
        private AdminService _adminService = new AdminService();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = _adminService.GetAllTransactions();
            DataGrid1.DataSource = ds;
            DataGrid1.DataBind();
        }
    }
}