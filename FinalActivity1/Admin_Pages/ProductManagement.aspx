<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMasterPage.Master" CodeBehind="ProductManagement.aspx.cs" Inherits="FinalActivity1.ProductManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>
		<h3>Add Product</h3>
		
		<div>
            <table class="auto-style1" style="background-color: #66FFFF; border: thick solid #000099">
                <tr>
                    <td class="">Product Code</td>
                    <td class="">
                        <asp:TextBox ID="txtProductCode" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="">Product Name</td>
                    <td class="">
                        <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="">Price</td>
                    <td class="">
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="">Initial Stock</td>
                    <td class="">
                        <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAddProduct" runat="server" BackColor="#000099" BorderColor="#000099" ForeColor="#66FFFF" Text="Add Product" OnClick="btnAddProduct_Click" />
                    </td>
                </tr>
            </table>
		</div>
	</div>

	<div>
		<h3>Products</h3>
         <asp:DataGrid ID="DataGrid1" runat="server">  </asp:DataGrid> 
	</div>
</asp:Content>