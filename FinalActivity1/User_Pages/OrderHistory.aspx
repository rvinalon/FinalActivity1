<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMasterPage.Master" CodeBehind="OrderHistory.aspx.cs" Inherits="FinalActivity1.OrderHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>
		<h3>Order History</h3>
         <asp:DataGrid ID="DataGrid1" runat="server">  </asp:DataGrid> 
	</div>
</asp:Content>