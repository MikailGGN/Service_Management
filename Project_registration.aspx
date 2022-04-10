<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Project_registration.aspx.vb" Inherits="Project_registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Project Registration</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center; background-color: white;">
            &nbsp;<table style="z-index: 100; left: 0px; width: 92%; position: static; top: 0px; height: 100%">
                <tr>
                    <td style="height: 50px" colspan="3">
                        <table style="border-top: thin solid; font-size: small; z-index: 100; left: 192px;
                            width: 100%; font-family: tahoma; position: static; top: 40px; height: 100%">
                            <tr>
                                <td align="left" style="width: 19px">
                                    <img src="images/inlakslogo.gif" style="z-index: 100; left: 112px; position: static;
                                        top: 40px; height: 16px" /></td>
                                <td align="center" colspan="12">
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
                                        PostBackUrl="~/Default.aspx" Style="z-index: 100; left: 152px; position: static;
                                        top: 80px" ToolTip="Home page" Width="40px" CausesValidation="False" /></td>
                                <td align="left" style="width: 41px">
                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="40px" ImageUrl="~/images/techbtn.jpg"
                                        PostBackUrl="~/Survey_assign.aspx" Style="z-index: 100; left: 232px; position: static;
                                        top: 40px" ToolTip="Survey Technician" Width="40px" CausesValidation="False" /></td>
                                <td align="left" style="width: 50px">
                                    <asp:ImageButton ID="ImageButton4" runat="server" Height="40px" ImageUrl="~/images/teambtn.jpg"
                                        PostBackUrl="~/joballocation.aspx" Style="z-index: 100; left: 336px; position: static;
                                        top: 40px" ToolTip="Implementation Team" Width="40px" CausesValidation="False" /></td>
                                <td align="left" style="width: 35px">
                                    <asp:ImageButton ID="ImageButton5" runat="server" Height="40px" ImageUrl="~/images/mailbtn.jpg"
                                        PostBackUrl="~/Sup_bill_mail.aspx" Style="z-index: 100; left: 440px; position: static;
                                        top: 40px" Width="40px" CausesValidation="False" /></td>
                                <td align="left" style="width: 100px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/reportbtn.jpg"
                                        Style="z-index: 100; left: 344px; position: static; top: 64px" Width="40px" CausesValidation="False" /></td>
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
                                <td align="right" colspan="12" style="height: 34px">
                                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Style="z-index: 100;
                                        left: 616px; position: static; top: 88px" BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
                                        <Items>
                                            <asp:MenuItem Text="Added Pages" Value="Pages : :">
                                                <asp:MenuItem NavigateUrl="~/Survey_assign.aspx" Text="Assign Technician To Survey"
                                                    Value="New Item"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/surveyreport.aspx" Text="Record Survey" Value="Record Survey">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/materialrequest.aspx" Target="_top" Text="Request Materials"
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
                                    <asp:Menu ID="Menu2" runat="server" Font-Bold="False" Orientation="Horizontal"
                                        Style="z-index: 100; left: 552px; position: static; top: 104px" BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
                                        <Items>
                                            <asp:MenuItem Text="Links" Value="Implementation">
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
                                <td align="left" colspan="1" style="height: 34px">
                                </td>
                                <td align="left" colspan="1" style="height: 34px">
                                </td>
                            </tr>
                            </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 184px" align="center">
                        <div style="text-align: center">
                            <table style="z-index: 100; left: 408px; width: 100%; position: static; top: 232px;
                                height: 100%; font-size: small; color: navy; font-family: tahoma; border-right: steelblue thin solid; border-top: steelblue thin solid; border-bottom: steelblue thin solid; background-color: white; border-center: maroon thin solid; border-left: steelblue thin solid;">
                                <tr>
                                    <td>
                                    </td>
                                    <td style="width: 94px">
                                    </td>
                                    <td style="width: 128px">
                                    </td>
                                    <td style="width: 92px">
                                        </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; font-size: large; color: mintcream; font-family: 'Times New Roman'; background-color: cornflowerblue;" 
                                        colspan="5">
                                        Project Registration</td>
                                </tr>
                                <tr>
                                    <td style="font-size: small; color: #3300ff; font-family: Tahoma; height: 6px; background-color: white; border-top-width: thin; border-left-width: thin; border-left-color: lightblue; border-bottom-width: thin; border-bottom-color: lightblue; border-top-color: lightblue; border-right-width: thin; border-right-color: lightblue;" 
                                        colspan="4">
                                        Enter the project information and click submit
                                    </td>
                                    <td colspan="1" style="border-top-width: thin; border-left-width: thin; font-size: small;
                                        border-left-color: lightblue; border-bottom-width: thin; border-bottom-color: lightblue;
                                        color: #3300ff; border-top-color: lightblue; font-family: Tahoma; height: 6px;
                                        background-color: white; border-right-width: thin; border-right-color: lightblue; width: 100px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="height: 6px">
                                    </td>
                                    <td style="width: 94px; height: 6px">
                                    </td>
                                    <td style="width: 128px; height: 6px">
                                    </td>
                                    <td style="width: 92px; height: 6px" align="right">
                                        </td>
                                    <td align="right" style="width: 100px; height: 6px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="height: 26px">
                                        &nbsp;&nbsp;
                                        Client Name :</td>
                                    <td colspan="3" style="height: 26px" align="left">
                                        <asp:DropDownList ID="ddlpname" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 176px; position: static; top: 280px" Width="160px">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlpname"
                                            Display="Dynamic" Style="z-index: 100; left: 656px; position: static; top: 288px"
                                            Width="1px" ErrorMessage="Enter the client name">* </asp:RequiredFieldValidator></td>
                                    <td align="left" colspan="1" style="height: 26px; width: 100px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="height: 26px">
                                        Project Name:</td>
                                    <td style="height: 26px;" align="left" colspan="2">
                                        <asp:TextBox ID="Txtproname" runat="server" Style="z-index: 100; left: 400px; position: static;
                                            top: 400px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtproname"
                                            Display="Dynamic" ErrorMessage="Enter the project Name" Style="z-index: 100;
                                            left: 552px; position: static; top: 352px">*</asp:RequiredFieldValidator></td>
                                    <td style="width: 92px; height: 26px;">
                                    </td>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="height: 2px">
                                        Project Description:</td>
                                    <td align="left" colspan="3" rowspan="3">
                                        <asp:TextBox ID="Txtdesc" runat="server" Height="72px" Style="z-index: 100; left: 392px;
                                            position: static; top: 432px" TextMode="MultiLine" Width="328px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtdesc"
                                            Display="Dynamic" Style="z-index: 100; left: 720px; position: static; top: 424px" ErrorMessage="Give the project description">*</asp:RequiredFieldValidator></td>
                                    <td align="left" colspan="1" rowspan="3" style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="height: 12px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="height: 4px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="left" style="width: 94px">
                                        <asp:Button ID="Btnsub" runat="server" Style="z-index: 100; left: 432px; position: static;
                                            top: 512px" Text="Submit" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" /></td>
                                    <td colspan="2" rowspan="3">
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List"
                                            Style="z-index: 100; left: 432px; position: static; top: 488px" Width="168px" />
                                    </td>
                                    <td colspan="1" rowspan="3" style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td align="left" style="width: 94px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td style="width: 94px" align="left">
                                        </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="width: 132px">
                    </td>
                    <td style="width: 1442px">
                    </td>
                    <td style="width: 130px">
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
