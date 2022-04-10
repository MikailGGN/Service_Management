<%@ Page Language="VB" AutoEventWireup="false" CodeFile="siteregistration.aspx.vb" Inherits="siteregistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Site Registration</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center; background-color: white;">
            &nbsp;<table style="z-index: 100; left: 144px; width: 81%; position: static; top: 16px;
                height: 100%; border-right: cornflowerblue thin solid; border-top: cornflowerblue thin solid; border-left: cornflowerblue thin solid; border-bottom: cornflowerblue thin solid;">
                <tr>
                    <td colspan="3">
                        <table style="border-top: thin solid; font-size: small; z-index: 100; left: 168px;
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
                                        PostBackUrl="~/implementation.aspx" Style="z-index: 100; left: 152px; position: static;
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
                    <td colspan="3">
                        <div style="text-align: center">
                            <table style="z-index: 100; left: 160px; width: 100%; position: static; top: 248px;
                                height: 100%; font-size: small; color: navy; font-family: tahoma; border-top-width: thin; border-left-width: thin; border-left-color: maroon; border-bottom-width: thin; border-bottom-color: maroon; border-top-color: maroon; background-color: white; border-right-width: thin; border-right-color: maroon;">
                                <tr>
                                    <td style="width: 180px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px" align="right">
                                        </td>
                                </tr>
                                <tr>
                                    <td style="width: 180px">
                                        <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 168px; position: static;
                                            top: 208px" Text="Label" Visible="False" Width="48px"></asp:Label></td>
                                    <td align="right" colspan="2" style="font-weight: normal; font-size: medium">
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Style="z-index: 100;
                                            left: 690px; position: static; top: 272px" Width="368px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; font-size: large; text-transform: capitalize; color: mintcream; background-color: cornflowerblue;" colspan="3">
                                        Site Registration</td>
                                </tr>
                                <tr>
                                    <td style="width: 180px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 180px; height: 23px;" align="right">
                                        Project : Name</td>
                                    <td align="left" style="height: 23px;" colspan="2">
                                        <asp:DropDownList ID="ddlpname" runat="server" Style="z-index: 100; left: 328px;
                                            position: static; top: 248px" AutoPostBack="True" Width="88px">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlpname" ErrorMessage="Select Project name" Font-Size="Small" Style="z-index: 100;
                                            left: 360px; position: static; top: 296px">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td style="width: 180px" align="right">
                                        &nbsp;Description</td>
                                    <td align="left" style="width: 100px" rowspan="2">
                                        <asp:TextBox ID="Txtprodesc" runat="server" Style="z-index: 100;
                                            left: 328px; position: static; top: 272px" Width="288px" ReadOnly="True" TextMode="MultiLine" Visible="False"></asp:TextBox></td>
                                    <td style="width: 100px" align="left" rowspan="2">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 180px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 180px" align="right">
                                        State</td>
                                    <td align="left" colspan="2">
                                        <asp:DropDownList ID="ddlstate" runat="server" Style="z-index: 100; left: 264px;
                                            position: static; top: 344px" Width="96px" AutoPostBack="True">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlstate" ErrorMessage="select state" Font-Size="Small" Style="z-index: 100;
                                            left: 368px; position: static; top: 368px" Width="1px">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td style="width: 180px" align="right">
                                        Address</td>
                                    <td rowspan="3" align="left" colspan="2">
                                        <asp:TextBox ID="Txtsiteadd" runat="server" Height="56px" Style="z-index: 100; left: 256px;
                                            position: static; top: 368px" TextMode="MultiLine" Width="288px"></asp:TextBox><asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtsiteadd" ErrorMessage="Enter address"
                                                Font-Size="Small" Style="z-index: 100; left: 568px; position: static; top: 416px">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td style="width: 180px" align="right">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 180px" align="right">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 180px" align="right">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 180px; height: 26px;" align="right">
                                        Town</td>
                                    <td align="left" style="height: 26px;" colspan="2">
                                        <asp:TextBox ID="Txttown" runat="server" Style="z-index: 100; left: 256px; position: static;
                                            top: 496px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                                                runat="server" ControlToValidate="Txttown" ErrorMessage="Enter town" Font-Size="Small"
                                                Style="z-index: 100; left: 424px; position: static; top: 504px">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 180px">
                                    </td>
                                    <td align="left" colspan="2">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 180px" align="right">
                                        Contact 1 : Name</td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="Txtcontname" runat="server" Style="z-index: 100; left: 264px; position: static;
                                            top: 520px" Width="288px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                                runat="server" ControlToValidate="Txtcontname" Display="Dynamic" ErrorMessage="Enter the Contact name"
                                                Font-Size="Small" Style="z-index: 100; left: 568px; position: static; top: 544px"
                                                Width="16px">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td style="width: 180px; height: 26px" align="right">
                                        Mobile N0.</td>
                                    <td style="height: 26px" align="left" colspan="2">
                                        #1<asp:TextBox ID="Txtcontfone" runat="server" Style="z-index: 100; left: 256px; position: static;
                                            top: 544px" Width="144px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txtcontfone" ErrorMessage="Enter contact Phone N0." Style="z-index: 100;
                                            left: 424px; position: static; top: 576px" Width="1px">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtcontfone"
                                            ErrorMessage="GSM Phone N0. Required" Style="z-index: 100; left: 440px; position: static;
                                            top: 616px" ValidationExpression="(\d{11})" Width="56px">11 digit</asp:RegularExpressionValidator>#2
                                        <asp:TextBox ID="Txtcontfone2" runat="server" Style="z-index: 100; left: 448px; position: static;
                                            top: 528px"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Txtcontfone2"
                                            Display="Dynamic" ErrorMessage="11 digit" Style="z-index: 100; left: 680px; position: absolute;
                                            top: 552px" Width="16px">*</asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 180px; height: 26px">
                                        Contact 2 : Name</td>
                                    <td align="left" colspan="2" style="height: 26px">
                                        <asp:TextBox ID="Txtcontname2" runat="server" Style="z-index: 100; left: 224px; position: static;
                                            top: 560px" Width="288px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 180px; height: 26px">
                                        Mobile N0.&nbsp;</td>
                                    <td align="left" colspan="2" style="height: 26px">
                                        #1<asp:TextBox ID="Txtcfone1" runat="server" Style="z-index: 100; left: 224px; position: static;
                                            top: 584px" Width="144px"></asp:TextBox>&nbsp; 
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Txtcfone1"
                                            Display="Dynamic" ErrorMessage="11 digit" Style="z-index: 100; left: 432px; position: static;
                                            top: 608px" Width="16px">*</asp:RegularExpressionValidator>
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; #2
                                        <asp:TextBox ID="Txtcfone2" runat="server" Style="z-index: 100; left: 400px; position: static;
                                            top: 584px"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Txtcfone2"
                                            Display="Dynamic" ErrorMessage="11 digit" Style="z-index: 100; left: 688px; position: static;
                                            top: 608px" Width="16px">*</asp:RegularExpressionValidator></td>
                                </tr>
                                <tr>
                                    <td style="width: 180px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                        <asp:Button ID="Btnsub" runat="server" Style="z-index: 100; left: 272px; position: static;
                                            top: 608px" Text="Submit" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" /></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 180px">
                                    </td>
                                    <td style="width: 100px">
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Error"
                                            Style="z-index: 100; left: 296px; position: static; top: 560px" Width="304px" />
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 180px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 180px">
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
        </div>
    
    </div>
    </form>
</body>
</html>
