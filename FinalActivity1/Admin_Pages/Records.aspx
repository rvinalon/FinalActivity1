<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMasterPage.Master" CodeBehind="Records.aspx.cs" Inherits="FinalActivity1.Records" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>
		<h3>Members</h3>
         <asp:DataGrid ID="DataGrid1" runat="server">  </asp:DataGrid> 
	</div>
</asp:Content>