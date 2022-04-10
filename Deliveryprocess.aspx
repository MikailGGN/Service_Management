<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Deliveryprocess.aspx.vb" Inherits="transportinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Equipment Delivery</title>
    <style type="text/css">
        .style1
        {
            width: 100px;
        }
        .newStyle1
        {
            list-style-type: circle;
            list-style-position: inside;
        }
        .style2
        {
            font-size: x-small;
            display: list-item;
        }
        .style3
        {
            font-size: x-small;
        }
        .style4
        {
            font-size: medium;
            font-weight: bold;
        }
    </style>
</head>
<body>
<center >
    <form id="form1" runat="server">
    <div>
        <table style="z-index: 100; left: 0px; width: 20cm; position: static; top: 0px; height: 20cm; color: #0000FF; font-size: small; font-family: Tahoma; border-left-style: groove; border-right-style: groove; border-top-style: solid; border-bottom-style: groove;">
            <tr>
                <td style="width: 100px" align="left">
                                    <img src="images/inlakslogo.gif" style="z-index: 100; left: 112px; position: static;
                                        top: 40px; height: 16px" /></td>
                <td align="left" colspan="3">
                                    Inverter Implementation And Support Services</td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                                    <asp:HyperLink ID="HyperLink10" runat="server" 
                        NavigateUrl="~/Default.aspx" Style="z-index: 100;
                                        left: 8px; position: static; top: 96px" Width="48px" 
                        Font-Names="Tahoma">Logout</asp:HyperLink>
                </td>
                <td style="width: 100px">
                </td>
                <td align="right" colspan="2">
                                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Style="z-index: 100;
                                        left: 616px; position: static; top: 88px" 
                        BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" 
                        Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px" 
                        Font-Bold="True">
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
                                        left: 568px; position: static; top: 112px" 
                        BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" 
                        Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
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
            </tr>
            <tr>
                <td colspan="4">
                    <div style="text-align: center">
                        <table style="z-index: 100; left: 0px; width: 744px; position: static; top: 0px; color: #0000FF; font-size: small; border-left-style: solid; border-right-style: solid; border-bottom-style: solid;">
                            <tr>
                                <td class="style4" colspan="5">
                                    Equipment Delivery
                                </td>
                                <code>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td align="left" style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 100px">
                                    Project&nbsp;</td>
                                <td align="left" colspan="2">
                                    <asp:DropDownList ID="DDLproject" runat="server" Style="z-index: 100; left: 168px;
                                        position: static; top: 136px" Width="176px" AutoPostBack="True">
                                        <asp:ListItem>Select.......</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 100px">
                                    &nbsp;Waybill</td>
                                <td align="left" style="width: 100px">
                                    <asp:TextBox ID="Txtwaybill" runat="server" Style="z-index: 100; left: 168px; position: static;
                                        top: 184px"></asp:TextBox></td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 100px">
                                    Hauler</td>
                                <td align="left" colspan="2">
                                    <asp:DropDownList ID="DDLhauler" runat="server" Style="z-index: 100; left: 152px;
                                        position: static; top: 208px" Width="224px" AutoPostBack="True">
                                        <asp:ListItem>Select......</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="5">
                                    <table style="z-index: 100; left: 24px; width: 744px; position: static; top: 232px">
                                        <tr>
                                            <td colspan="3">
                                                Search Delivery Location</td>
                                            <td align="right" style="width: 100px">
                                            </td>
                                            <td colspan="2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                            </td>
                                            <td align="right" style="width: 100px">
                                                &nbsp;State&nbsp; </td>
                                            <td align="left" colspan="2">
                                                <asp:DropDownList ID="DDLdstate" runat="server" Style="z-index: 100; left: 264px;
                                                    position: static; top: 600px" AutoPostBack="True" Width="193px">
                                                    <asp:ListItem>Select.....</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                            </td>
                                            <td align="right" style="width: 100px">
                                                Town</td>
                                            <td align="left" colspan="2">
                                                <asp:DropDownList ID="DDLdtown" runat="server" Style="z-index: 100; left: 248px;
                                                    position: static; top: 632px" AutoPostBack="True" Width="193px">
                                                    <asp:ListItem>Select......</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                            </td>
                                            <td align="right" style="width: 100px">
                                                Address</td>
                                            <td align="left" colspan="2">
                                                <asp:DropDownList ID="DDLdaddress" runat="server" Style="z-index: 100; left: 248px;
                                                    position: static; top: 656px" Width="192px" AutoPostBack="True">
                                                    <asp:ListItem>Select.....</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                            </td>
                                            <td align="right" style="width: 100px">
                                            </td>
                                            <td align="left" style="width: 100px">
                                            </td>
                                            <td align="right" style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                            </td>
                                            <td align="right" style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                            <td align="right" style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 100px">
                                </td>
                                <td align="left" style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 100px">
                                    &nbsp;Site&nbsp; Code</td>
                                <td align="left" colspan="2">
                                    <asp:TextBox ID="Txtdelivercode" runat="server" Style="z-index: 100; left: 152px; position: static;
                                        top: 416px"></asp:TextBox>
                                    <asp:Button ID="Btnequip" runat="server" Height="21px" Text="..." 
                                        Width="18px" />
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 100px">
                                    Delivery Address</td>
                                <td align="left" colspan="3" rowspan="4">
                                    <asp:TextBox ID="Txtaddress" runat="server" Height="72px" Style="z-index: 100; left: 160px;
                                        position: static; top: 264px" TextMode="MultiLine" Width="352px" 
                                        ReadOnly="True"></asp:TextBox>
                                    <asp:Button ID="Btnaddplus" runat="server" Text="..." Height="23px" 
                                        Width="20px" />
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
                                <td align="right" class="style1">
                                </td>
                                <td align="left" class="style1">
                                </td>
                                <td class="style1">
                                </td>
                                <td class="style1">
                                </td>
                                <td class="style1">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 100px">
                                    Items&nbsp; Delivered</td>
                                <td align="left" colspan="3" rowspan="5">
                                    <asp:ListBox ID="Listgmat" runat="server" Height="132px" Style="z-index: 100; left: 160px;
                                        position: static; top: 368px" Width="360px"></asp:ListBox></td>
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
                                    &nbsp;</td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 100px; height: 22px">
                                </td>
                                <td style="width: 100px; height: 22px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td align="left" colspan="2">
                                    <asp:Button ID="Btnadd" runat="server" Text="Add" Width="51px" BackColor="Blue" 
                                        BorderStyle="None" Font-Bold="True" ForeColor="White" />
                                    <asp:Button ID="Btnchange" runat="server" Text="Change" Width="51px" 
                                        BackColor="Blue" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                                    <asp:Button ID="Btnremove" runat="server" Text="Remove" Width="51px" 
                                        BackColor="Blue" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                                    <asp:Button ID="Btnsubmit" runat="server" Text="Submit" BackColor="Blue" 
                                        BorderStyle="None" Font-Bold="True" ForeColor="White" />
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td align="left" colspan="2" rowspan="2">
                                    <asp:TextBox ID="Txtother" runat="server" Height="39px" TextMode="MultiLine" 
                                        Width="359px"></asp:TextBox>
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    &nbsp;</td>
                                <td style="width: 100px">
                                    &nbsp;</td>
                                <td style="width: 100px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    &nbsp;</td>
                                <td align="left" colspan="2">
                                    <ul>
                                        <li class="style3">Enter the materials in this format ( Item-Quantity) and ensure to 
                                            put a comma to separate each item. and click &quot;Add&quot;.</li>
                                        <li class="style2">select the item you intend to change and click&quot;Change&quot; the item 
                                            is move to a box below the list make the change and click &quot;Add&quot;. </li>
                                        <li class="style3">Select the item you intend to remove from the list and click 
                                            remove.&nbsp;
                                        </li>
                                    </ul>
                                </td>
                                <td style="width: 100px">
                                    &nbsp;</td>
                                <td style="width: 100px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    &nbsp;</td>
                                <td style="width: 100px">
                                    &nbsp;</td>
                                <td style="width: 100px">
                                    &nbsp;</td>
                                <td style="width: 100px">
                                    &nbsp;</td>
                                <td style="width: 100px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    &nbsp;</td>
                                <td style="width: 100px">
                                    &nbsp;</td>
                                <td style="width: 100px">
                                    &nbsp;</td>
                                <td style="width: 100px">
                                    &nbsp;</td>
                                <td style="width: 100px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="Txtitems" runat="server" Visible="False"></asp:TextBox>
                                </td>
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
                                <td align="right" colspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Style="font-size: x-small;
                            z-index: 100; left: 280px; position: static; top: 1184px" Width="400px">** If this is an 
                                    added page to your role click to return to your defualt home page </asp:LinkButton>
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
                                <td style="width: 100px">
                                </td>
                                </code>
                                <td style="width: 100px">
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
            </tr>
        </table>
    
    </div>
    </form>
    </center>
</body>
</html>
