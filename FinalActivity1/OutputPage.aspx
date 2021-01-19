<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMasterPage.Master" CodeBehind="OutputPage.aspx.cs" Inherits="FinalActivity1.OutputPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            color: #000099;
        }
        .auto-style3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            color: #000099;
            font-size: x-large;
        }
        .auto-style4 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            color: #000099;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <table class="auto-style1" style="background-color: #66FFFF; border: thick solid #000099">
                <tr>
                    <td class="auto-style3"><strong>Output Page</strong></td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Product Name</td>
                    <td class="auto-style2">Price</td>
                    <td class="auto-style2">Quantity</td>
                    <td class="auto-style2">Amount</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblMouse" runat="server" Text="Mouse"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="mousePrice" runat="server" Text="350.00"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="mouseQuantity" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblTotalMouseAmount" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblPrinterInk" runat="server" Text="Printer Ink"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="printInkPrice" runat="server" Text="7500.00"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="printInkQuantity" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblTotalPrintInkAmount" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblPrinterDot" runat="server" Text="Printer Dot Matrix"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="printDotPrice" runat="server" Text="5000.00"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="printDotQuantity" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lblTotalPrintDotAmount" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblLCD" runat="server" Text="LCD Monitor"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lcdMonitor" runat="server" Text="6500.00"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lcdQuantity" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lblTotalLCDAmount" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblLED" runat="server" Text="LED Monitor"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="ledMonitor" runat="server" Text="7500.00"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="ledQuantity" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lblTotalLEDAmount" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Total Amount</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblTotalAmount" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>