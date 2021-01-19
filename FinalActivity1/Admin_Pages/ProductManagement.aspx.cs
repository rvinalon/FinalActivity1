using DataAccess;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalActivity1
{
    public partial class ProductManagement : System.Web.UI.Page
    {
        private AdminService _adminService = new AdminService();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = _adminService.GetProducts();
            DataGrid1.DataSource = ds;
            DataGrid1.DataBind();
        }


        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            Product product = new Product
            {
                Code = txtProductCode.Text,
                Name = txtProductName.Text,
                Price = Convert.ToDecimal(txtPrice.Text),
                Stock = Convert.ToInt32(txtStock.Text)
            };

            _adminService.AddProduct(product);

            txtPrice.Text = string.Empty;
            txtProductName.Text = string.Empty;
            txtProductCode.Text = string.Empty;
            txtStock.Text = string.Empty;
        }
    }
}