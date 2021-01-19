<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMasterPage.Master" CodeBehind="OrderPage.aspx.cs" Inherits="FinalActivity1.OrderPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<div>
		<h3>Order Page</h3>

		<table class="auto-style1" runat="server" id="OrderTable" style="background-color: #66FFFF; border: thick solid #000099">
			<tr>
				<td>Name</td>
				<td>Price</td>
				<td>Quantity</td>
				<td>Stock</td>
			</tr>
			<tr>
				<td>Mouse</td>
				<td runat="server" id="Srp_MSE">350.00</td>
				<td>
					<asp:TextBox ID="MSE" TextMode="Number" runat="server" />
				</td>
				<td runat="server" id="stock_MSE"></td>
			</tr>
			<tr>
				<td>Printer Ink</td>
				<td runat="server" id="Srp_PRN">7500.00</td>
				<td>
					<asp:TextBox ID="PRN" TextMode="Number" runat="server" />
				</td>
				<td runat="server" id="stock_PRN"></td>
			</tr>
			<tr>
				<td>Printer Ink Dot Matrix</td>
				<td runat="server" id="Srp_PRNDT">5000.00</td>
				<td>
					<asp:TextBox ID="PRNDT" TextMode="Number" runat="server" />
				</td>
				<td runat="server" id="stock_PRNDT"></td>

			</tr>
			<tr>
				<td>LCD Monitor</td>
				<td runat="server" id="Srp_MNTRLc">6500.00</td>
				<td>
					<asp:TextBox ID="MNTRLc" TextMode="Number" runat="server" />
				</td>
				<td runat="server" id="stock_MNTRLc"></td>

			</tr>
			<tr>
				<td>LED Monitor</td>
				<td runat="server" id="Srp_MNTRLe">7500.00</td>
				<td>
					<asp:TextBox ID="MNTRLe" TextMode="Number" runat="server" />
				</td>
				<td runat="server" id="stock_MNTRLe"></td>
			</tr>
		</table>

		<div>
			<asp:Button runat="server" Text="Checkout" ID="btnCheckOut" OnClick="btnCheckOut_Click" />
		</div>
	</div>


</asp:Content>
