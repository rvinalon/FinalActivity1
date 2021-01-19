<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMasterPage.Master" CodeBehind="Transactions.aspx.cs" Inherits="FinalActivity1.Transactions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>
		<h3>Transactions</h3>
         <asp:DataGrid ID="DataGrid1" runat="server">  </asp:DataGrid> 
	</div>
</asp:Content>