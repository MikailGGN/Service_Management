<%@ Page Language="VB" AutoEventWireup="false" CodeFile="adminref.aspx.vb" Inherits="adminref" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Site References</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="z-index: 100; left: 40px; width: 25cm; position: static; top: 16px;
                height: 20cm; font-size: small; font-family: tahoma;">
                <tr>
                    <td colspan="3" style="height: 12px">
                        Inverter Implementation And Support Services</td>
                </tr>
                <tr>
                    <td style="height: 21px" colspan="3">
                        <table id="TABLE1" onclick="return TABLE1_onclick()" style="font-size: small; z-index: 100;
                            left: 16px; width: 100%; position: static; top: 48px; height: 100%">
                            <tr>
                                <td align="right" style="width: 29px; height: 27px">
                                </td>
                                <td align="right" style="width: 29px; height: 27px">
                                </td>
                                <td align="right" style="width: 29px; height: 27px">
                                    <asp:Menu ID="Menu2" runat="server" Font-Bold="True" Orientation="Horizontal"
                                        Style="z-index: 100; left: 552px; position: static; top: 104px" 
                                        BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" 
                                        Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
                                        <Items>
                                            <asp:MenuItem Text="Implementation" Value="Implementation">
                                                <asp:MenuItem NavigateUrl="~/Project_registration.aspx" Text="Project Registration"
                                                    ToolTip="Register a New Project" Value="Project Registration">
                                                    <asp:MenuItem NavigateUrl="~/siteregistration.aspx" Text="Site Registration" ToolTip="Register a Site : Town &amp; State"
                                                        Value="Site Registration"></asp:MenuItem>
                                                    <asp:MenuItem NavigateUrl="~/Survey_assign.aspx" Text="Get Technician To Survey"
                                                        ToolTip="Assign a Technician to Survey site " Value="Get Technician To Survey"></asp:MenuItem>
                                                    <asp:MenuItem NavigateUrl="~/surveyreport.aspx" Text="Technician Survey Report" ToolTip="Record site Survey"
                                                        Value="Technician Survey Report"></asp:MenuItem>
                                                    <asp:MenuItem NavigateUrl="~/not_surveyed.aspx" Text="Predict Site Survey" ToolTip="To give site code without actual Survey "
                                                        Value="Predict Site Survey"></asp:MenuItem>
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/joballocation.aspx" Text="Site Implementation" ToolTip="Assign a team to implementation"
                                                    Value="Site Implementation"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/certification.aspx" Text="Job Certification" ToolTip="Signed the job cards"
                                                    Value="Job Certification"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/materialrequest.aspx" Text="Materials Request" Value="Materials Request">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/Deployment.aspx" Text="Materials Approved" 
                                                    Value="Material Approved"></asp:MenuItem>
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
                                <td align="left" style="width: 19px; height: 27px">
                                    <asp:Menu ID="Menu3" runat="server" Font-Bold="True" Orientation="Horizontal" Style="z-index: 100;
                                        left: 520px; position: static; top: 104px" 
                                        BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" 
                                        Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
                                        <Items>
                                            <asp:MenuItem Text="Support" ToolTip="Site Support Services" Value="Support">
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
                                <td align="left" style="width: 86px; height: 27px">
                                    <asp:Menu ID="Menu6" runat="server" Font-Bold="True" Orientation="Horizontal" Style="z-index: 100;
                                        left: 568px; position: static; top: 112px" BackColor="#B5C7DE" 
                                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                                        ForeColor="#284E98" StaticSubMenuIndent="10px" Width="50px">
                                        <Items>
                                            <asp:MenuItem Text="Equipment Handling" ToolTip="Materials request and supply " 
                                                Value="Equipment Handling">
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
                                <td style="width: 97px; height: 27px">
                                    <asp:Menu ID="Menu5" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                        Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
                                        StaticSubMenuIndent="10px" Style="z-index: 100; left: 480px; position: static;
                                        top: 56px">
                                        <StaticSelectedStyle BackColor="#507CD1" />
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <DynamicMenuStyle BackColor="#B5C7DE" />
                                        <DynamicSelectedStyle BackColor="#507CD1" />
                                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <Items>
                                            <asp:MenuItem Text="General Operations" ToolTip="Quality Assurance " Value="General Operations">
                                                <asp:MenuItem NavigateUrl="~/qc_assign.aspx" Text="Quality Assurance" ToolTip="Assign a person for Quality Assurance"
                                                    Value="Quality Assurance">
                                                    <asp:MenuItem NavigateUrl="~/feedback.aspx" Text="Feedback" Value="Feedback"></asp:MenuItem>
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/store_workshop.aspx" Text="Workshop"
                                                    ToolTip="workshop" Value="Workshop"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/Map.aspx" Text="Technician Location" ToolTip="Map View"
                                                    Value="Technician Location"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </Items>
                                    </asp:Menu>
                                </td>
                                <td style="width: 100px; height: 27px">
                                    <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                        Font-Bold="True" Font-Names="Tahoma" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
                                        StaticSubMenuIndent="10px" Style="z-index: 100; left: 672px; position: static;
                                        top: 56px">
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
                                                <asp:MenuItem NavigateUrl="~/code_builder.aspx" Text="Code Index"
                                                    Value="Code Index"></asp:MenuItem>
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
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div style="text-align: center">
                            <table style="z-index: 100; left: 0px; width: 30cm; position: static; top: 0px;
                                height: 15cm; border-right: #336699 thin solid; border-top: #336699 thin solid; border-left: #336699 thin solid; border-bottom: #336699 thin solid; font-size: small; color: #336699; font-family: tahoma;">
                                <tr>
                                    <td style="font-weight: bold; font-size: small; color: #ffffff; font-family: TAHOMA; height: 16px; background-color: white;" colspan="6">
                                        <asp:Label ID="Label1" runat="server" Style="font-weight: bold; font-size: small;
                                            z-index: 100; left: 24px; color: white; font-family: tahoma; position: static;
                                            top: 144px; background-color: cornflowerblue" Text="TECHNICIAN'S ON SITE" Width="784px"></asp:Label></td>
                                    <td colspan="2" style="font-weight: bold; font-size: small; color: white; font-family: TAHOMA;
                                        height: 16px; background-color: white">
                                        <asp:Label ID="Label2" runat="server" Style="font-weight: bold; font-size: small;
                                            z-index: 100; left: 840px; color: white; font-family: tahoma; position: static;
                                            top: 152px; background-color: cornflowerblue" Text="UNCOMPLETED SITE IMPLEMENTATION"
                                            Width="264px"></asp:Label></td>
                                    <td style="width: 100px; height: 16px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 16px">
                                    </td>
                                    <td style="width: 100px; height: 16px">
                                    </td>
                                    <td style="width: 100px; height: 16px">
                                    </td>
                                    <td style="width: 100px; height: 16px">
                                    </td>
                                    <td style="width: 100px; height: 16px">
                                    </td>
                                    <td style="width: 100px; height: 16px">
                                    </td>
                                    <td colspan="2" style="font-weight: bold; font-size: small; color: black; font-family: TAHOMA;
                                        height: 16px; background-color: white">
                                    </td>
                                    <td style="width: 100px; height: 16px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                        Job Type :
                                    </td>
                                    <td style="width: 100px" align="left">
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 168px; position: static; top: 176px">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Implementation</asp:ListItem>
                                            <asp:ListItem>Survey</asp:ListItem>
                                            <asp:ListItem>Support</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        Project :&nbsp;
                                    </td>
                                    <td align="left" style="width: 100px">
                                        <asp:DropDownList ID="DDLpname" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 952px; position: static; top: 168px">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" rowspan="5">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="336px"
                                            Style="z-index: 100; left: 80px; position: static; top: 240px" AllowPaging="True">
                                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                            <Columns>
                                                <asp:BoundField DataField="techid" HeaderText="Technician's Id" SortExpression="techid" />
                                                <asp:BoundField DataField="allocation" HeaderText="Amout Allocate" SortExpression="allocation" />
                                                <asp:BoundField DataField="region" HeaderText="Region" SortExpression="region" />
                                                <asp:BoundField DataField="sitecode" HeaderText="Site Code" SortExpression="sitecode" />
                                                <asp:BoundField DataField="location" HeaderText="State" SortExpression="location" />
                                                <asp:BoundField DataField="clientaddress" HeaderText="Site Address" SortExpression="clientaddress" />
                                                <asp:BoundField DataField="clienttown" HeaderText="Town" SortExpression="clienttown" />
                                                <asp:BoundField DataField="startjob" HeaderText="Job Start" SortExpression="startjob" />
                                                <asp:BoundField DataField="endjob" HeaderText="Job End" SortExpression="endjob" />
                                            </Columns>
                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <EditRowStyle BackColor="#999999" />
                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        </asp:GridView>
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT [techid], [location], [allocation], [startjob], [endjob], [sitecode], [clientaddress], [clienttown], [region] FROM [techjob] WHERE ([jobtype] = @jobtype)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="jobtype" PropertyName="SelectedValue"
                                                    Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                    <td colspan="2" rowspan="5">
                                        <asp:GridView ID="Gridumcom" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                            CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None"
                                            Style="z-index: 100; left: 848px; position: static; top: 128px">
                                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                            <Columns>
                                                <asp:BoundField DataField="sitecode" HeaderText="Code" SortExpression="sitecode" />
                                                <asp:BoundField DataField="clientstate" HeaderText="State" SortExpression="clientstate" />
                                                <asp:BoundField DataField="clientaddress" HeaderText="Address" SortExpression="clientaddress" />
                                                <asp:BoundField DataField="clienttown" HeaderText="Town" SortExpression="clienttown" />
                                            </Columns>
                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <EditRowStyle BackColor="#999999" />
                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT [sitecode], [clientstate], [clientaddress], [clienttown] FROM [siteinfo] WHERE (([Projectname] = @Projectname) AND ([sitestatus] <> @sitestatus))">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DDLpname" Name="Projectname" PropertyName="SelectedValue"
                                                    Type="String" />
                                                <asp:QueryStringParameter DefaultValue="satisfactory" Name="sitestatus" QueryStringField="@sitestatus"
                                                    Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        &nbsp; &nbsp;
                                    </td>
                                    <td colspan="1" rowspan="5">
                                    </td>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; font-size: small; color: white; font-family: TAHOMA; background-color: white;" colspan="6">
                                        <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 32px; position: static;
                                            top: 616px; background-color: cornflowerblue" Text="MATERIALS DELIVERY" Width="760px"></asp:Label></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px; height: 18px;">
                                        Project
                                    </td>
                                    <td align="left" style="width: 100px; height: 18px;">
                                        <asp:DropDownList ID="DDLproname" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 168px; position: static; top: 624px">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;Site
                                    </td>
                                    <td align="left" style="width: 100px">
                                        <asp:DropDownList ID="DDLsite" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 160px; position: static; top: 648px">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>&nbsp;</td>
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
                                    <td style="width: 100px">
                                    </td>
                                    <td colspan="5" rowspan="5">
                                        <asp:GridView ID="Gridmaterial" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                            DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Style="z-index: 100;
                                            left: 168px; position: static; top: 680px" Width="560px" AllowPaging="True" CellSpacing="1">
                                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                            <Columns>
                                                <asp:BoundField DataField="ddate" HeaderText="Date" SortExpression="ddate" />
                                                <asp:BoundField DataField="items" HeaderText="Materials" SortExpression="items" />
                                                <asp:BoundField DataField="waybill" HeaderText="Way Bill N0." SortExpression="waybill" />
                                                <asp:BoundField DataField="daddress" HeaderText="Site Address" SortExpression="daddress" />
                                            </Columns>
                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <EditRowStyle BackColor="#999999" />
                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT [ddate], [items], [daddress], [waybill] FROM [materials] WHERE (([projectname] = @projectname) AND ([sitecode] = @sitecode) AND ([dstatus] = @dstatus))">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DDLproname" Name="projectname" PropertyName="SelectedValue"
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="DDLsite" Name="sitecode" PropertyName="SelectedValue"
                                                    Type="String" />
                                                <asp:QueryStringParameter DefaultValue="delivered" Name="dstatus" QueryStringField="@dstatus"
                                                    Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                    <td colspan="1" rowspan="5">
                                    </td>
                                    <td colspan="1" rowspan="5">
                                    </td>
                                    <td colspan="1" rowspan="5">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
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
                                    <td style="width: 100px">
                                    </td>
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
                </tr>
            </table>
            &nbsp;
        </div>
    
    </div>
    </form>
</body>
</html>
