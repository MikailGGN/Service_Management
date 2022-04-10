<%@ Page Language="VB" AutoEventWireup="false" CodeFile="closeproject.aspx.vb" Inherits="closeproject" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Project Closure</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="z-index: 100; left: 168px; width: 600px; position: static; top: 40px; font-size: small; font-family: tahoma; border-right: blue thin solid; border-top: blue thin solid; border-left: blue thin solid; color: blue; border-bottom: blue thin solid;">
                <tr>
                    <td colspan="3">
                        <table style="border-top: thin solid; font-size: small; z-index: 100; left: 0px;
                            width: 100%; font-family: tahoma; position: static; top: 0px; height: 100%">
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
                    <td colspan="3">
                        <div style="text-align: center">
                            <table style="z-index: 100; left: 112px; width: 100%; position: static; top: 40px;
                                height: 100%">
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
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td align="left" colspan="2" style="height: 21px">
                                        <asp:RadioButton ID="RBtnpro" runat="server" Style="z-index: 100; left: 224px;
                                            position: static; top: 96px" Text="Check to view the terminated projects." Width="272px" /></td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        Project</td>
                                    <td align="left" style="width: 100px">
                                        <asp:DropDownList ID="DDLproname" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 224px; position: static; top: 112px" Width="128px">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" colspan="2">
                                        N0. of sites that have been implemented&nbsp;</td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="txtN0impl" runat="server" Style="z-index: 100; left: 504px; position: static;
                                            top: 136px" Width="48px"></asp:TextBox>
                                        <asp:Button ID="btnvimp" runat="server" Style="z-index: 100; left: 568px; position: static;
                                            top: 128px" Text="view" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" /></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px; height: 21px">
                                    </td>
                                    <td align="right" colspan="2" style="height: 21px">
                                        N0. of sites that are outstanding&nbsp;</td>
                                    <td align="left" style="width: 100px; height: 21px">
                                        <asp:TextBox ID="Txtoutstd" runat="server" Style="z-index: 100; left: 512px; position: static;
                                            top: 160px" Width="48px"></asp:TextBox>
                                        <asp:Button ID="Btnvostd" runat="server" Style="z-index: 100; left: 552px; position: static;
                                            top: 168px" Text="view" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" /></td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" colspan="2">
                                        N0. of outstanding sites with materials</td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtoutstm" runat="server" Style="z-index: 100; left: 496px; position: static;
                                            top: 192px" Width="48px"></asp:TextBox>
                                        <asp:Button ID="Btnvoutstdm" runat="server" Style="z-index: 100; left: 552px; position: static;
                                            top: 200px" Text="view" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" /></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="left" colspan="2">
                                        &nbsp;Sitecode : : State</td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td colspan="2" rowspan="8">
                                        <asp:ListBox ID="Listdisplay" runat="server" Height="176px" Style="z-index: 100; left: 216px;
                                            position: static; top: 208px" Width="264px"></asp:ListBox></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
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
                                </tr>
                                <tr>
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
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        <asp:Button ID="Button4" runat="server" Style="z-index: 100; left: 512px; position: static;
                                            top: 408px" Text="Terminate" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" /></td>
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
