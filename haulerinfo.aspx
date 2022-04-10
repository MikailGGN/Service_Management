<%@ Page Language="VB" AutoEventWireup="false" CodeFile="haulerinfo.aspx.vb" Inherits="haulerinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>HAULER'S REGISTRATION</title>
    <style type="text/css">
        .newStyle1
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="z-index: 100; left: 56px; width: 20cm; position: static; top: 8px;
                height: 12cm; font-size: small; color: dodgerblue; font-family: tahoma;">
                <tr>
                    <td align="left" style="width: 100px; height: 21px">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 40px; position: static;
                            top: 24px; height: 16px" /></td>
                    <td colspan="2" style="height: 21px">
                        Inverter Implementation And Support Services</td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 100px" align="left">
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                            left: 40px; position: static; top: 48px" Width="48px">Logout</asp:HyperLink></td>
                    <td style="width: 100px">
                    </td>
                    <td align="right" colspan="2">
                                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Style="z-index: 100;
                                        left: 616px; position: static; top: 88px" BackColor="White" 
                            DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                            ForeColor="#284E98" StaticSubMenuIndent="10px" Font-Bold="True" Height="19px">
                                        <Items>
                                            <asp:MenuItem Text="Added Pages" Value="Pages : :">
                                                <asp:MenuItem NavigateUrl="~/Survey_assign.aspx" Text="Assign Technician To Survey"
                                                    Value="New Item"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/surveyreport.aspx" Text="Record Survey" Value="Record Survey">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/materialrequest.aspx" Text="Request Materials"
                                                    Value="Request Materials"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/Deployment.aspx" Text="Material Approved For Deployment"
                                                    Value="Material Approved For Deployment"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/Deliveryprocess.aspx" Text="Material Deployment &amp; Transfer"
                                                    Value="Material Deployment &amp; Transfer"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/joballocation.aspx" Text="Assign Technician For Site Implementation"
                                                    Value="Assign Technician For Site Implementation"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/supporttech.aspx" Text="Assign Technician To Site For Support "
                                                    Value="Assign Technician To Site For Support "></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/store_workshop.aspx" Text="Workshop" Value="Workshop"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/qc_assign.aspx" Text="Quality Assurance" Value="Quality Assurance">
                                                </asp:MenuItem>
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
                                    <asp:Menu ID="Menu2" runat="server" Font-Bold="True" 
                            Orientation="Horizontal" Style="z-index: 100;
                                        left: 568px; position: static; top: 112px" BackColor="White" 
                            DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                            ForeColor="#284E98" StaticSubMenuIndent="10px" Width="50px">
                                        <Items>
                                            <asp:MenuItem Text="Links" ToolTip="Materials request and supply " Value="Equipment Handling">
                                                <asp:MenuItem NavigateUrl="~/Deliveryprocess.aspx" Text="Delivery " ToolTip="Materials Delivery"
                                                    Value="Delivery And Transfer"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/haulerinfo.aspx" Text="Hauler's Registration" ToolTip="materials released from store"
                                                    Value="Store Supplies"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/Transfer.aspx" Text="Transfers" Value="Transfers">
                                                </asp:MenuItem>
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
                    <td align="right">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5">
                        <div style="text-align: center">
                            <table style="z-index: 100; left: 0px; width: 752px; position: static; top: 0px; border-right: dodgerblue thin solid; border-top: dodgerblue thin solid; border-left: dodgerblue thin solid; border-bottom: dodgerblue thin solid;">
                                <tr>
                                    <td style="font-weight: bold; font-size: medium; color: dodgerblue; font-family: TAHOMA;" align="center" colspan="5">
                                        HAULER'S REGISTRATION&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 64px">
                                    </td>
                                    <td style="width: 6px">
                                    </td>
                                    <td style="width: 81px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        Hauler</td>
                                    <td align="left" colspan="3">
                                        <asp:TextBox ID="Txtname" runat="server" Style="z-index: 100; left: 192px; position: static;
                                            top: 88px" Width="288px"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 64px">
                                    </td>
                                    <td style="width: 6px">
                                    </td>
                                    <td style="width: 81px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        Address</td>
                                    <td align="left" colspan="3" rowspan="3">
                                        <asp:TextBox ID="Txtaddress" runat="server" Height="56px" Style="z-index: 100; left: 168px;
                                            position: static; top: 144px" TextMode="MultiLine" Width="296px"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px; height: 18px;">
                                    </td>
                                    <td align="left" style="width: 64px; height: 18px;">
                                    </td>
                                    <td style="width: 6px; height: 18px;">
                                    </td>
                                    <td style="width: 81px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        Telephone #1&nbsp;
                                    </td>
                                    <td align="left" style="width: 64px">
                                        <asp:TextBox ID="Txtfone1" runat="server" Style="z-index: 100; left: 168px; position: static;
                                            top: 232px"></asp:TextBox></td>
                                    <td align="right" style="width: 6px">
                                        #2</td>
                                    <td align="left" style="width: 81px">
                                        <asp:TextBox ID="Txtfone2" runat="server" Style="z-index: 100; left: 536px; position: static;
                                            top: 240px"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 64px">
                                    </td>
                                    <td style="width: 6px">
                                    </td>
                                    <td style="width: 81px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                        &nbsp;Email
                                    </td>
                                    <td align="left" colspan="3">
                                        <asp:TextBox ID="TxtEmail" runat="server" AutoCompleteType="Email" Style="z-index: 100;
                                            left: 184px; position: static; top: 288px" Width="296px"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="left" colspan="3">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                    </td>
                                    <td style="width: 64px">
                                        <asp:Button ID="Btnsubmit" runat="server" BackColor="DodgerBlue" BorderStyle="None"
                                            Font-Bold="True" ForeColor="White" Style="z-index: 100; left: 184px; position: static;
                                            top: 336px" Text="Submit" Width="88px" /></td>
                                    <td style="width: 6px">
                                    </td>
                                    <td style="width: 81px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                    </td>
                                    <td style="width: 64px">
                                    </td>
                                    <td style="width: 6px">
                                    </td>
                                    <td style="width: 81px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                    </td>
                                    <td style="width: 64px">
                                    </td>
                                    <td style="width: 6px">
                                    </td>
                                    <td style="width: 81px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                    </td>
                                    <td style="width: 64px">
                                    </td>
                                    <td style="width: 6px">
                                    </td>
                                    <td style="width: 81px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 64px">
                                    </td>
                                    <td style="width: 6px">
                                    </td>
                                    <td style="width: 81px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 64px">
                                    </td>
                                    <td style="width: 6px">
                                    </td>
                                    <td style="width: 81px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 64px">
                                    </td>
                                    <td style="width: 6px">
                                    </td>
                                    <td style="width: 81px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td colspan="4">
                                <code>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Style="font-size: x-small;
                            z-index: 100; left: 280px; position: static; top: 1184px" Width="516px" 
                                            Font-Names="tahoma">** If this is an added page to your role click to return to your defualt home page </asp:LinkButton>
                                </code>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
