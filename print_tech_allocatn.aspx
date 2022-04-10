<%@ Page Language="VB" AutoEventWireup="false" CodeFile="print_tech_allocatn.aspx.vb" Inherits="print_tech_allocatn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            &nbsp;<table style="z-index: 100; left: 112px; width: 60%; position: static; top: 40px;
                height: 100%; font-size: small; font-family: tahoma;">
                <tr>
                    <td style="position: static; height: 12px" colspan="3" align="left">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 168px; position: static;
                            top: 48px; height: 16px" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;Inverter Implementation And Support Services</td>
                </tr>
                <tr>
                    <td colspan="3" style="font-weight: bold; font-size: small; text-transform: capitalize;
                        color: navy; font-family: Tahoma; height: 33px">
                        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 216px; position: static;
                            top: 64px" Text="Technician's Id"></asp:Label>&nbsp;<asp:DropDownList ID="ddltech" runat="server" Style="z-index: 100; left: 456px; position: static;
                                            top: 232px" AutoPostBack="True">
                                        </asp:DropDownList>&nbsp;
                        <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 424px; position: static;
                            top: 72px" Text="Site Address " Width="88px"></asp:Label>&nbsp;<asp:DropDownList ID="ddlsite" runat="server" Style="z-index: 100; left: 616px; position: static;
                                            top: 232px" AutoPostBack="True">
                                        </asp:DropDownList>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 172px">
                        <div style="text-align: center">
                            <table id="tabpri" rules="all" style="border-right: dodgerblue thin inset; border-top: dodgerblue thin inset;
                                font-size: small; z-index: 100; left: 328px; border-left: dodgerblue thin inset;
                                width: 100%; color: navy; border-bottom: dodgerblue thin inset; font-family: tahoma;
                                position: static; top: 184px; height: 100%" border="0" cellpadding="0">
                                <tr>
                                    <td align="center" colspan="4">
                                        &nbsp;Survey Ticket&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2" style="height: 16px">
                                        Client</td>
                                    <td style="height: 16px;" align="left" colspan="2">
                                        <asp:TextBox ID="Txtclient" runat="server" BorderStyle="None" Style="z-index: 100;
                                            left: 304px; position: static; top: 96px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        Name</td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="Txtname" runat="server" Style="z-index: 100; left: 416px; position: static;
                                            top: 144px" Width="240px" BorderStyle="None"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        Address</td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="Txtaddress" runat="server" Style="z-index: 100; left: 376px; position: static;
                                            top: 176px" Width="240px" BorderStyle="None"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        Town /State</td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="Txttown" runat="server" Style="z-index: 100; left: 360px; position: static;
                                            top: 392px" BorderStyle="None"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        Purpose</td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="Txtpurpose" runat="server" Style="z-index: 100; left: 376px; position: static;
                                            top: 224px" Width="232px" BorderStyle="None"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        Contact Name</td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="Txtcontactname" runat="server" Style="z-index: 100; left: 368px;
                                            position: static; top: 448px" Width="232px" BorderStyle="None"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        Contact Phone N0.</td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="Txtphone" runat="server" Style="z-index: 100; left: 368px; position: static;
                                            top: 480px" BorderStyle="None"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                    </td>
                                    <td colspan="2">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 16px">
                                    </td>
                                    <td colspan="2" style="height: 16px">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                    </td>
                                    <td colspan="2">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                    </td>
                                    <td colspan="2">
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div style="text-align: center">
                            <table style="z-index: 100; left: 208px; width: 100%; position: static; top: 464px;
                                height: 100%">
                                <tr>
                                    <td style="height: 26px" align="left" colspan="3">
                                        <asp:Button ID="Btnprint" runat="server" Style="z-index: 100; left: 224px; position: static;
                                            top: 384px" Text="Print" Width="64px" />
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Survey_assign.aspx"
                                            Style="z-index: 100; left: 232px; position: static; top: 408px" Width="40px">Back</asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="2">
                                        </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                            </table>
                        </div>
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
