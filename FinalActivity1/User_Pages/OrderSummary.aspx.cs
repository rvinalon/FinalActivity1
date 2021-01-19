using DataAccess;
using System;
using System.Collections.Generic;

namespace FinalActivity1.User_Pages
{
    public partial class OrderSummary : System.Web.UI.Page
    {
        private List<Order> Orders;
        private User SessionUser;
        private readonly UserService _userService = new UserService();

        protected void Page_Load(object sender, EventArgs e)
        {
            Orders = (List<Order>)Session[SessionKeys.ORDER];
            SessionUser = (User)Session[SessionKeys.USER];
            if (Orders == null)
            {
                Response.Redirect("~/User_Pages/OrderPage.aspx");
            }

            if (!IsPostBack)
            {
                SetOrderSummary();
            }
        }

        private void SetOrderSummary()
        {
            foreach(var order in Orders)
            {
                if (order.ProductCode == "MSE")
                {
                    if (order.Quantity > 0)
                    {
                        MSE.InnerText = order.Quantity.ToString();
                        Srp_MSE.InnerText = string.Format("{0:0.00}", order.SuggestedRetailPrice);
                        Amt_MSE.InnerText = string.Format("{0:0.00}", order.Amount);
                    }
                    else
                    {
                        rowMSE.Visible = false;
                    }
                }

                if (order.ProductCode == "PRN")
                {
                    if (order.Quantity > 0)
                    {
                        PRN.InnerText = order.Quantity.ToString();
                        Srp_PRN.InnerText = string.Format("{0:0.00}", order.SuggestedRetailPrice);
                        Amt_PRN.InnerText = string.Format("{0:0.00}", order.Amount);
                    }
                    else
                    {
                        rowPRN.Visible = false;
                    }
                }

                if (order.ProductCode == "PRNDT")
                {
                    if (order.Quantity > 0)
                    {
                        PRNDT.InnerText = order.Quantity.ToString();
                        Srp_PRNDT.InnerText = string.Format("{0:0.00}", order.SuggestedRetailPrice);
                        Amt_PRNDT.InnerText = string.Format("{0:0.00}", order.Amount);
                    }
                    else
                    {
                        rowPRNDT.Visible = false;
                    }
                }

                if (order.ProductCode == "MNTRLc")
                {
                    if (order.Quantity > 0)
                    {
                        MNTRLc.InnerText = order.Quantity.ToString();
                        Srp_MNTRLc.InnerText = string.Format("{0:0.00}", order.SuggestedRetailPrice);
                        Amt_MNTRLc.InnerText = string.Format("{0:0.00}", order.Amount);
                    }
                    else
                    {
                        rowMNTRLc.Visible = false;
                    }
                }

                if (order.ProductCode == "MNTRLe")
                {
                    if (order.Quantity > 0)
                    {
                        MNTRLe.InnerText = order.Quantity.ToString();
                        Srp_MNTRLe.InnerText = string.Format("{0:0.00}", order.SuggestedRetailPrice);
                        Amt_MNTRLe.InnerText = string.Format("{0:0.00}", order.Amount);
                    }
                    else
                    {
                        rowMNTRLe.Visible = false;
                    }
                }
            }

            var transaction = (Transaction)Session[SessionKeys.TRANSACTION];
            TotalAmount.InnerText = string.Format("{0:0.00}", transaction.Total);
            VatAmount.InnerText = string.Format("{0:0.00}", transaction.VatAmount);
            Membership_Discount.InnerText = $"Discount ({SessionUser.MemberType})";
            Discount.InnerText = string.Format("{0:0.00}", transaction.Discount);
            GrandTotal.InnerText = string.Format("{0:0.00}", transaction.GrandTotal);
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User_Pages/OrderHistory.aspx");
        }
    }
}