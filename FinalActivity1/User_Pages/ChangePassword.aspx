<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="FinalActivity1.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
        .auto-style2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            color: #000099;
            height: 36px;
            width: 277px;
        }
        .auto-style3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            color: #000099;
            width: 277px;
            text-align: right;
        }
        .auto-style4 {
            height: 36px;
        }
        .auto-style5 {
            width: 277px;
        }
        .auto-style6 {
            width: 277px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #66FFFF; border: thick solid #000099">
        <tr>
            <td class="auto-style2"><strong>Profile Manager</strong></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td runat="server" id="msgChangePassword"></td>
        </tr>
        <tr>
            <td class="auto-style3">Current Password</td>
            <td>
                <asp:TextBox ID="txtCurrentPass" runat="server" Width="152px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">New Password</td>
            <td>
                <asp:TextBox ID="txtNewPass" runat="server" Width="152px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Button ID="btnChangePass" runat="server" BackColor="#000099" BorderColor="#000099" ForeColor="#66FFFF" OnClick="btnChangePass_Click" Text="Change Password" />
            </td>
        </tr>
    </table>
</asp:Content>
