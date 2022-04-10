<%@ Page Language="VB" AutoEventWireup="false" CodeFile="implementation.aspx.vb" Inherits="implementation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Inverter Implementation</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center; background-color: dodgerblue;">
            &nbsp;<table style="z-index: 100; left: 0px; width: 63%; position: static; top: 0px; height: 100%; background-color: white;">
                <tr>
                    <td style="height: 101px" colspan="3" align="center">
                        <table style="border-top: thin solid; font-size: small; z-index: 100; left: 104px;
                            width: 100%; font-family: tahoma; position: static; top: 40px; height: 100%">
                            <tr>
                                <td align="left" style="width: 19px">
                                    <img src="images/inlakslogo.gif" style="z-index: 100; left: 112px; position: static;
                                        top: 40px; height: 16px" /></td>
                                <td colspan="12" align="center">
                                    Inverter Implementation And Support Services</td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 19px">
                                    </td>
                                <td align="left" style="width: 41px">
                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="~/images/homemade.jpg"
                                        PostBackUrl="~/Default.aspx" Style="z-index: 100; left: 152px; position: static;
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
                            </tr>
                            <tr>
                                <td rowspan="4" style="width: 19px; height: 34px">
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                                        left: 8px; position: static; top: 96px" Width="48px">Logout</asp:HyperLink><br />
                                </td>
                                <td align="left" colspan="12" rowspan="4" style="height: 34px">
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
                                </td>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div style="text-align: center">
                            <table style="z-index: 100; left: 168px; width: 100%; position: static; top: 248px;
                                height: 100%; border-right: cornflowerblue thin solid; border-top: cornflowerblue thin solid; font-size: small; border-left: cornflowerblue thin solid; color: navy; border-bottom: cornflowerblue thin solid; font-family: tahoma; letter-spacing: 1px;">
                                <tr>
                                    <td style="width: 28px; height: 18px;">
                                    </td>
                                    <td style="width: 225px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 89px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td style="width: 225px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="right" colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" style="font-weight: bold; font-size: medium; color: mintcream; font-family: verdana; background-color: cornflowerblue">
                                        Site Implementation</td>
                                </tr>
                                <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td align="left" colspan="4">
                                        </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td style="width: 225px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 89px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="6" style="height: 21px; text-align: center;">
                                        <br />
                                        The stage of inverter implementation and the allocation of implentation jobs to
                                        technicians. The overall exercise or contract is refered to as PROJECT in this application
                                        is registered with reference information provided by the Clients and the Technicians assigned to implement the required task.&nbsp;<br />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="6" style="font-weight: bold; font-size: medium; color: mintcream;
                                        font-family: arial narrow; height: 21px; background-color: cornflowerblue">
                                        <asp:Button ID="Button4" runat="server" BackColor="CornflowerBlue" BorderStyle="None" Font-Bold="True"
                                            ForeColor="MintCream" Style="z-index: 100; left: 120px; position: static; top: 424px"
                                            Text="Registration" ToolTip="Project, site records" Width="120px" />
                                        <asp:Button ID="Button5" runat="server" BackColor="CornflowerBlue" BorderColor="Maroon" BorderStyle="None"
                                            Font-Bold="True" ForeColor="MintCream" Style="z-index: 100; left: 176px; position: static;
                                            top: 424px" Text="Implementation" ToolTip="assign technicians to implement a site"
                                            Width="120px" />
                                        <asp:Button ID="Button6" runat="server" BackColor="CornflowerBlue" BorderColor="Maroon" BorderStyle="None"
                                            Font-Bold="True" ForeColor="MintCream" Style="z-index: 100; left: 360px; position: static;
                                            top: 424px" Text="Materials" ToolTip="Information on the movement and allocation of materials"
                                            Width="120px" /></td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="6" style="height: 21px">
                                        <table style="z-index: 100; left: 168px; width: 100%; position: static; top: 456px;
                                height: 100%; font-size: small; color: dodgerblue; font-family: tahoma; background-image: url(images/img29.jpg); border-top-width: thin; border-left-width: thin; border-left-color: maroon; border-bottom-width: thin; border-bottom-color: maroon; border-top-color: maroon; border-right-width: thin; border-right-color: maroon;">
                                            <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td align="left" colspan="4">
                                        <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 192px; position: static;
                                            top: 456px" Text="The Project registration, Site registration and Survey Information. "
                                            Visible="False" Width="520px"></asp:Label></td>
                                    <td style="width: 100px">
                                    </td>
                                            </tr>
                                            <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td align="right" style="width: 225px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Project_registration.aspx"
                                            Style="z-index: 100; left: 272px; position: static; top: 448px" Width="208px" Visible="False">To register a new project</asp:HyperLink></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 409px" rowspan="4">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                            </tr>
                                            <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td style="width: 225px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/siteregistration.aspx"
                                            Style="z-index: 100; left: 344px; position: static; top: 456px" Width="224px" Visible="False">To register is sites</asp:HyperLink></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                            </tr>
                                            <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td style="width: 225px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Survey_assign.aspx"
                                            Style="z-index: 100; left: 328px; position: static; top: 472px" Width="264px" Visible="False">To allocate a technician Survey a site</asp:HyperLink></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                            </tr>
                                            <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td style="width: 225px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/surveyreport.aspx" Style="z-index: 100;
                                            left: 296px; position: static; top: 496px" Width="312px" Visible="False">To record the survey finding or site statistics</asp:HyperLink></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                            </tr>
                                            <tr>
                                    <td style="width: 28px; height: 21px;">
                                    </td>
                                    <td style="height: 21px;" align="left" colspan="4">
                                        <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 184px; position: static;
                                            top: 576px" Text="Assigning Technicians to implement project at a particular sites. The implementation of a site is done by a team. N.B: A team consist of two persons."
                                            Visible="False" Width="584px"></asp:Label></td>
                                    <td style="width: 100px; height: 21px;">
                                    </td>
                                            </tr>
                                            <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td style="width: 225px">
                                    </td>
                                    <td style="width: 100px">
                                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/joballocation.aspx"
                                            Style="z-index: 100; left: 272px; position: static; top: 592px" Width="176px" Visible="False">Assign a site to a Team</asp:HyperLink></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 409px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 28px">
                                                </td>
                                                <td style="width: 225px">
                                                </td>
                                                <td style="width: 100px">
                                                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/certification.aspx"
                                                        Style="z-index: 100; left: 328px; position: static; top: 576px" Visible="False"
                                                        Width="264px">Job certification or client remarks</asp:HyperLink></td>
                                                <td style="width: 100px">
                                                </td>
                                                <td style="width: 409px">
                                                </td>
                                                <td style="width: 100px">
                                                </td>
                                            </tr>
                                            <tr>
                                    <td style="width: 28px; height: 21px">
                                    </td>
                                    <td align="left" colspan="4" style="height: 21px">
                                        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 192px; position: static;
                                            top: 648px" Text="Records information on materials. The movement of material from ware house to site. Transfer of material from one site to another. "
                                            Visible="False"></asp:Label></td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                            </tr>
                                            <tr>
                                    <td style="width: 28px; height: 21px">
                                    </td>
                                    <td style="width: 225px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/materialrequest.aspx"
                                            Style="z-index: 100; left: 264px; position: static; top: 752px" Width="248px" Visible="False">Request 
                                        material for implementation</asp:HyperLink></td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 409px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                            </tr>
                                            <tr>
                                    <td style="width: 28px; height: 21px;">
                                    </td>
                                    <td style="width: 225px; height: 21px;">
                                    </td>
                                    <td style="width: 100px; height: 21px;">
                                        <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Deployment.aspx"
                                            Style="z-index: 100; left: 264px; position: static; top: 752px" 
                                            Width="283px" Visible="False">Materials issued for site implementation</asp:HyperLink>
                                        </td>
                                    <td style="width: 100px; height: 21px;">
                                    </td>
                                    <td style="width: 409px; height: 21px;">
                                    </td>
                                    <td style="width: 100px; height: 21px;">
                                    </td>
                                            </tr>
                                            <tr>
                                    <td style="width: 28px; height: 21px">
                                    </td>
                                    <td style="width: 225px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                        </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 409px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 28px">
                                                </td>
                                                <td style="width: 225px">
                                                </td>
                                                <td style="width: 100px">
                                                </td>
                                                <td style="width: 100px">
                                                </td>
                                                <td style="width: 409px">
                                                </td>
                                                <td style="width: 100px">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td style="width: 225px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 89px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="6" style="font-weight: bold; font-size: medium; color: mintcream; font-family: arial narrow; background-color: cornflowerblue">
                                        &nbsp;Reports</td>
                                </tr>
                                <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td style="width: 225px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 89px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td style="width: 225px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 89px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td style="width: 225px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 89px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 28px">
                                    </td>
                                    <td style="width: 225px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 89px">
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
