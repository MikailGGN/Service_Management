<%@ Page Language="VB" AutoEventWireup="false" CodeFile="code_builder.aspx.vb" Inherits="code_builders" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Code Index</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            color: #0000FF;
            font-size: small;
            font-family: Tahoma;
            border-left-style: solid;
            border-right-style: solid;
        }
        .style2
        {
            width: 9px;
        }
        .style3
        {
            font-size: medium;
            font-weight: bold;
            border-top-style: solid;
            border-bottom-style: solid;
        }
    </style>
</head>
<body>
<center >
    <form id="form1" runat="server">
    <div>
    
        <table  class="style1">
            <tr>
                <td class="style2">
                                    <img src="images/inlakslogo.gif" style="z-index: 100; left: 32px; position: static;
                                        top: 24px; height: 16px" /></td>
                <td align="center" colspan="6">
                        Inverter Implementation And Support Services</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td colspan="6">
                                    <table id="Table2" onclick="return TABLE1_onclick()" style="font-size: small; z-index: 100;
                                        left: 0px; width: 100%; position: static; top: 0px; height: 100%">
                                        <tr>
                                            <td align="right" style="width: 30px; height: 20px">
                                                <asp:Menu ID="Menu2" runat="server" BackColor="#B5C7DE" BorderColor="White" BorderStyle="Groove"
                                                    DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Tahoma" Font-Size="Small"
                                                    ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px" Style="z-index: 100;
                                                    left: 72px; position: static; top: 40px">
                                                    <StaticSelectedStyle BackColor="#507CD1" />
                                                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                                    <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                                    <DynamicMenuStyle BackColor="#B5C7DE" />
                                                    <DynamicSelectedStyle BackColor="#507CD1" />
                                                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                                    <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
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
                                                            <asp:MenuItem Target="_blank" Text="Material Request" Value="Material Request"></asp:MenuItem>
                                                            <asp:MenuItem NavigateUrl="~/Deployment.aspx" Text="Materials Approved" 
                                                                Value="Materials Approved"></asp:MenuItem>
                                                        </asp:MenuItem>
                                                    </Items>
                                                </asp:Menu>
                                                <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                                                    left: 48px; position: static; top: 120px" Width="48px">Logout</asp:HyperLink>
                                            </td>
                                            <td align="left" style="width: 20px; height: 20px">
                                    <asp:Menu ID="Menu3" runat="server" Font-Bold="True" Orientation="Horizontal" Style="z-index: 100;
                                        left: 520px; position: static; top: 104px" 
                                        BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" 
                                        Font-Size="Small" ForeColor="#284E98" StaticSubMenuIndent="10px">
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
                                                <br />
                                            </td>
                                            <td align="left" style="width: 90px; height: 20px">
                                                <asp:Menu ID="Menu4" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                                    Font-Bold="True" Font-Names="Tahoma" Font-Size="Small" ForeColor="#284E98" Orientation="Horizontal"
                                                    StaticSubMenuIndent="10px" Style="z-index: 100; left: 392px; position: static;
                                                    top: 56px">
                                                    <StaticSelectedStyle BackColor="#507CD1" />
                                                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                                    <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                                    <DynamicMenuStyle BackColor="#B5C7DE" />
                                                    <DynamicSelectedStyle BackColor="#507CD1" />
                                                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                                    <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                                    <Items>
                                                        <asp:MenuItem Text="Equipment Handling" ToolTip="Materials request and supply " Value="Equipment Handling">
                                                            <asp:MenuItem NavigateUrl="~/Deployment.aspx" Text="Store Supplies" ToolTip="materials released from store"
                                                                Value="Store Supplies"></asp:MenuItem>
                                                            <asp:MenuItem NavigateUrl="~/Deliveryprocess.aspx" Text="Delivery And Transfer" ToolTip="Materials Delivery"
                                                                Value="Delivery And Transfer"></asp:MenuItem>
                                                        </asp:MenuItem>
                                                    </Items>
                                                </asp:Menu>
                                                <br />
                                            </td>
                                            <td style="width: 100px; height: 20px">
                                                <asp:Menu ID="Menu5" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                                    Font-Bold="True" Font-Names="Tahoma" Font-Size="Small" ForeColor="#284E98" Orientation="Horizontal"
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
                                                                <asp:MenuItem Text="Feedback" Value="Feedback" NavigateUrl="~/feedback.aspx"></asp:MenuItem>
                                                            </asp:MenuItem>
                                                            <asp:MenuItem NavigateUrl="~/store_workshop.aspx" Target="_blank" Text="Workshop"
                                                                ToolTip="workshop" Value="Workshop"></asp:MenuItem>
                                                            <asp:MenuItem NavigateUrl="~/Map.aspx" Text="Technician Location" ToolTip="Map View"
                                                                Value="Technician Location"></asp:MenuItem>
                                                        </asp:MenuItem>
                                                    </Items>
                                                </asp:Menu>
                                                <br />
                                            </td>
                                            <td style="width: 100px; height: 20px">
                                                &nbsp;<asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" BorderStyle="Groove"
                                                    DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Tahoma" Font-Size="Small"
                                                    ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px" Style="z-index: 100;
                                                    left: 576px; position: static; top: 80px">
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
                                                <br />
                                                <br />
                                            </td>
                                            <td style="width: 100px; height: 20px">
                                            </td>
                                            <td style="width: 100px; height: 20px">
                                            </td>
                                            <td style="width: 100px; height: 20px">
                                            </td>
                                            <td style="width: 100px; height: 20px">
                                            </td>
                                            <td style="width: 100px; height: 20px">
                                            </td>
                                            <td style="width: 100px; height: 20px">
                                            </td>
                                            <td style="width: 100px; height: 20px">
                                            </td>
                                            <td style="width: 100px; height: 20px">
                                            </td>
                                            <td style="width: 100px; height: 20px">
                                            </td>
                                            <td style="width: 100px; height: 20px">
                                            </td>
                                        </tr>
                                    </table>
                                    </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3" colspan="6">
                    Code Index</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td colspan="2">
                    State Index</td>
                <td colspan="2">
                    Client Code</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="right">
                    State</td>
                <td align="left">
                                        <asp:DropDownList ID="DDLstate" runat="server" Style="z-index: 100; left: 120px;
                                            position: static; top: 320px">
                                            <asp:ListItem Selected="True">choose one</asp:ListItem>
                                            <asp:ListItem>Abuja F.C.T</asp:ListItem>
                                            <asp:ListItem>Abia</asp:ListItem>
                                            <asp:ListItem>Adamawa</asp:ListItem>
                                            <asp:ListItem>Akwa Ibom</asp:ListItem>
                                            <asp:ListItem>Anambra</asp:ListItem>
                                            <asp:ListItem>Bauchi</asp:ListItem>
                                            <asp:ListItem>Bayelsa</asp:ListItem>
                                            <asp:ListItem>Benue</asp:ListItem>
                                            <asp:ListItem>Borno</asp:ListItem>
                                            <asp:ListItem>Cross River</asp:ListItem>
                                            <asp:ListItem>Delta</asp:ListItem>
                                            <asp:ListItem>Ebonyi</asp:ListItem>
                                            <asp:ListItem>Edo</asp:ListItem>
                                            <asp:ListItem>Ekiti</asp:ListItem>
                                            <asp:ListItem>Enugu</asp:ListItem>
                                            <asp:ListItem>Gombe</asp:ListItem>
                                            <asp:ListItem>Imo</asp:ListItem>
                                            <asp:ListItem>JIgawa</asp:ListItem>
                                            <asp:ListItem>Kaduna</asp:ListItem>
                                            <asp:ListItem>Katsina</asp:ListItem>
                                            <asp:ListItem>Kebbi</asp:ListItem>
                                            <asp:ListItem>Kogi</asp:ListItem>
                                            <asp:ListItem>Kwara</asp:ListItem>
                                            <asp:ListItem>Lagos</asp:ListItem>
                                            <asp:ListItem>Nassarawa</asp:ListItem>
                                            <asp:ListItem>Niger</asp:ListItem>
                                            <asp:ListItem>Ogun</asp:ListItem>
                                            <asp:ListItem>Ondo</asp:ListItem>
                                            <asp:ListItem>Osun</asp:ListItem>
                                            <asp:ListItem>Oyo</asp:ListItem>
                                            <asp:ListItem>Plateau</asp:ListItem>
                                            <asp:ListItem>Rivers</asp:ListItem>
                                            <asp:ListItem>Sokoto</asp:ListItem>
                                            <asp:ListItem>Taraba</asp:ListItem>
                                            <asp:ListItem>Yobe</asp:ListItem>
                                            <asp:ListItem>Zamfara</asp:ListItem>
                                        </asp:DropDownList>
                </td>
                <td align="right">
                    Client</td>
                <td align="left">
                                        <asp:TextBox ID="Txtclient" runat="server" Style="z-index: 100; left: 616px; position: static;
                                            top: 272px" Width="152px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="right">
                    Code</td>
                <td align="left">
                                        <asp:TextBox ID="Txtscode" runat="server" Style="z-index: 100; left: 280px; position: static;
                                            top: 304px" Width="96px" TabIndex="1"></asp:TextBox>
                </td>
                <td align="right">
                    Code</td>
                <td align="left">
                                        <asp:TextBox ID="Txtccode" runat="server" Style="z-index: 100; left: 608px; position: static;
                                            top: 304px" Width="152px"></asp:TextBox>
                                        <asp:Button ID="Btnclient" runat="server" Style="z-index: 100; left: 712px; position: static;
                                            top: 304px" Text="+" Width="24px" Height="18px" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="right">
                    Region</td>
                <td align="left">
                        <asp:DropDownList ID="DDLregion" runat="server" AutoPostBack="True" Style="z-index: 100;
                            left: 504px; position: static; top: 80px">
                            <asp:ListItem>Choose One</asp:ListItem>
                            <asp:ListItem>NE</asp:ListItem>
                            <asp:ListItem>NW</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>SW</asp:ListItem>
                            <asp:ListItem>SS</asp:ListItem>
                            <asp:ListItem>SE</asp:ListItem>
                        </asp:DropDownList>
                                        <asp:Button ID="BtnState" runat="server" Style="z-index: 100; left: 360px; position: static;
                                            top: 376px" Text="+" Width="24px" TabIndex="3" 
                            Height="19px" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td colspan="2" align="left">
                                                        site type information</td>
                <td align="left" colspan="2">
                    Material category</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="right">
                    Site Type</td>
                <td align="left">
                                                        <asp:TextBox ID="Txtsitetype" runat="server" Style="z-index: 100; left: 448px; position: static;
                                                            top: 384px"></asp:TextBox>
                                                        <asp:Button ID="Btnsitetype" runat="server" Style="z-index: 100; left: 608px; position: static;
                                                            top: 368px" Text="+" Width="24px" Height="19px" />
                </td>
                <td align="right">
                    Material</td>
                <td align="left">
                    <asp:TextBox ID="Txtmat" runat="server" Width="164px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="right">
                    Type</td>
                <td align="left">
                    <asp:DropDownList ID="DDLcatgy" runat="server" Width="164px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Inverter</asp:ListItem>
                        <asp:ListItem>DC Disconnect</asp:ListItem>
                        <asp:ListItem>welding cable</asp:ListItem>
                        <asp:ListItem>Trs cable</asp:ListItem>
                        <asp:ListItem>Battery</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Btnmat" runat="server" Height="16px" Text="+" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td colspan="2" rowspan="8">
                                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px"
                                            CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Style="z-index: 100;
                                            left: 696px; position: static; top: 424px; width: 100%; height: 100%;">
                                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                            <Columns>
                                                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                                <asp:BoundField DataField="region" HeaderText="Region" SortExpression="region" />
                                                <asp:BoundField DataField="statecode" HeaderText="Code" SortExpression="statecode" />
                                            </Columns>
                                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                            <AlternatingRowStyle BackColor="#F7F7F7" />
                                        </asp:GridView>
                                        </td>
                <td>
                    &nbsp;</td>
                <td colspan="2" rowspan="8">
                                        <asp:GridView ID="GridView3" runat="server" 
                        AllowPaging="True" AutoGenerateColumns="False"
                                            BackColor="White" BorderColor="#E7E7FF" 
                        BorderStyle="None" BorderWidth="1px"
                                            CellPadding="3" DataSourceID="SqlDataSource3" 
                        GridLines="Horizontal" 
                        Style="z-index: 100;
                                            left: 856px; position: static; top: 168px; width: 100%; " 
                        Height="270px">
                                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                            <Columns>
                                                <asp:BoundField DataField="clientname" HeaderText="Client" 
                                                    SortExpression="clientname" />
                                                <asp:BoundField DataField="clientcode" HeaderText="Client Code" 
                                                    SortExpression="clientcode" />
                                            </Columns>
                                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                            <AlternatingRowStyle BackColor="#F7F7F7" />
                                        </asp:GridView>
                                        </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT * FROM [stateinfo]"></asp:SqlDataSource>
                                        </td>
                <td>
                    &nbsp;</td>
                <td>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT * FROM [clientinfo]"></asp:SqlDataSource>
                                        </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
    </center>
</body>
</html>
