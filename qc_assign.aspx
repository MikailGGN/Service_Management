<%@ Page Language="VB" AutoEventWireup="false" CodeFile="qc_assign.aspx.vb" Inherits="qc_assign" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Quality Assurance</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="border-right: seagreen thin solid; border-top: seagreen thin solid;
                font-size: small; z-index: 100; left: 48px; border-left: seagreen thin solid;
                width: 16cm; color: mediumseagreen; border-bottom: seagreen thin solid; font-family: tahoma;
                position: static; top: 56px; height: 15cm" id="TABLE1" onclick="return TABLE1_onclick()">
                <tr>
                    <td rowspan="1" style="width: 100px">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 88px; position: static;
                            top: 24px; height: 16px" /></td>
                    <td rowspan="1" style="width: 100px">
                    </td>
                    <td align="center" colspan="2">
                        Inverter Implementation And Support Services</td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td rowspan="15" style="width: 100px; background-color: seagreen">
                    </td>
                    <td rowspan="1" style="width: 100px">
                    </td>
                    <td align="center" style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="left" colspan="4" rowspan="1" style="border-bottom: seagreen thin solid">
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                            left: 120px; position: static; top: 56px" Width="48px">Logout</asp:HyperLink></td>
                </tr>
                <tr>
                    <td align="left" rowspan="1" style="width: 100px">
                        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Style="z-index: 100;
                            left: 120px; position: static; top: 80px" BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="Green" StaticSubMenuIndent="10px">
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
                    </td>
                    <td align="center" style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px" align="right">
                        <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 100; left: 672px; position: static;
                            top: 88px" NavigateUrl="~/feedback.aspx">To Feedback</asp:HyperLink>&nbsp;</td>
                </tr>
                <tr>
                    <td align="left" rowspan="1" style="width: 100px">
                    </td>
                    <td align="center" style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        &nbsp;Geographical Region :
                    </td>
                    <td align="left" style="width: 100px">
                        <asp:DropDownList ID="DDLregion" runat="server" AutoPostBack="True" Style="z-index: 100;
                            left: 504px; position: static; top: 80px">
                            <asp:ListItem>Choose One</asp:ListItem>
                            <asp:ListItem>NE</asp:ListItem>
                            <asp:ListItem>NW</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>SW</asp:ListItem>
                            <asp:ListItem>SS</asp:ListItem>
                            <asp:ListItem>SE</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2" style="height: 15px">
                        Mode of Selection :
                    </td>
                    <td align="left" colspan="2" style="height: 15px">
                        <asp:RadioButton ID="RBtnr" runat="server" AutoPostBack="True" Style="z-index: 100;
                            left: 496px; position: static; top: 96px" Text="Random" Width="80px" />
                        <asp:RadioButton ID="RBtnM" runat="server" Style="z-index: 100; left: 584px; position: static;
                            top: 88px" Text="Manual" Width="72px" /></td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        N0. of sites to be&nbsp; visited :
                    </td>
                    <td align="left" style="width: 100px">
                        <asp:TextBox ID="txtno" runat="server" Style="z-index: 100; left: 496px; position: static;
                            top: 112px" Width="24px"></asp:TextBox></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td rowspan="1" style="width: 100px">
                    </td>
                    <td align="center" style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="center" rowspan="2" style="width: 100px">
                        For Manual selection, select the site from the list of the site and click "Add".
                        However to select at Random check Random a enter the the number of sites intended
                        then click "Add" &nbsp;</td>
                    <td align="center" style="width: 100px; height: 22px;">
                        Site ( code &amp; state )
                    </td>
                    <td style="width: 100px; height: 22px;">
                        &nbsp;Selected Site</td>
                    <td style="width: 100px; height: 22px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:ListBox ID="Listsite" runat="server" Height="328px" Style="z-index: 100; left: 440px;
                            position: static; top: 240px" Width="216px"></asp:ListBox></td>
                    <td align="left" style="width: 100px">
                        <asp:ListBox ID="Listselected" runat="server" Height="328px" Style="z-index: 100;
                            left: 664px; position: static; top: 280px" Width="216px"></asp:ListBox></td>
                    <td align="left" style="width: 100px">
                        <table style="z-index: 100; left: 864px; width: 5cm; position: static; top: 200px;
                            height: 3cm">
                            <tr>
                                <td style="width: 10px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 10px">
                                </td>
                                <td align="right" style="width: 100px">
                                    N0. of Days</td>
                                <td align="left" style="width: 100px">
                                    <asp:TextBox ID="Txtnday" runat="server" Style="z-index: 100; left: 888px; position: static;
                                        top: 224px" Width="56px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 10px">
                                </td>
                                <td align="right" style="width: 100px">
                                    Personnel</td>
                                <td align="left" style="width: 100px">
                                    <asp:DropDownList ID="DDlperson" runat="server" AutoPostBack="True" Style="z-index: 100;
                                        left: 840px; position: static; top: 240px" Width="104px">
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 10px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td align="left" style="width: 100px">
                                    <asp:Button ID="Btnassign" runat="server" BackColor="SeaGreen" BorderStyle="None"
                                        Font-Bold="True" ForeColor="White" Style="z-index: 100; left: 864px; position: static;
                                        top: 264px" Text="Assign" Width="72px" /></td>
                            </tr>
                            <tr>
                                <td style="width: 10px; height: 60px">
                                </td>
                                <td style="width: 100px; height: 60px">
                                </td>
                                <td style="width: 100px; height: 60px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 100px">
                        <asp:TextBox ID="Txttrans1" runat="server" Style="z-index: 100; left: 224px; position: static;
                            top: 512px" Visible="False"></asp:TextBox></td>
                    <td align="right" style="width: 100px">
                        <asp:Button ID="Btnadd" runat="server" BackColor="SeaGreen" BorderStyle="None" Font-Bold="True"
                            ForeColor="White" Style="z-index: 100; left: 376px; position: static; top: 640px"
                            Text="Add >>" Width="80px" /></td>
                    <td align="left" style="width: 100px">
                        <asp:Button ID="Btnremove" runat="server" BackColor="SeaGreen" BorderStyle="None"
                            Font-Bold="True" ForeColor="White" Style="z-index: 100; left: 600px; position: static;
                            top: 616px" Text=" << Remove" Width="80px" /></td>
                    <td align="left" style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="right" colspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Style="font-size: x-small;
                            z-index: 100; left: 344px; position: static; top: 568px" Width="368px">** If this is an added page to your role click to return to your default home page </asp:LinkButton></td>
                    <td align="left" style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
