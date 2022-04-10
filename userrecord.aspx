<%@ Page Language="VB" AutoEventWireup="false" CodeFile="userrecord.aspx.vb" Inherits="userrecord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Users Record </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="z-index: 100; left: 0px; width: 20cm; position: static; top: 0px;
                height: 20cm; font-weight: normal; font-size: small; color: #000066; font-family: tahoma; border-right: blue thin solid; border-top: blue thin solid; border-left: blue thin solid; border-bottom: blue thin solid;">
                <tr>
                    <td colspan="1" style="width: 100px">
                    </td>
                    <td colspan="3">
                        <table style="border-top: thin solid; font-size: small; z-index: 100; left: 32px;
                            width: 100%; font-family: tahoma; position: static; top: 16px; height: 100%">
                            <tr>
                                <td align="left" colspan="1">
                                    <img src="images/inlakslogo.gif" style="z-index: 100; left: 32px; position: static;
                                        top: 24px; height: 16px" /></td>
                                <td colspan="12">
                                    Inverter Implementation And Support Services</td>
                            </tr>
                            <tr>
                                <td align="left" colspan="1">
                                </td>
                                <td colspan="12">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="13" style="height: 34px">
                                    <br />
                        <table id="TABLE1" onclick="return TABLE1_onclick()" style="z-index: 100; left: 0px;
                            width: 100%; position: static; top: 0px; height: 100%; font-size: small;">
                            <tr>
                                <td align="right" style="width: 30px; height: 20px">
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
                                    &nbsp;
                                </td>
                                <td align="left" style="width: 20px; height: 20px">
                                    <asp:Menu ID="Menu3" runat="server" Font-Bold="True" Orientation="Horizontal" Style="z-index: 100;
                                        left: 520px; position: static; top: 104px" BackColor="#B5C7DE" 
                                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                                        ForeColor="#284E98" StaticSubMenuIndent="10px">
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
                                    <br />
                                </td>
                                <td style="width: 100px; height: 20px">
                                    <asp:Menu ID="Menu5" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                        Font-Bold="True" Font-Names="Tahoma" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
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
                                <td style="width: 100px; height: 20px">
                                    &nbsp;<asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                        Font-Bold="True" Font-Names="Tahoma" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
                                        StaticSubMenuIndent="10px" Style="z-index: 100; left: 576px; position: static;
                                        top: 80px">
                                        <StaticSelectedStyle BackColor="#507CD1" />
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <DynamicMenuStyle BackColor="#B5C7DE" />
                                        <DynamicSelectedStyle BackColor="#507CD1" />
                                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <Items>
                                            <asp:MenuItem Text="Control Panel" Value="Control Panel" Selectable="False">
                                                <asp:MenuItem NavigateUrl="~/userrecord.aspx" Text="Accessibility" Value="Accessibility">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/code_builder.aspx" Text="Code Index"
                                                    Value="Code Index"></asp:MenuItem>
                                                <asp:MenuItem Text="Cost Indexes" Value="Cost Indexes" NavigateUrl="~/set_cost.aspx"></asp:MenuItem>
                                                <asp:MenuItem Text="Users Information" Value="Users Information" NavigateUrl="~/changepassword.aspx"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/techrec.aspx" Text="Technician's Record" Value="Technician's Record">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/techform.aspx" Text="Technician's Registration form" Value="Technicians Record" ToolTip="Registration form">
                                                </asp:MenuItem>
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
                            </tr>
                        </table>
                                    &nbsp;</td>
                            </tr>
                            </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 18px;">
                    </td>
                    <td colspan="3" style="height: 18px" align="left">
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                                        left: 24px; position: static; top: 224px" Width="48px">Logout</asp:HyperLink></td>
                </tr>
                <tr>
                    <td colspan="1" style="width: 100px">
                    </td>
                    <td colspan="3">
                        <div style="text-align: center">
                            <div style="text-align: center">
                                <table style="z-index: 100; left: 32px; width: 20cm; position: static; top: 384px;
                                    height: 15cm">
                                    <tr>
                                        <td style="width: 100px; height: 23px">
                                        </td>
                                        <td style="width: 100px; height: 23px">
                                        </td>
                                        <td style="width: 88px; height: 23px">
                                        </td>
                                        <td style="width: 100px; height: 23px">
                                        </td>
                                        <td style="width: 100px; height: 23px">
                                        </td>
                                        <td style="width: 100px; height: 23px">
                                        </td>
                                        <td style="width: 100px; height: 23px">
                                        </td>
                                        <td style="width: 100px; height: 23px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="height: 19px" align="center">
                                            <asp:Label ID="Label1" runat="server" Style="font-weight: bold; font-size: small;
                                                z-index: 100; left: 64px; color: white; font-family: tahoma; position: static;
                                                top: 200px; background-color: cornflowerblue; text-align: center" Text="Create User"
                                                Width="392px"></asp:Label></td>
                                        <td colspan="4" style="height: 19px">
                                            <asp:Label ID="Label2" runat="server" Style="font-weight: bold; font-size: small;
                                                z-index: 100; left: 512px; color: white; position: static; top: 200px; background-color: cornflowerblue"
                                                Text="User Accessibility" Width="384px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            Role</td>
                                        <td align="left" style="width: 88px">
                                            <asp:DropDownList ID="DDLrole" runat="server" Style="z-index: 100; left: 152px; position: static;
                                                top: 104px">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>Administrator</asp:ListItem>
                                                <asp:ListItem>Implementation</asp:ListItem>
                                                <asp:ListItem>Support</asp:ListItem>
                                                <asp:ListItem>Workshop</asp:ListItem>
                                                <asp:ListItem>Equipment Handling</asp:ListItem>
                                                <asp:ListItem>General Operations</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 100px" align="left">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DDLrole"
                                                Display="Dynamic" ErrorMessage="RequiredFieldValidator" Style="z-index: 100;
                                                left: 352px; position: static; top: 136px" Width="16px">*</asp:RequiredFieldValidator></td>
                                        <td style="width: 100px" align="right">
                                            Username</td>
                                        <td align="left" colspan="2">
                                            <asp:DropDownList ID="DDLguser" runat="server" AutoPostBack="True" Style="z-index: 100;
                                                left: 544px; position: static; top: 152px" Width="136px">
                                                <asp:ListItem></asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2" style="height: 26px">
                                            Username</td>
                                        <td style="width: 88px; height: 26px;">
                                            <asp:TextBox ID="Txtuname" runat="server" Style="z-index: 100; left: 144px; position: static;
                                                top: 128px" TabIndex="1"></asp:TextBox></td>
                                        <td style="width: 100px; height: 26px;" align="left">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtuname"
                                                ErrorMessage="Enter username" Style="z-index: 100; left: 328px; position: static;
                                                top: 168px" Width="16px">*</asp:RequiredFieldValidator></td>
                                        <td style="width: 100px; height: 26px;" align="right">
                                        </td>
                                        <td style="height: 26px;" align="left" colspan="2">
                                        </td>
                                        <td style="width: 100px; height: 26px;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            Password</td>
                                        <td style="width: 88px">
                                            <asp:TextBox ID="Txtpasswd" runat="server" Style="z-index: 100; left: 136px; position: static;
                                                top: 168px" TextMode="Password" TabIndex="2"></asp:TextBox></td>
                                        <td style="width: 100px" align="left">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtpasswd"
                                                ErrorMessage="Enter your password" Style="z-index: 100; left: 328px; position: static;
                                                top: 192px" Width="16px">*</asp:RequiredFieldValidator></td>
                                        <td style="width: 100px" align="right">
                                        </td>
                                        <td align="left" colspan="3">
                                            <asp:CheckBox ID="Chksuvass" runat="server" Style="z-index: 100; left: 520px; position: static;
                                                top: 216px" Text="Assign Technician To Survey" Width="216px" TabIndex="6" /></td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2" style="height: 18px">
                                            Confirm Password</td>
                                        <td style="width: 88px; height: 18px;">
                                            <asp:TextBox ID="Txtcpasswd" runat="server" Style="z-index: 100; left: 136px; position: static;
                                                top: 200px" TextMode="Password" TabIndex="3"></asp:TextBox></td>
                                        <td style="width: 100px; height: 18px;" align="left">
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txtpasswd"
                                                ControlToValidate="Txtcpasswd" Display="Dynamic" ErrorMessage="The password and confirmation password must match"
                                                Style="z-index: 100; left: 352px; position: static; top: 232px" Width="8px">*</asp:CompareValidator></td>
                                        <td style="width: 100px; height: 18px;" align="right">
                                        </td>
                                        <td align="left" colspan="3" style="height: 18px">
                                            <asp:CheckBox ID="Chksuvrpt" runat="server" Style="z-index: 100; left: 528px; position: static;
                                                top: 240px" Text="Record Survey Report" Width="216px" TabIndex="7" /></td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            Security Question</td>
                                        <td style="width: 88px">
                                            <asp:TextBox ID="Txtquestn" runat="server" Style="z-index: 100; left: 208px; position: static;
                                                top: 216px" TabIndex="4"></asp:TextBox></td>
                                        <td style="width: 100px" align="left">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic"
                                                ErrorMessage="Enter a security question " Style="z-index: 100; left: 352px; position: static;
                                                top: 240px" Width="8px" ControlToValidate="Txtquestn">*</asp:RequiredFieldValidator></td>
                                        <td style="width: 100px" align="right">
                                        </td>
                                        <td align="left" colspan="3">
                                            <asp:CheckBox ID="ChkRmat" runat="server" Style="z-index: 100; left: 528px; position: static;
                                                top: 264px" Text="Request Materials" Width="216px" TabIndex="8" /></td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2" style="height: 26px">
                                            Security
                                            Answer</td>
                                        <td align="left" style="width: 88px; height: 26px;">
                                            <asp:TextBox ID="Txtans" runat="server" Style="z-index: 100; left: 216px; position: static;
                                                top: 248px" TabIndex="5"></asp:TextBox></td>
                                        <td style="width: 100px; height: 26px;" align="left">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Txtans"
                                                Display="Dynamic" ErrorMessage="Answer the security question" Style="z-index: 100;
                                                left: 344px; position: static; top: 280px" Width="8px">*</asp:RequiredFieldValidator></td>
                                        <td style="width: 100px; height: 26px;" align="right">
                                        </td>
                                        <td align="left" colspan="3" style="height: 26px">
                                            <asp:CheckBox ID="Chkmapp" runat="server" Style="z-index: 100; left: 520px; position: static;
                                                top: 296px" Text="Material Approved For Deployment" Width="256px" TabIndex="9" /></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 27px;">
                                        </td>
                                        <td align="left" colspan="3" style="height: 27px">
                                            <asp:Button ID="Btnsub" runat="server" Style="z-index: 100; left: 224px; position: static;
                                                top: 248px; font-weight: bold; font-size: small; color: white; background-color: cornflowerblue;" Text="Submit" BorderStyle="None" />
                                            <a href="changepassword.aspx">Make changes in a user account</a>&nbsp;</td>
                                        <td style="width: 100px; height: 27px;">
                                        </td>
                                        <td align="left" colspan="3" style="height: 27px">
                                            <asp:CheckBox ID="Chkmtrans" runat="server" Style="z-index: 100; left: 520px; position: static;
                                                top: 328px" Text="Material Deployment & Transfer" Width="256px" TabIndex="10" /></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 88px" rowspan="4">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="48px" Style="z-index: 100;
                                                left: 200px; position: static; top: 352px" Width="160px" />
                                            &nbsp;&nbsp;</td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td align="left" colspan="3">
                                            <asp:CheckBox ID="Chkimptec" runat="server" Style="z-index: 100; left: 528px; position: static;
                                                top: 360px" Text="Assign Technician For Site Implementation" Width="272px" TabIndex="11" /></td>
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
                                        <td align="left" colspan="3">
                                            <asp:CheckBox ID="Chksuptec" runat="server" Style="z-index: 100; left: 528px; position: static;
                                                top: 384px" Text="Assign Technician To Site For Support " Width="272px" TabIndex="12" /></td>
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
                                        <td align="left" colspan="2">
                                            <asp:CheckBox ID="Chkwkshp" runat="server" Style="z-index: 100; left: 512px; position: static;
                                                top: 408px" Text="Workshop" Width="120px" TabIndex="13" /></td>
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
                                        <td align="left" colspan="2">
                                            <asp:CheckBox ID="Chkqc" runat="server" Style="z-index: 100; left: 592px; position: static;
                                                top: 568px" Text="Quality Assurance" Width="152px" TabIndex="14" /></td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 88px">
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
                                        <td style="width: 100px; height: 20px;">
                                        </td>
                                        <td style="width: 100px; height: 20px;">
                                        </td>
                                        <td style="width: 88px; height: 20px;">
                                        </td>
                                        <td style="width: 100px; height: 20px;">
                                        </td>
                                        <td style="width: 100px; height: 20px;">
                                        </td>
                                        <td style="width: 100px; height: 20px;" align="left">
                                            <asp:Button ID="Btnaddpage" runat="server" Style="z-index: 100; left: 496px; position: static;
                                                top: 488px; font-weight: bold; font-size: small; color: white; font-family: tahoma; background-color: cornflowerblue;" Text="Submit" BorderStyle="None" /></td>
                                        <td style="width: 100px; height: 20px;">
                                        </td>
                                        <td style="width: 100px; height: 20px;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 21px;">
                                        </td>
                                        <td style="width: 100px; height: 21px;">
                                        </td>
                                        <td style="width: 88px; height: 21px;">
                                        </td>
                                        <td style="width: 100px; height: 21px;">
                                        </td>
                                        <td style="width: 100px; height: 21px;">
                                        </td>
                                        <td style="width: 100px; height: 21px;">
                                        </td>
                                        <td style="width: 100px; height: 21px;">
                                        </td>
                                        <td style="width: 100px; height: 21px;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            &nbsp; &nbsp;
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 88px">
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
                                        <td style="width: 88px">
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
                                        <td style="width: 88px">
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
                                        <td style="width: 88px">
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
                                        <td style="width: 88px">
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
                                        <td style="width: 88px">
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
                                        <td style="width: 88px">
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
    
    </div>
    </form>
</body>
</html>
