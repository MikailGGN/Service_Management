<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin.aspx.vb" Inherits="admin" %>
<%@ OutputCache NoStore="true" Location ="None"   %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">


<meta http-equiv="expires" content="-1"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Pragma" content="no-cache"/>

    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="border-right: cornflowerblue thin solid; border-top: cornflowerblue thin solid;
                z-index: 100; left: 0px; border-left: cornflowerblue thin solid; width: 7in;
                border-bottom: cornflowerblue thin solid; position: static; top: 0px; height: 4in">
                <tr>
                    <td align="left" style="width: 29px">
                        <img src="images/inlakslogo.gif" alt="a" style="z-index: 100; left: 64px; position: static;
                            top: 24px; height: 16px" /></td>
                    <td colspan="9" style="font-size: small; font-family: tahoma">
                        Inverter Implementation And Support Services</td>
                </tr>
                <tr>
                    <td style="width: 29px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 97px">
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
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="border-top: cornflowerblue thin solid; border-left-width: thin; border-left-color: cornflowerblue; border-bottom-width: thin; border-bottom-color: cornflowerblue; border-right-width: thin; border-right-color: cornflowerblue;" colspan="10">
                        <asp:Label ID="Label1" runat="server" BackColor="CornflowerBlue" BorderColor="CornflowerBlue"
                            BorderStyle="Solid" Font-Bold="True" Font-Names="Tahoma" ForeColor="White" Style="z-index: 100;
                            left: 64px; position: static; top: 72px" Text="Home Page" Width="688px"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 29px; height: 25px">
                    </td>
                    <td rowspan="11" style="width: 100px; background-color: cornflowerblue">
                        &nbsp;<asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" BorderStyle="Groove"
                            DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Tahoma" Font-Size="0.8em"
                            ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px" Style="z-index: 100;
                            left: 80px; position: static; top: 128px">
                            <StaticSelectedStyle BackColor="#507CD1" />
                            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                            <DynamicMenuStyle BackColor="#B5C7DE" />
                            <DynamicSelectedStyle BackColor="#507CD1" />
                            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                            <Items>
                                <asp:MenuItem Selectable="False" Text="Control Panel" Value="Control Panel">
                                    <asp:MenuItem NavigateUrl="~/userrecord.aspx" Text="Accessibility" Value="Accessibility">
                                    </asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/code_builder.aspx" Text="Code Index" Value="Code Index">
                                    </asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/set_cost.aspx" Text="Cost Indexes" Value="Cost Indexes">
                                    </asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/changepassword.aspx" Text="Users Information" Value="Users Information">
                                    </asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/techrec.aspx" Text="Technician's Record" Value="Technician's Record">
                                    </asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/techform.aspx" Text="Technician's Registration form"
                                        ToolTip="Registration form" Value="Technicians Record"></asp:MenuItem>
                                </asp:MenuItem>
                            </Items>
                        </asp:Menu>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td align="left" style="width: 97px; height: 25px">
                    </td>
                    <td style="width: 100px; height: 25px">
                    </td>
                    <td style="width: 100px; height: 25px">
                    </td>
                    <td style="width: 100px; height: 25px">
                    </td>
                    <td style="width: 100px; height: 25px">
                    </td>
                    <td style="width: 100px; height: 25px">
                    </td>
                    <td style="width: 100px; height: 25px">
                    </td>
                    <td style="width: 100px; height: 25px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 29px">
                    </td>
                    <td align="left" colspan="8">
                    </td>
                </tr>
                <tr>
                    <td style="width: 29px">
                    </td>
                    <td align="right" style="width: 97px">
                        <asp:ImageButton ID="ImageButton1" runat="server" PostBackUrl="~/implementation.aspx"
                            Style="z-index: 100; left: 304px; position: static; top: 160px" Width="40px" Height="40px" ImageUrl="~/images/operation.jpg" /><br />
                    </td>
                    <td align="left" colspan="3" style="font-size: small">
                        <a href="implementation.aspx">Project Registration,Site Survey And Implementation.</a></td>
                    <td align="right" style="width: 100px">
                        <asp:ImageButton ID="ImageButton2" runat="server" PostBackUrl="~/qc_assign.aspx"
                            Style="z-index: 100; left: 416px; position: static; top: 160px" ImageUrl="~/images/correctbtn.jpg" Width="32px" /><br />
                    </td>
                    <td align="left" colspan="3" style="font-size: small">
                        <a href="qc_assign.aspx">Quality Assurance.</a></td>
                </tr>
                <tr>
                    <td style="width: 29px">
                    </td>
                    <td style="width: 97px">
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
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 29px">
                    </td>
                    <td align="right" style="width: 97px">
                        <asp:ImageButton ID="ImageButton3" runat="server" PostBackUrl="~/support_home.aspx"
                            Style="z-index: 100; left: 320px; position: static; top: 224px" Height="40px" ImageUrl="~/images/services2.gif" /><br />
                    </td>
                    <td align="left" colspan="3" style="font-size: small">
                        <a href="support_home.aspx">Client Complaint, Technical Support..</a></td>
                    <td align="right" style="width: 100px">
                        <asp:ImageButton ID="ImageButton4" runat="server" PostBackUrl="~/store_workshop.aspx"
                            Style="z-index: 100; left: 424px; position: static; top: 216px" Height="40px" ImageUrl="~/images/site_imp.jpg" Width="40px" /><br />
                    </td>
                    <td align="left" style="font-size: small; width: 100px">
                        <a href="store_workshop.aspx">Workshop</a></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 29px">
                    </td>
                    <td style="width: 97px">
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
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 29px">
                    </td>
                    <td align="right" style="width: 97px">
                        <asp:ImageButton ID="ImageButton5" runat="server" PostBackUrl="~/materials.aspx"
                            Style="z-index: 100; left: 320px; position: static; top: 280px" Height="40px" ImageUrl="~/images/xpower1500_290x230.jpg" Width="40px" /><br />
                    </td>
                    <td align="left" colspan="2" style="font-size: small">
                        <a href="materials.aspx">Equipment Handing.</a></td>
                    <td align="left" colspan="1" style="font-size: small">
                    </td>
                    <td align="right" style="width: 100px">
                        <asp:ImageButton ID="ImageButton6" runat="server" PostBackUrl="~/Map.aspx" Style="z-index: 100;
                            left: 424px; position: static; top: 272px" Height="40px" ImageUrl="~/images/new-map.gif" Width="40px" /><br />
                    </td>
                    <td align="left" style="font-size: small; width: 100px">
                        <a href="Map.aspx">Map</a></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 29px">
                    </td>
                    <td style="width: 97px">
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
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 29px">
                    </td>
                    <td style="width: 97px">
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
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 29px">
                    </td>
                    <td style="width: 97px">
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
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 29px">
                    </td>
                    <td style="width: 97px">
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
                    <td style="width: 100px">
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
