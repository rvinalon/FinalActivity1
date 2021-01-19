<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="FinalActivity1.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 69%;
        }
        .auto-style2 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            width: 360px;
        }
        .auto-style3 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            width: 208px;
        }
        .auto-style4 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            width: 208px;
        }
        .auto-style5 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            width: 133px;
        }
        .auto-style6 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            width: 208px;
            text-align: right;
        }
        .auto-style7 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            width: 208px;
            height: 25px;
        }
        .auto-style8 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            width: 133px;
            height: 25px;
        }
        .auto-style9 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            height: 25px;
            width: 360px;
        }
        .auto-style10 {
            height: 234px;
            margin-bottom: 0px;
        }
        .auto-style11 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            width: 208px;
            text-align: right;
            height: 26px;
        }
        .auto-style12 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            width: 133px;
            height: 26px;
        }
        .auto-style13 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            width: 360px;
            height: 26px;
        }
    </style>
</head>
<body style="width: 1129px; height: 234px;">
    <form id="form1" runat="server">
        <div class="auto-style10">
            <table class="auto-style1" style="background-color: #66FFFF; border: thick solid #000099">
                <tr>
                    <td class="auto-style3"><strong>Registration Page</strong></td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style6">First Name</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Last Name</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Username</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserName" ErrorMessage="* Invalid Email Address" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Password</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPassWord" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassWord" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Confirm Password</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtConPass" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassWord" ControlToValidate="txtConPass" ErrorMessage="* Password does not match" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Membership Type</td>
                     <td class="auto-style12">
                        <asp:DropDownList ID="drpMembershipType" runat="server">
                            <asp:ListItem Text="Silver" Value="0"/>
                            <asp:ListItem Text="Gold" Value="0"/>
                            <asp:ListItem Text="Platinum" Value="0"/>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Is Admin?</td>   
                    <td class="auto-style12">
                        <asp:CheckBox ID="chkIsAdmin" runat="server" ForeColor="#66FFFF"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btnRegister" runat="server" BackColor="#000099" BorderColor="#000099" ForeColor="#66FFFF" Text="Register" OnClick="btnRegister_Click" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
