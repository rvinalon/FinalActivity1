<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="FinalActivity1.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 540px;
        }
        .auto-style2 {
            width: 180px;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            color: #000099;
        }
        .auto-style3 {
            width: 180px;
            text-align: right;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            color: #000099;
        }
        .auto-style4 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            color: #000099;
        }
        .auto-style5 {
            width: 180px;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            color: #000099;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div runat="server" id="loginErrorMsg" visible="false">
            User not found or password does not match.
        </div>
        <table class="auto-style1" style="background-color: #66FFFF; border: thick solid #000099">
            <tr>
                <td class="auto-style5"><strong>Login Page</strong></td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Username</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPassWord" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnLogin" runat="server" BackColor="#000099" BorderColor="#000099" ForeColor="#66FFFF" Text="Login" OnClick="btnLogin_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RegistrationPage.aspx" OnClick="LinkButton1_Click">Register Here</asp:LinkButton>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
