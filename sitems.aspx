<%@ Page Language="VB" AutoEventWireup="false" CodeFile="sitems.aspx.vb" Inherits="sitems" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Spares Request</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="z-index: 100; left: 120px; width: 21.9cm; position: static; top: 0px;
                height: 15cm">
                <tr>
                    <td colspan="3">
                        <table style="border-top: thin solid; font-size: small; z-index: 100; left: 0px;
                            width: 99%; font-family: tahoma; position: static; top: 0px; height: 100%">
                            <tr>
                                <td align="left" style="width: 19px">
                                    <img src="images/inlakslogo.gif" style="z-index: 100; left: 112px; position: static;
                                        top: 40px; height: 16px" /></td>
                                <td align="center" colspan="11">
                                    Inverter Implementation And Support Services</td>
                                <td align="center" colspan="1">
                                </td>
                                <td align="center" colspan="1">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 19px">
                                </td>
                                <td align="left" style="width: 41px">
                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="~/images/homemade.jpg"
                                        PostBackUrl="~/support_home.aspx" Style="z-index: 100; left: 152px; position: static;
                                        top: 80px" ToolTip="Home page" Width="40px" /></td>
                                <td align="left" style="width: 41px">
                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="40px" ImageUrl="~/images/techbtn.jpg"
                                        PostBackUrl="~/supporttech.aspx" Style="z-index: 100; left: 232px; position: static;
                                        top: 40px" ToolTip="Support Technician" Width="40px" /></td>
                                <td align="left" style="width: 35px">
                                    <asp:ImageButton ID="ImageButton5" runat="server" Height="40px" ImageUrl="~/images/mailbtn.jpg"
                                        PostBackUrl="~/Sup_bill_mail.aspx" Style="z-index: 100; left: 440px; position: static;
                                        top: 40px" Width="40px" /></td>
                                <td align="left" style="width: 100px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/reportbtn.jpg"
                                        Style="z-index: 100; left: 344px; position: static; top: 64px" Width="40px" /></td>
                                <td align="left" style="width: 100px">
                                </td>
                                <td align="left" style="width: 100px">
                                </td>
                                <td align="left" style="width: 100px">
                                </td>
                                <td align="left" style="width: 100px">
                                </td>
                                <td align="left" style="width: 100px">
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
                                <td style="width: 19px; height: 34px">
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                                        left: 8px; position: static; top: 96px" Width="48px">Logout</asp:HyperLink><br />
                                    <br />
                                </td>
                                <td align="right" colspan="11" style="height: 34px">
                                    <asp:Menu ID="Menu3" runat="server" Font-Bold="False" Orientation="Horizontal" Style="z-index: 100;
                                        left: 520px; position: static; top: 104px" BackColor="White" 
                                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                                        ForeColor="#284E98" StaticSubMenuIndent="10px">
                                        <Items>
                                            <asp:MenuItem Text="Links" ToolTip="Site Support Services" Value="Support">
                                                <asp:MenuItem NavigateUrl="~/supportclient.aspx" Text="Client Complaint " ToolTip="Record client complaint "
                                                    Value="New Item"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/sitems.aspx" Text="Spares Request" 
                                                    Value="Spares Request"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/supporttech.aspx" Text="Site Support " ToolTip="Assign Technician for support exercise "
                                                    Value="New Item"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/sup_report.aspx" Text="Support Feedback" ToolTip="Technician's feedback report"
                                                    Value="New Item"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </Items>
                                        <StaticSelectedStyle BackColor="#507CD1" />
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <DynamicMenuStyle BackColor="#B5C7DE" />
                                        <DynamicSelectedStyle BackColor="#507CD1" />
                                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                    </asp:Menu>
                                </td>
                                <td align="left" colspan="1" style="height: 34px">
                                </td>
                                <td align="left" colspan="1" style="height: 34px">
                                </td>
                            </tr>
                            </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <table style="border: thin solid orangered; z-index: 100; left: 136px; width: 818px; position: static; top: 88px; font-size: small; color: orangered; font-family: tahoma;">
                            <tr>
                                <td style="font-weight: bold; font-size: medium; color: white; font-family: tahoma; background-color: orangered;" colspan="7">
                                    Equipments (parts) Request</td>
                            </tr>
                            <tr>
                                <td style="width: 224px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 224px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                    Site Code&nbsp;</td>
                                <td style="width: 100px" align="left">
                                    <asp:DropDownList ID="DDLsite" runat="server" AutoPostBack="True" Style="z-index: 100;
                                        left: 120px; position: static; top: 88px" Width="168px">
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 100px">
                                </td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                    &nbsp;Site&nbsp; Address</td>
                                <td colspan="2" rowspan="8">
                                    <asp:TextBox ID="TextBox1" runat="server" Font-Names="Arial Black" Font-Size="Small"
                                        Height="176px" Style="z-index: 100; left: 112px; position: static; top: 128px"
                                        TextMode="MultiLine" Width="344px"></asp:TextBox></td>
                                <td align="right" style="width: 100px">
                                    Complaint</td>
                                <td colspan="2" rowspan="8">
                                    <asp:TextBox ID="Txtcompview" runat="server" Height="184px" Style="z-index: 100;
                                        left: 680px; position: static; top: 128px" TextMode="MultiLine" Width="256px"></asp:TextBox></td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                    &nbsp;</td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                </td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                </td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                </td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                </td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                    </td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px; height: 21px">
                                </td>
                                <td align="right" style="width: 100px; height: 21px">
                                </td>
                                <td style="width: 42px; height: 21px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                </td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="Txtitems" runat="server" Style="z-index: 100; left: 128px; position: static;
                                        top: 296px" Visible="False"></asp:TextBox></td>
                                <td style="width: 100px">
                                </td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                    Part
                                </td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="Txtupart" runat="server" Style="z-index: 100; left: 112px; position: static;
                                        top: 304px" Width="272px"></asp:TextBox></td>
                                <td align="right" style="width: 100px">
                                    Quantity</td>
                                <td align="left" style="width: 100px">
                                    <asp:TextBox ID="Txtuqty" runat="server" Style="z-index: 100; left: 480px; position: static;
                                        top: 328px" Width="72px"></asp:TextBox></td>
                                <td align="left" style="width: 100px">
                                    <asp:Button ID="Btnadd" runat="server" BackColor="OrangeRed" BorderStyle="None" Font-Bold="True"
                                        ForeColor="White" Style="z-index: 100; left: 560px; position: static; top: 328px"
                                        Text="Add" /></td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                </td>
                                <td align="left" colspan="2">
                                    List of Requested part</td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                </td>
                                <td align="left" colspan="2">
                                    &nbsp;</td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                </td>
                                <td colspan="2" rowspan="4">
                                    <asp:ListBox ID="Listpart" runat="server" Height="104px" Style="z-index: 100; left: 112px;
                                        position: static; top: 392px" Width="352px"></asp:ListBox></td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                </td>
                                <td align="left" colspan="3" style="font-size: x-small">
                                    <asp:Button ID="Btnrmove" runat="server" BackColor="OrangeRed" BorderStyle="None"
                                        Font-Bold="True" ForeColor="White" Style="z-index: 100; left: 480px; position: static;
                                        top: 408px" Text="Remove" />
                                    ( To remove an item select the item and click remove)
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                </td>
                                <td align="left" colspan="3" style="font-size: x-small">
                                    <asp:Button ID="Btnrplace" runat="server" BackColor="OrangeRed" BorderStyle="None"
                                        Font-Bold="True" ForeColor="White" Style="z-index: 100; left: 480px; position: static;
                                        top: 432px" Text="Replace" />
                                    (Any item to be replaced is displayed in part and
                                    quantity box to enable change )</td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 224px">
                                </td>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 224px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px" align="right">
                                    <asp:Button ID="Btnpart" runat="server" BackColor="OrangeRed" BorderStyle="None"
                                        Font-Bold="True" ForeColor="White" Style="z-index: 100; left: 408px; position: static;
                                        top: 488px" Text="Submit" /></td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 42px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 224px">
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
                                <td style="width: 42px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
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
