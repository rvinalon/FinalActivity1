<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMasterPage.Master" CodeBehind="OrderSummary.aspx.cs" Inherits="FinalActivity1.User_Pages.OrderSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
		.auto-style1 {
			text-align: right;
		}

		td {
			width: 125px;
		}
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<h3>Order Summary</h3>

	<table class="auto-style1" runat="server" id="OrderSummaryTable" style="background-color: #66FFFF; border: thick solid #000099">
		<tr>
			<td>Name</td>
			<td>Price</td>
			<td>Quantity</td>
			<td>Amount</td>
		</tr>
		<tr runat="server" id="rowMSE">
			<td>Mouse</td>
			<td runat="server" id="Srp_MSE">350.00</td>
			<td runat="server" id="MSE"></td>
			<td runat="server" id="Amt_MSE"></td>

		</tr>
		<tr runat="server" id="rowPRN">
			<td>Printer Ink</td>
			<td runat="server" id="Srp_PRN">7500.00</td>
			<td runat="server" id="PRN"></td>
			<td runat="server" id="Amt_PRN"></td>
		</tr>
		<tr runat="server" id="rowPRNDT">
			<td>Printer Ink Dot Matrix</td>
			<td runat="server" id="Srp_PRNDT">5000.00</td>
			<td runat="server" id="PRNDT"></td>
			<td runat="server" id="Amt_PRNDT"></td>

		</tr>
		<tr runat="server" id="rowMNTRLc">
			<td>LCD Monitor</td>
			<td runat="server" id="Srp_MNTRLc">6500.00</td>
			<td runat="server" id="MNTRLc"></td>
			<td runat="server" id="Amt_MNTRLc"></td>

		</tr>
		<tr  runat="server" id="rowMNTRLe">
			<td>LED Monitor</td>
			<td runat="server" id="Srp_MNTRLe">7500.00</td>
			<td runat="server" id="MNTRLe"></td>
			<td runat="server" id="Amt_MNTRLe"></td>
		</tr>
		<tr>
			<td>Total Amount</td>
			<td></td>
			<td></td>
			<td runat="server" id="TotalAmount">0.00</td>
		</tr>
		<tr>
			<td>Vat Amount</td>
			<td></td>
			<td></td>
			<td runat="server" id="VatAmount">0.00</td>
		</tr>
		<tr>
			<td runat="server" id="Membership_Discount">Discount</td>
			<td></td>
			<td></td>
			<td runat="server" id="Discount">0.00</td>
		</tr>
		<tr>
			<td>Grand Total</td>
			<td></td>
			<td></td>
			<td runat="server" id="GrandTotal">0.00</td>
		</tr>

	</table>

	<div>
		<asp:Button runat="server" Text="Place Order" ID="btnPlaceOder" OnClick="btnPlaceOrder_Click" />
	</div>
</asp:Content>
