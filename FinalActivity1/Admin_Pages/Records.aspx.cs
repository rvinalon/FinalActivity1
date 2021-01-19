using DataAccess;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalActivity1
{
    public partial class Records : Page
    {
        private readonly AdminService _adminService = new AdminService();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = _adminService.GetRecords();
            DataGrid1.DataSource = ds;
            DataGrid1.DataBind();
        }
    }
}