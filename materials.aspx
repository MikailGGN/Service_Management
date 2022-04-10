<%@ Page Language="VB" AutoEventWireup="false" CodeFile="materials.aspx.vb" Inherits="materials" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Haulage</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="font-family: tahoma; text-align: center">
            <table style="border-right: blue thin solid; border-top: blue thin solid; font-size: small;
                z-index: 100; left: 0px; border-left: blue thin solid; width: 4px; border-bottom: blue thin solid;
                font-family: tahoma; position: static; height: 3px">
                <tr>
                    <td style="width: 51px" align="left">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 96px; position: static;
                            top: 24px; height: 16px" /></td>
                    <td colspan="4">
                        Inverter Implementation And Support Services</td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 423px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 423px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td colspan="6" style="font-weight: bold; font-size: medium; color: powderblue; position: static;
                        height: 0.5cm">
                        <div style="text-align: center">
                            <table style="z-index: 100; left: 336px; width: 568px; position: static; top: 48px;
                                height: 1px; background-color: #0033ff">
                                <tr>
                                    <td style="width: 29px; height: 20px">
                                    <asp:Menu ID="Menu2" runat="server" Font-Bold="True" Orientation="Horizontal" Style="z-index: 100;
                                        left: 568px; position: static; top: 112px" BackColor="Blue" 
                                            DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                                            ForeColor="#9999FF" StaticSubMenuIndent="10px">
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
                                    <td colspan="4" style="height: 20px">
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="LightSteelBlue"
                                            Height="24px" Style="z-index: 100; left: 216px; position: static; top: 48px"
                                            Text="Equipment Handling" Width="928px"></asp:Label><br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td align="right" style="width: 423px">
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                            left: 600px; position: static; top: 96px" Width="48px">Logout</asp:HyperLink></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td colspan="4">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td colspan="4">
                        The section holds information of the materials movement from warehouse to site.
                        it also holds the infomation regarding materials transfers. &nbsp;<br />
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 423px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td style="width: 100px" align="right">
                        Project :</td>
                    <td style="width: 100px" align="left">
                        <asp:DropDownList ID="DDLproname" runat="server" AutoPostBack="True" Style="z-index: 100;
                            left: 200px; position: static; top: 400px" Width="192px">
                            <asp:ListItem>Select.....</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 423px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td style="width: 100px" align="right">
                        Status :</td>
                    <td style="width: 100px" align="left">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Style="z-index: 100;
                            left: 184px; position: static; top: 296px" Width="112px">
                            <asp:ListItem>Select......</asp:ListItem>
                            <asp:ListItem>delivered</asp:ListItem>
                            <asp:ListItem>Request</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 423px" align="left">
                        N0 of Sites :
                        &nbsp;<asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 424px; position: static;
                            top: 448px" Width="56px"></asp:Label></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td colspan="4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                            Style="z-index: 100; left: 152px; position: static; top: 416px" Width="752px" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                            <Columns>
                                <asp:BoundField DataField="ddate" HeaderText="Date" SortExpression="ddate" 
                                    DataFormatString="{0:d}" />
                                <asp:BoundField DataField="sitecode" HeaderText="Site code" SortExpression="sitecode" />
                                <asp:BoundField DataField="waybill" HeaderText="Waybill" SortExpression="waybill" />
                                <asp:BoundField DataField="daddress" HeaderText="Address" SortExpression="daddress" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT [ddate], [sitecode], [waybill], [daddress] FROM [materials] WHERE (([projectname] = @projectname) AND ([dstatus] = @dstatus))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DDLproname" Name="projectname" PropertyName="SelectedValue"
                                    Type="String" />
                                <asp:ControlParameter ControlID="DropDownList1" Name="dstatus" PropertyName="SelectedValue"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        &nbsp; &nbsp;</td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td colspan="4">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT [ddate], [sitecode], [waybill], [daddress] FROM [materials] WHERE (([projectname] = @projectname) AND ([dstatus] = @dstatus))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DDLproname" Name="projectname" PropertyName="SelectedValue"
                                    Type="String" />
                                <asp:ControlParameter ControlID="DropDownList1" Name="dstatus" PropertyName="SelectedValue"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td colspan="4">
                        &nbsp;
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td align="left" colspan="2">
                        &nbsp;Transfer Information</td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 423px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td style="width: 100px" align="right">
                        Project :
                    </td>
                    <td style="width: 100px" align="left">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Style="z-index: 100;
                            left: 184px; position: static; top: 720px">
                            <asp:ListItem>Select...</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 423px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2" style="height: 24px">
                        Volume of Transfer:</td>
                    <td align="left" style="width: 100px; height: 24px">
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Style="z-index: 100;
                            left: 192px; position: static; top: 752px">
                            <asp:ListItem>Select...</asp:ListItem>
                            <asp:ListItem>ALL</asp:ListItem>
                            <asp:ListItem>Some</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100px; height: 24px">
                    </td>
                    <td style="width: 423px; height: 24px">
                    </td>
                    <td style="width: 100px; height: 24px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td colspan="4">
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px"
                            CellPadding="3" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical"
                            Style="z-index: 100; left: 160px; position: static; top: 768px" Width="880px">
                            <FooterStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="tdate" HeaderText="Date" SortExpression="tdate" 
                                    DataFormatString="{0:d}" />
                                <asp:BoundField DataField="waybill" HeaderText="Waybill N0." SortExpression="waybill" />
                                <asp:BoundField DataField="fromsite" HeaderText="Departure Sitecode" SortExpression="fromsite" />
                                <asp:BoundField DataField="fromaddress" HeaderText="Departure Address" SortExpression="fromaddress" />
                                <asp:BoundField DataField="tosite" HeaderText="Delivery Sitecode" SortExpression="tosite" />
                                <asp:BoundField DataField="toaddress" HeaderText="Delivery Address" SortExpression="toaddress" />
                            </Columns>
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT transfer.tdate, transfer.waybill, transfer.fromsite, transfer.fromaddress, transfer.tosite, transfer.toaddress FROM materials CROSS JOIN transfer WHERE (materials.projectname = @projectname) AND (transfer.volume = @volume)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList2" Name="projectname" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="DropDownList3" Name="volume" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 423px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 423px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 51px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 423px">
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
