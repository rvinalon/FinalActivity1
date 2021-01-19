<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="UserPage.aspx.cs" Inherits="FinalActivity1.UserPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: xx-large;
            color: #000099;
        }
        .auto-style4 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style10 {
            width: 105px;
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style11 {
            width: 105px;
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            height: 25px;
        }
        .auto-style12 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            height: 25px;
        }
        .auto-style17 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            height: 25px;
            width: 208px;
        }
        .auto-style18 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            width: 208px;
        }
        .auto-style19 {
            width: 105px;
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            height: 30px;
        }
        .auto-style20 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            height: 30px;
        }
        .auto-style21 {
            color: #000099;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            width: 208px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="auto-style2" style="background-color: #66FFFF; border: thick solid #000099">
            <strong>Customer Transaction Sheet</strong></div>
    <table class="auto-style1" style="background-color: #66FFFF; border: thick solid #000099">
        <tr>
            <td class="auto-style11">ID</td>
            <td class="auto-style12">Product Id</td>
            <td class="auto-style17">Product Name</td>
            <td class="auto-style12">Price</td>
            <td class="auto-style12">Stocks</td>
            <td class="auto-style12">SRP</td>
            <td class="auto-style12">Quantity</td>
        </tr>
        <tr>
            <td class="auto-style10">1</td>
            <td class="auto-style4">MSE</td>
            <td class="auto-style18">
                Mouse</td>
            <td class="auto-style4">
                <asp:Label ID="lblMousePrice" runat="server" Text="350.00"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="lblMouseStocks" runat="server" Text="100"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="lblSRP1" runat="server" Text="52.50"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtMouseQty" runat="server"></asp:TextBox>
                <asp:Button ID="btnAddtoCart1" runat="server" BackColor="#000099" BorderColor="#000099" ForeColor="#66FFFF" Text="Add to Cart" OnClick="btnAddtoCart1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">2</td>
            <td class="auto-style4">PRN</td>
            <td class="auto-style18">
                Printer Ink</td>
            <td class="auto-style4">
                <asp:Label ID="lblPrinterInkPrice" runat="server" Text="7500.00"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="lblPrintInkStocks" runat="server" Text="100"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="lblSRP2" runat="server" Text="1125.00"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPrintInkQty" runat="server"></asp:TextBox>
                <asp:Button ID="btnAddtoCart2" runat="server" BackColor="#000099" BorderColor="#000099" ForeColor="#66FFFF" Text="Add to Cart" OnClick="btnAddtoCart2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">3</td>
            <td class="auto-style4">PRNDT</td>
            <td class="auto-style18">
                Printer Dot Matrix</td>
            <td class="auto-style4">
                <asp:Label ID="lblPrinterDotPrice" runat="server" Text="5000.00"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="lblPrintDotStocks" runat="server" Text="100"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="lblSRP3" runat="server" Text="750.00"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPrintDotQty" runat="server"></asp:TextBox>
                <asp:Button ID="btnAddtoCart3" runat="server" BackColor="#000099" BorderColor="#000099" ForeColor="#66FFFF" Text="Add to Cart" OnClick="btnAddtoCart3_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style19">4</td>
            <td class="auto-style20"><span lang="EN-US" style="line-height: 107%; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">MNTRLc</span></td>
            <td class="auto-style21">
                LCD Monitor</td>
            <td class="auto-style20">
                <asp:Label ID="lblLCDPrice" runat="server" Text="6500.00"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:Label ID="lblLCDStocks" runat="server" Text="100"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:Label ID="lblSRP4" runat="server" Text="975.00"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:TextBox ID="txtLCDQty" runat="server"></asp:TextBox>
                <asp:Button ID="btnAddtoCart4" runat="server" BackColor="#000099" BorderColor="#000099" ForeColor="#66FFFF" Text="Add to Cart" OnClick="btnAddtoCart4_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">5</td>
            <td class="auto-style4"><span lang="EN-US" style="line-height: 107%; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">MNTRL</span><span style="line-height: 107%; mso-fareast-font-family: Verdana; mso-bidi-font-family: Verdana; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">e</span></td>
            <td class="auto-style18">
                LED Monitor</td>
            <td class="auto-style4">
                <asp:Label ID="lblLEDPrice" runat="server" Text="7500.00"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="lblLEDStocks" runat="server" Text="100"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="lblSRP5" runat="server" Text="1125.00"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtLEDQty" runat="server"></asp:TextBox>
                <asp:Button ID="btnAddtoCart5" runat="server" BackColor="#000099" BorderColor="#000099" ForeColor="#66FFFF" Text="Add to Cart" OnClick="btnAddtoCart5_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btnCheckOut" runat="server" BackColor="#000099" BorderColor="#000099" ForeColor="#66FFFF" Text="Check Out" OnClick="btnCheckOut_Click" />
            </td>
        </tr>
    </table>
</asp:Content>