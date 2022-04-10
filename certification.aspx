<%@ Page Language="VB" AutoEventWireup="false" CodeFile="certification.aspx.vb" Inherits="certification" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Job Certification</title>
    <style type="text/css">
        .style1
        {
            font-family: Tahoma;
            font-size: x-small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="z-index: 100; left: 136px; width: 77%; position: static; top: 32px;
                height: 100%">
                <tr>
                    <td colspan="3">
                        <table style="border-top: thin solid; font-size: small; z-index: 100; left: 160px;
                            width: 100%; font-family: tahoma; position: static; top: 16px; height: 100%">
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
                                        top: 80px" ToolTip="Home page" Width="40px" /></td>
                                <td align="left" style="width: 41px">
                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="40px" ImageUrl="~/images/techbtn.jpg"
                                        PostBackUrl="~/Survey_assign.aspx" Style="z-index: 100; left: 232px; position: static;
                                        top: 40px" ToolTip="Survey Technician" Width="40px" /></td>
                                <td align="left" style="width: 50px">
                                    <asp:ImageButton ID="ImageButton4" runat="server" Height="40px" ImageUrl="~/images/teambtn.jpg"
                                        PostBackUrl="~/joballocation.aspx" Style="z-index: 100; left: 336px; position: static;
                                        top: 40px" ToolTip="Implementation Team" Width="40px" /></td>
                                <td align="left" style="width: 35px">
                                    <asp:ImageButton ID="ImageButton5" runat="server" Height="40px" ImageUrl="~/images/mailbtn.jpg"
                                        PostBackUrl="~/Sup_bill_mail.aspx" Style="z-index: 100; left: 440px; position: static;
                                        top: 40px" Width="40px" /></td>
                                <td align="left" style="width: 100px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/reportbtn.jpg"
                                        Style="z-index: 100; left: 344px; position: static; top: 64px" Width="40px" /></td>
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
                            <table style="font-size: small; z-index: 100; left: 160px; width: 100%; color: navy;
                                font-family: tahoma; position: static; top: 256px; height: 100%; border-right: cornflowerblue thin solid; border-top: cornflowerblue thin solid; border-left: cornflowerblue thin solid; border-bottom: cornflowerblue thin solid;">
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 375px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5" style="font-weight: bold; font-size: medium; color: mintcream; font-family: verdana;
                                        background-color: cornflowerblue">
                                        Job Certification</td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 375px">
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
                                        Project Name</td>
                                    <td align="left" style="width: 375px">
                                        <asp:DropDownList ID="DDLproname" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 368px; position: static; top: 112px" Width="234px">
                                            <asp:ListItem></asp:ListItem>
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
                                        Site Code</td>
                                    <td align="left" style="width: 375px">
                                        <asp:DropDownList ID="DDLsite" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 368px; position: static; top: 136px" Width="234px">
                                            <asp:ListItem></asp:ListItem>
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
                                    <td style="width: 375px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 21px">
                                        Address</td>
                                    <td align="left" rowspan="3" style="width: 375px">
                                        <asp:TextBox ID="Txtaddress" runat="server" Height="56px" Style="z-index: 100; left: 376px;
                                            position: static; top: 184px" TextMode="MultiLine" Width="239px"></asp:TextBox></td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
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
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        Signatory Options&nbsp; </td>
                                    <td align="left" style="width: 375px">
                                        <asp:DropDownList ID="DDLsigned" runat="server" AutoPostBack="True" 
                                            Width="238px">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        Signatory</td>
                                    <td align="left" style="width: 375px">
                                        <asp:TextBox ID="Txtcontact" runat="server" Style="z-index: 100; left: 304px; position: static;
                                            top: 240px" ReadOnly="True" Width="238px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txtcontact"
                                            Display="Dynamic" ErrorMessage="Enter the name of the contact person" Style="z-index: 100;
                                            left: 488px; position: static; top: 264px">*</asp:RequiredFieldValidator>
                                        <asp:Button ID="Btnchg" runat="server" CausesValidation="False" Font-Bold="True"
                                            Style="z-index: 100; left: 512px; position: static; top: 352px" Text="+" /></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" colspan="2" style="font-size: x-small">
                                        If the signatory is not in the options click "+" to enter signatory</td>
                                    <td align="left" style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        Comment</td>
                                    <td align="left" style="width: 375px" rowspan="3">
                                        <asp:TextBox ID="Txtcomment" runat="server" Style="z-index: 100; left: 336px; position: static;
                                            top: 336px" Height="48px" TextMode="MultiLine" Width="240px"></asp:TextBox>
                                        </td>
                                    <td style="width: 100px" align="left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtcomment"
                                            Display="Dynamic" ErrorMessage="Enter the client's comment" Style="z-index: 100;
                                            left: 560px; position: static; top: 360px" Width="24px">*</asp:RequiredFieldValidator></td>
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
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        Remark</td>
                                    <td style="width: 375px" align="left">
                                        <asp:DropDownList ID="DDLrmk" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 328px; position: static; top: 392px" Width="237px">
                                            <asp:ListItem>Select.....</asp:ListItem>
                                            <asp:ListItem>Satisfactory</asp:ListItem>
                                            <asp:ListItem>unsatifactory</asp:ListItem>
                                        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ControlToValidate="DDLrmk" Display="Dynamic" ErrorMessage="choose a remark" Style="z-index: 100;
                                            left: 416px; position: static; top: 440px" Width="1px">*</asp:RequiredFieldValidator></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                        Warranty Period</td>
                                    <td style="width: 375px" align="left">
                                        <asp:TextBox ID="Txtwperiod" runat="server" Width="31px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="Txtwperiod" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                                        <span class="style1">year(s)</span></td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 375px" align="left">
                                        <asp:Button ID="Button1" runat="server" Style="z-index: 100; left: 320px; position: static;
                                            top: 448px" Text="Submit" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" />
                                        <asp:Button ID="Button2" runat="server" Style="z-index: 100; left: 416px; position: static;
                                            top: 464px" Text="Reset" BackColor="CornflowerBlue" BorderStyle="None" 
                                            ForeColor="White" />
                                        <asp:Button ID="Button3" runat="server" BackColor="CornflowerBlue" BorderStyle="None"
                                            ForeColor="White" PostBackUrl="~/closeproject.aspx" Style="z-index: 100; left: 368px;
                                            position: static; top: 552px" Text="Terminate Project" 
                                            CausesValidation="False" /></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 17px;">
                                    </td>
                                    <td align="right" style="width: 100px; height: 17px;">
                                    </td>
                                    <td style="width: 375px; height: 17px;">
                                    </td>
                                    <td style="width: 100px; height: 17px;">
                                    </td>
                                    <td style="width: 100px; height: 17px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 375px">
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Style="z-index: 100;
                                            left: 360px; position: static; top: 544px" Width="152px" />
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
