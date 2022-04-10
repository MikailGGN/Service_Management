<%@ Page Language="VB" AutoEventWireup="false" CodeFile="imprint.aspx.vb" Inherits="imprint" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="border-right: blue thin solid; border-top: blue thin solid; font-size: small;
                z-index: 100; left: 160px; border-left: blue thin solid; color: blue; border-bottom: blue thin solid;
                font-family: tahoma; position: static; top: 32px">
                <tr>
                    <td style="width: 21px">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 64px; position: static;
                            top: 24px; height: 16px" /></td>
                    <td colspan="6" style="border-bottom: blue thin solid">
                        Inverter Implementation And Support Services</td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/joballocation.aspx"
                            Style="z-index: 100; left: 552px; position: static; top: 64px" Width="40px">Back</asp:HyperLink></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 160px; position: static;
                            top: 72px" Text="Technician's Id" Width="112px"></asp:Label></td>
                    <td align="left" style="width: 100px">
                        <asp:DropDownList ID="ddltech" runat="server" AutoPostBack="True" Style="z-index: 100;
                            left: 256px; position: static; top: 88px" Width="88px">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList></td>
                    <td align="right" style="width: 100px">
                        <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 368px; position: static;
                            top: 64px" Text="Sitecode" Width="88px"></asp:Label></td>
                    <td align="left" style="width: 100px">
                        <asp:DropDownList ID="ddlsite" runat="server" AutoPostBack="True" Style="z-index: 100;
                            left: 464px; position: static; top: 64px">
                        </asp:DropDownList></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td colspan="4">
                        Site Implementation Ticket</td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px; height: 21px">
                    </td>
                    <td align="right" colspan="2" style="height: 21px">
                        Client</td>
                    <td align="left" colspan="2" style="height: 21px">
                        <asp:TextBox ID="Txtclient" runat="server" BorderStyle="None" Style="z-index: 100;
                            left: 312px; position: static; top: 184px"></asp:TextBox></td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td align="right" colspan="2">
                        Name</td>
                    <td align="left" colspan="2">
                        <asp:TextBox ID="Txtname" runat="server" BorderStyle="None" Style="z-index: 100;
                            left: 320px; position: static; top: 208px" Width="240px"></asp:TextBox></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td align="right" colspan="2">
                        Address</td>
                    <td align="left" colspan="2">
                        <asp:TextBox ID="Txtaddress" runat="server" BorderStyle="None" Style="z-index: 100;
                            left: 296px; position: static; top: 240px" Width="240px"></asp:TextBox></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td align="right" colspan="2">
                        Town / State</td>
                    <td align="left" colspan="2">
                        <asp:TextBox ID="Txttown" runat="server" BorderStyle="None" Style="z-index: 100;
                            left: 288px; position: static; top: 272px"></asp:TextBox></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td align="right" colspan="2">
                        Purpose</td>
                    <td align="left" colspan="2">
                        <asp:TextBox ID="Txtpurpose" runat="server" BorderStyle="None" Style="z-index: 100;
                            left: 256px; position: static; top: 296px" Width="232px"></asp:TextBox></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td align="right" colspan="2">
                        Contact Name</td>
                    <td align="left" colspan="2">
                        <asp:TextBox ID="Txtcontactname" runat="server" BorderStyle="None" Style="z-index: 100;
                            left: 280px; position: static; top: 336px" Width="232px"></asp:TextBox></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px; height: 21px">
                    </td>
                    <td align="right" colspan="2" style="height: 21px">
                        Contact Phone N0.</td>
                    <td align="left" colspan="2" style="height: 21px">
                        <asp:TextBox ID="Txtphone" runat="server" BorderStyle="None" Style="z-index: 100;
                            left: 248px; position: static; top: 352px"></asp:TextBox></td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px; height: 21px">
                    </td>
                    <td align="right" style="width: 100px; height: 21px">
                    </td>
                    <td align="right" style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                        <asp:Button ID="Btnprint" runat="server" Style="z-index: 100; left: 200px; position: static;
                            top: 296px" Text="Print" Width="64px" /></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
