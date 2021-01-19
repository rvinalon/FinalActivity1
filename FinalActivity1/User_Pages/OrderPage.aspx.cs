using DataAccess;
using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace FinalActivity1
{
    public partial class OrderPage : System.Web.UI.Page
    {
        private readonly UserService _userService = new UserService();
        private List<Product> _products;
        private User SessionUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            SessionUser = (User)Session[SessionKeys.USER];
            if (SessionUser == null)
            {
                Response.Redirect("~/LoginPage.aspx");
            }
            _products = _userService.GetProducts();
            SetSuggestedRetailPrice();
        }

        private void SetSuggestedRetailPrice()
        {
            foreach(var product in _products)
            {
                if (product.Code == "MSE")
                {
                    if (product.Stock == 0)
                        SetOutOfStock(MSE);

                    stock_MSE.InnerText = product.Stock.ToString();
                    Srp_MSE.InnerText = string.Format("{0:0.00}", product.SuggestedRetailPrice);
                }

                if(product.Code == "PRN")
                {
                    if (product.Stock == 0)
                        SetOutOfStock(PRN);

                    stock_PRN.InnerText = product.Stock.ToString();
                    Srp_PRN.InnerText = string.Format("{0:0.00}", product.SuggestedRetailPrice);
                }

                if (product.Code == "PRNDT")
                {
                    if (product.Stock == 0)
                        SetOutOfStock(PRNDT);

                    stock_PRNDT.InnerText = product.Stock.ToString();
                    Srp_PRNDT.InnerText = string.Format("{0:0.00}", product.SuggestedRetailPrice);
                }

                if (product.Code == "MNTRLc")
                {
                    if (product.Stock == 0)
                        SetOutOfStock(MNTRLc);

                    stock_MNTRLc.InnerText = product.Stock.ToString();
                    Srp_MNTRLc.InnerText = string.Format("{0:0.00}", product.SuggestedRetailPrice);
                }

                if (product.Code == "MNTRLe")
                {
                    if (product.Stock == 0)
                        SetOutOfStock(MNTRLe);
                    
                    stock_MNTRLe.InnerText = product.Stock.ToString();
                    Srp_MNTRLe.InnerText = string.Format("{0:0.00}", product.SuggestedRetailPrice);
                }
            }
        }

        private void SetOutOfStock(TextBox tb)
        {
            tb.ReadOnly = true;
            tb.TextMode = TextBoxMode.SingleLine;
            tb.Text = "Out of Stock";
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {

            var mse = _userService.GetProductByCode("MSE");
            int mouseQty = GetQuantity(MSE);
            var mouse = new Order()
            {
                ProductCode = "MSE",
                Quantity = mouseQty,
                SuggestedRetailPrice = mse.SuggestedRetailPrice,
                Amount = mse.SuggestedRetailPrice * mouseQty
            };

            var prn = _userService.GetProductByCode("PRN");
            var prnQty = GetQuantity(PRN);
            var printerInk = new Order()
            {
                ProductCode = "PRN",
                Quantity = prnQty,
                SuggestedRetailPrice = prn.SuggestedRetailPrice,
                Amount = prn.SuggestedRetailPrice * prnQty
            };

            var prndt = _userService.GetProductByCode("PRNDT");
            var prndtQty = GetQuantity(PRNDT);
            var printerInkDotMatrix = new Order()
            {
                ProductCode = "PRNDT",
                Quantity = prndtQty,
                SuggestedRetailPrice = prndt.SuggestedRetailPrice,
                Amount = prndt.SuggestedRetailPrice * prndtQty
            };

            var mntrlc = _userService.GetProductByCode("MNTRLc");
            var mntrlctQty = GetQuantity(MNTRLc);
            var LCDMonitor = new Order()
            {
                ProductCode = "MNTRLc",
                Quantity = mntrlctQty,
                SuggestedRetailPrice = prndt.SuggestedRetailPrice,
                Amount = mntrlc.SuggestedRetailPrice * mntrlctQty
            };

            var mntrle = _userService.GetProductByCode("MNTRLe");
            var mntrletQty = GetQuantity(MNTRLe);
            var LEDMonitor = new Order()
            {
                ProductCode = "MNTRLe",
                Quantity = mntrletQty,
                SuggestedRetailPrice = prndt.SuggestedRetailPrice,
                Amount = mntrle.SuggestedRetailPrice * mntrletQty
            };

            var orders = new List<Order>() {
                mouse,
                printerInk,
                printerInkDotMatrix,
                LCDMonitor,
                LEDMonitor
            };

           
           
            var transaction = _userService.CreateTransaction(orders, SessionUser);
            _userService.CreateOrders(transaction);

            Session[SessionKeys.ORDER] = orders;
            Session[SessionKeys.TRANSACTION] = transaction;
            Response.Redirect("~/User_Pages/OrderSummary.aspx");
        }

        private int GetQuantity(TextBox tb)
        {
            return string.IsNullOrEmpty(tb.Text) || tb.TextMode != TextBoxMode.Number ? 0 : Convert.ToInt32(tb.Text);
        }
    }
}