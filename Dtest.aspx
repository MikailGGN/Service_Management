<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Dtest.aspx.vb" Inherits="Dtest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div style="text-align: center">
            <table style="z-index: 100; left: 0px; width: 60%; position: static; top: 0px; height: 100%">
                <tr>
                    <td style="width: 37px; height: 11px">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 16px; position: static;
                            top: 24px; height: 16px" /></td>
                    <td style="height: 11px; font-size: small; color: blue; font-family: tahoma;" align="center" colspan="2">
                        Inverter Implementation And Support Services</td>
                </tr>
                <tr>
                    <td style="width: 37px; height: 11px">
                    </td>
                    <td style="width: 185px; height: 11px">
                        <table id="TABLE1" style="z-index: 100; left: 232px; width: 100%; position: static;
                            top: 32px; height: 100%; font-size: small; font-family: TAHOMA;" onclick="return TABLE1_onclick()">
                            <tr>
                                <td align="right" style="width: 30px; height: 27px">
                                    <asp:Menu ID="Menu2" runat="server" BackColor="#B5C7DE" BorderColor="White" BorderStyle="Groove"
                                        DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em"
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
                                            </asp:MenuItem>
                                        </Items>
                                    </asp:Menu>
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                                        left: 104px; position: static; top: 72px" Width="48px">Logout</asp:HyperLink></td>
                                <td align="left" style="width: 20px; height: 27px">
                                    <asp:Menu ID="Menu3" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                        Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
                                        StaticSubMenuIndent="10px" Style="z-index: 100; left: 304px; position: static;
                                        top: 48px">
                                        <StaticSelectedStyle BackColor="#507CD1" />
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <DynamicMenuStyle BackColor="#B5C7DE" />
                                        <DynamicSelectedStyle BackColor="#507CD1" />
                                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <Items>
                                            <asp:MenuItem Text="Support" ToolTip="Equipment Support Services" Value="Support">
                                                <asp:MenuItem NavigateUrl="~/support.aspx" Text="Client Complaint " ToolTip="Record client complaint "
                                                    Value="New Item"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/supporttech.aspx" Text="Site Support " ToolTip="Assign Technician for support exercise "
                                                    Value="New Item"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/sup_report.aspx" Text="Support Feedback" ToolTip="Technician's feedback report"
                                                    Value="New Item"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </Items>
                                    </asp:Menu>
                                    <br />
                                </td>
                                <td align="left" style="width: 90px; height: 27px">
                                    <asp:Menu ID="Menu4" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                        Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
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
                                <td style="width: 100px; height: 27px">
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
                                                    <asp:MenuItem Text="Feedback" Value="Feedback"></asp:MenuItem>
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/store_workshop.aspx" Text="Workshop"
                                                    ToolTip="workshop" Value="Workshop"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/Map.aspx" Text="Technician Location" ToolTip="Map View"
                                                    Value="Technician Location"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </Items>
                                    </asp:Menu>
                                    <br />
                                </td>
                                <td style="width: 100px; height: 27px">
                                    <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                        Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px"
                                        Style="z-index: 100; left: 672px; position: static; top: 56px">
                                        <StaticSelectedStyle BackColor="#507CD1" />
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <DynamicMenuStyle BackColor="#B5C7DE" />
                                        <DynamicSelectedStyle BackColor="#507CD1" />
                                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <Items>
                                            <asp:MenuItem Text="Control Panel" Value="Control Panel">
                                                <asp:MenuItem NavigateUrl="~/userrecord.aspx" Text="Accessibility" Value="Accessibility">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/techform.aspx" Text="Technicians Record" Value="Technicians Record">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/code_builder.aspx" Text="Code Index"
                                                    Value="Code Index"></asp:MenuItem>
                                                <asp:MenuItem Text="Cost Indexes" Value="Cost Indexes"></asp:MenuItem>
                                                <asp:MenuItem Text="Users Information" Value="Users Information"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </Items>
                                    </asp:Menu>
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 36px; height: 11px">
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div style="text-align: center; background-color: #330099;">
                            <table style="z-index: 100; left: 240px; width: 592px; position: static; top: 536px;
                                height: 304px; border-right: navy thin solid; border-top: navy thin solid; border-left: navy thin solid; border-bottom: navy thin solid; font-size: small; color: navy; font-family: tahoma; background-color: white;">
                                <tr>
                                    <td align="right" style="width: 79px; height: 13px">
                                    </td>
                                    <td align="right" style="width: 112px; height: 13px">
                                    </td>
                                    <td style="width: 100px; height: 13px">
                                    </td>
                                    <td style="width: 80px; height: 13px">
                                    </td>
                                    <td style="width: 100px; height: 13px">
                                    </td>
                                    <td style="width: 100px; height: 13px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="6" style="font-weight: bold; font-size: medium; color: silver;
                                        height: 13px; background-color: navy">
                                        Allowance Rates (Inter - State)&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px; height: 13px">
                                    </td>
                                    <td align="right" style="width: 112px; height: 13px">
                                        State Destination</td>
                                    <td style="width: 100px; height: 13px">
                                        <asp:DropDownList ID="DDLstate" runat="server" Style="z-index: 100; left: 344px;
                                            position: static; top: 136px">
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
                                        </asp:DropDownList></td>
                                    <td style="width: 80px; height: 13px">
                                    </td>
                                    <td style="width: 100px; height: 13px">
                                    </td>
                                    <td style="width: 100px; height: 13px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px; height: 13px">
                                    </td>
                                    <td align="right" style="width: 112px; height: 13px">
                                        Present Location&nbsp;</td>
                                    <td style="width: 100px; height: 13px">
                                        <asp:DropDownList ID="ddldepart" runat="server" Style="z-index: 100; left: 320px;
                                            position: static; top: 104px">
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
                                        </asp:DropDownList></td>
                                    <td style="width: 80px; height: 13px">
                                    </td>
                                    <td style="width: 100px; height: 13px">
                                    </td>
                                    <td style="width: 100px; height: 13px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px; height: 9px">
                                    </td>
                                    <td align="right" style="width: 112px; height: 9px">
                                        Distance(Km)</td>
                                    <td style="width: 100px; height: 9px">
                                        <asp:TextBox ID="Txtdistance" runat="server" Style="z-index: 100; left: 344px; position: static;
                                            top: 168px"></asp:TextBox></td>
                                    <td style="width: 80px; height: 9px">
                                    </td>
                                    <td style="width: 100px; height: 9px">
                                    </td>
                                    <td style="width: 100px; height: 9px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px; height: 3px">
                                    </td>
                                    <td align="right" style="width: 112px; height: 3px">
                                        Cost (per km)</td>
                                    <td style="width: 100px; height: 3px">
                                        <asp:TextBox ID="Txtcost" runat="server" Style="z-index: 100; left: 320px; position: static;
                                            top: 192px"></asp:TextBox></td>
                                    <td align="left" style="width: 80px; height: 3px">
                                    </td>
                                    <td style="width: 100px; height: 3px">
                                    </td>
                                    <td style="width: 100px; height: 3px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                    </td>
                                    <td align="right" style="width: 112px">
                                        Total Cost</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="Txttotal" runat="server" Style="z-index: 100; left: 320px; position: static;
                                            top: 216px"></asp:TextBox></td>
                                    <td align="left" style="width: 80px">
                                        <asp:Button ID="BtnsubmitT" runat="server" Style="z-index: 100; left: 480px; position: static;
                                            top: 192px" Text="Submit" Width="80px" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:Button ID="Btnupt" runat="server" Style="z-index: 100; left: 576px; position: static;
                                            top: 192px" Text="Update" Width="80px" /></td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                    </td>
                                    <td align="right" style="width: 112px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 80px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                    </td>
                                    <td align="right" style="width: 112px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 80px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                        <asp:TextBox ID="Txtsw" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 112px">
                                        Region</td>
                                    <td style="width: 100px" align="left">
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
                                    </td>
                                    <td style="width: 80px" align="left">
                                        <asp:TextBox ID="Txtrate" runat="server" Width="32px"></asp:TextBox>
                                        <asp:Button ID="Btnrgn" runat="server" Height="22px" Text="..." Width="21px" />
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 112px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="width: 80px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                        <asp:TextBox ID="Txtss" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 112px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="width: 80px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                        <asp:TextBox ID="Txtse" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 112px">
                                        Cost (per km)</td>
                                    <td style="width: 100px" align="left">
                                        <asp:TextBox ID="Txtncost" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="width: 80px">
                                        <asp:Button ID="Button3" runat="server" Text="Button" />
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                        <asp:TextBox ID="Txtnw" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 112px">
                                        Total Cost</td>
                                    <td style="width: 100px" align="left">
                                        <asp:TextBox ID="Txtxtotal" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="width: 80px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                        <asp:TextBox ID="Txtne" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 112px">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="left">
                                        <asp:Button ID="Button2" runat="server" Text="Submit" />
                                    </td>
                                    <td style="width: 80px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                        <asp:TextBox ID="Txtnc" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 112px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 80px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 112px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 80px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 112px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 80px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="6" style="border-right: navy thin solid; border-top: navy thin solid;
                                        font-weight: bold; font-size: medium; text-transform: capitalize; border-left: navy thin solid;
                                        color: silver; border-bottom: navy thin solid; background-color: navy">
                                        Generate other Travel Allowances</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px; height: 34px;">
                                    </td>
                                    <td align="right" style="width: 112px; height: 34px;">
                                        Technician's level&nbsp;</td>
                                    <td align="left" style="width: 100px; height: 34px;">
                                        <asp:DropDownList ID="DDLtechlevel" runat="server" Style="z-index: 100; left: 328px;
                                            position: static; top: 272px" Width="96px">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>T1</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 80px; height: 34px;">
                                    </td>
                                    <td style="width: 100px; height: 34px;">
                                    </td>
                                    <td style="width: 100px; height: 34px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                    </td>
                                    <td align="right" style="width: 112px">
                                        Accomodation</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="Txtaccomodation" runat="server" Style="z-index: 100; left: 328px;
                                            position: static; top: 304px"></asp:TextBox></td>
                                    <td style="width: 80px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                    </td>
                                    <td align="right" style="width: 112px">
                                        Feeding</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="Txtfeeding" runat="server" Style="z-index: 100; left: 328px; position: static;
                                            top: 328px"></asp:TextBox></td>
                                    <td style="width: 80px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                    </td>
                                    <td align="right" style="width: 112px">
                                        Local Transport</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="Txtltransport" runat="server" Style="z-index: 100; left: 328px;
                                            position: static; top: 352px"></asp:TextBox></td>
                                    <td align="left" style="width: 80px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px">
                                    </td>
                                    <td align="right" style="width: 112px">
                                        Total Allowance</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TxtTalllowance" runat="server" Style="z-index: 100; left: 320px;
                                            position: static; top: 384px"></asp:TextBox></td>
                                    <td align="left" style="width: 80px">
                                        <asp:Button ID="Btnsuballow" runat="server" Style="z-index: 100; left: 480px; position: static;
                                            top: 384px" Text="Submit" Width="80px" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:Button ID="Btnupa" runat="server" Style="z-index: 100; left: 576px; position: static;
                                            top: 392px" Text="Update" Width="72px" /></td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px; height: 26px;">
                                    </td>
                                    <td align="right" style="width: 112px; height: 26px;">
                                    </td>
                                    <td style="width: 100px; height: 26px;">
                                    </td>
                                    <td style="width: 80px; height: 26px;">
                                        <asp:Button ID="Btnclear" runat="server" Style="z-index: 100; left: 752px; position: static;
                                            top: 424px" Text="Clear " Width="80px" /></td>
                                    <td style="width: 100px; height: 26px;">
                                    </td>
                                    <td style="width: 100px; height: 26px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px; height: 26px">
                                    </td>
                                    <td align="right" style="width: 112px; height: 26px">
                                    </td>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                    <td style="width: 80px; height: 26px">
                                    </td>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 79px; height: 26px">
                                    </td>
                                    <td align="right" style="width: 112px; height: 26px">
                                    </td>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                    <td style="width: 80px; height: 26px">
                                    </td>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="width: 37px">
                    </td>
                    <td style="width: 185px">
                    </td>
                    <td style="width: 36px">
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
