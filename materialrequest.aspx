<%@ Page Language="VB" AutoEventWireup="false" CodeFile="materialrequest.aspx.vb" Inherits="materialdeployment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Material Request</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <div style="text-align: center; background-color: steelblue;">
            <table style="z-index: 100; left: 0px; width: 70%; position: static; top: 0px; height: 100%; background-color: white;">
                <tr>
                    <td style="height: 50px" colspan="3">
                        <table style="border-top: thin solid; font-size: small; z-index: 100; left: 120px;
                            width: 100%; font-family: tahoma; position: static; top: 24px; height: 100%">
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
                                <td align="left" style="width: 46px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/reportbtn.jpg"
                                        Style="z-index: 100; left: 344px; position: static; top: 64px" Width="40px" /></td>
                                <td align="left" style="width: 100px">
                                    <asp:ImageButton ID="ImageButton6" runat="server" CausesValidation="False" ImageUrl="~/images/printer.gif"
                                        PostBackUrl="~/requsition.aspx" Style="z-index: 100; left: 408px; position: static;
                                        top: 48px" ToolTip="Print Material requisition" Width="40px" /></td>
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
                            <table style="font-size: small; z-index: 100; left: 120px; width: 100%; font-family: Verdana;
                                position: static; top: 448px; height: 100%; color: navy; border-top-width: thin; border-left-width: thin; border-left-color: maroon; border-bottom-width: thin; border-bottom-color: maroon; border-top-color: maroon; border-right-width: thin; border-right-color: maroon;">
                                <tr>
                                    <td style="width: 1044px">
                                    </td>
                                    <td style="width: 54px">
                                    </td>
                                    <td style="width: 37px">
                                    </td>
                                    <td style="width: 77px">
                                    </td>
                                    <td>
                                    </td>
                                    <td style="width: 353px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px; font-weight: bold; font-size: large; color: mintcream; background-color: cornflowerblue;" colspan="7">
                                        Material Request</td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px; height: 18px">
                                    </td>
                                    <td style="width: 54px; height: 18px">
                                    </td>
                                    <td style="width: 37px; height: 18px">
                                    </td>
                                    <td style="width: 77px; height: 18px">
                                    </td>
                                    <td style="height: 18px">
                                    </td>
                                    <td style="width: 353px; height: 18px">
                                    </td>
                                    <td style="width: 100px; height: 18px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px; height: 17px;">
                                        Project Name</td>
                                    <td align="left" style="width: 54px; height: 17px;">
                                        <asp:DropDownList ID="DDLproname" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 232px; position: static; top: 296px" Width="120px">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 37px; height: 17px;">
                                        Address</td>
                                    <td align="left" style="width: 77px; height: 17px">
                                    </td>
                                    <td align="left" style="height: 17px">
                                    </td>
                                    <td style="width: 353px; height: 17px;">
                                    </td>
                                    <td style="width: 100px; height: 17px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px; height: 18px">
                                        Site code</td>
                                    <td align="left" style="width: 54px; height: 18px">
                                        <asp:DropDownList ID="DDLsiteid" runat="server" Style="z-index: 100; left: 240px;
                                            position: static; top: 288px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" colspan="4" rowspan="3">
                                        <asp:TextBox ID="Txtaddress" runat="server" Height="56px" Style="z-index: 100; left: 360px;
                                            position: static; top: 304px" Width="320px" TextMode="MultiLine"></asp:TextBox></td>
                                    <td style="width: 100px; height: 18px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px; height: 18px">
                                    </td>
                                    <td style="width: 54px; height: 18px">
                                    </td>
                                    <td style="width: 100px; height: 18px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px">
                                    </td>
                                    <td style="width: 54px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px; height: 18px;">
                                        Survey:</td>
                                    <td style="width: 54px; height: 18px;">
                                    </td>
                                    <td style="width: 37px; height: 18px;">
                                    </td>
                                    <td style="width: 77px; height: 18px">
                                    </td>
                                    <td style="height: 18px">
                                    </td>
                                    <td style="width: 353px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="7">
                                        Power Audit :<asp:TextBox ID="Txtpaudit" runat="server" Style="z-index: 100; left: 464px;
                                            position: static; top: 368px" Width="32px"></asp:TextBox>KVA&nbsp; Inverter
                                        to ATM :<asp:TextBox ID="Txtatm" runat="server" Style="z-index: 100; left: 552px; position: static;
                                            top: 368px" Width="32px"></asp:TextBox>m &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="7">
                                        Inverter to: Battery :
                                        <asp:TextBox ID="Txtbattery" runat="server" Style="z-index: 100; left: 272px; position: static;
                                            top: 312px" Width="32px"></asp:TextBox>m &nbsp; &nbsp; &nbsp; &nbsp;Power Source :<asp:TextBox ID="Txtpsource" runat="server" Style="z-index: 100; left: 432px;
                                            position: static; top: 312px" Width="32px"></asp:TextBox>m
                                        Comms Rack :<asp:TextBox ID="Txtcrack" runat="server" Style="z-index: 100; left: 664px;
                                            position: static; top: 312px" Width="40px"></asp:TextBox>m</td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="7" style="border-bottom: cornflowerblue thin inset">
                                        &nbsp; &nbsp; &nbsp;
                                        Earth Bonding :<asp:TextBox ID="Txtebonding" runat="server" Style="z-index: 100;
                                            left: 296px; position: static; top: 336px" Width="32px"></asp:TextBox>
                                        &nbsp; &nbsp; &nbsp;
                                        Ligthing Arrestor :<asp:TextBox ID="Txtarrestor" runat="server" Style="z-index: 100;
                                            left: 416px; position: static; top: 344px" Width="32px"></asp:TextBox>
                                        Earth Reading :<asp:TextBox ID="Txtereading" runat="server" Style="z-index: 100;
                                            left: 592px; position: static; top: 344px" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px; height: 18px" align="right">
                                        Issues :</td>
                                    <td align="left" colspan="5" rowspan="2">
                                        <asp:TextBox ID="Txtissues" runat="server" Height="48px" Style="z-index: 100; left: 216px;
                                            position: static; top: 376px" TextMode="MultiLine" Width="392px"></asp:TextBox></td>
                                    <td style="width: 100px; height: 18px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px; height: 16px">
                                    </td>
                                    <td style="width: 100px; height: 16px">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="7" style="border-bottom: cornflowerblue thin outset; height: 16px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px">
                                    </td>
                                    <td style="width: 54px">
                                        </td>
                                    <td style="width: 37px" align="left">
                                        </td>
                                    <td align="left" style="width: 77px">
                                    </td>
                                    <td align="left">
                                    </td>
                                    <td style="width: 353px">
                                        Items</td>
                                    <td style="width: 100px">
                                        Quantity</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px">
                                        TRs cable</td>
                                    <td style="width: 54px">
                                        <asp:DropDownList ID="DDLtrscable1" runat="server" Style="z-index: 100; left: 168px;
                                            position: static; top: 400px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>6mm TRs cable</asp:ListItem>
                                            <asp:ListItem>4mm TRs cable</asp:ListItem>
                                            <asp:ListItem>2.5mm TRs cable</asp:ListItem>
                                            <asp:ListItem>1.5mm TRs cable</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 37px">
                                        <asp:TextBox ID="Txttrscable1" runat="server" Style="z-index: 100; left: 336px; position: static;
                                            top: 384px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 77px">
                                        <asp:DropDownList ID="DDLtrscable3" runat="server" Style="z-index: 100; left: 432px;
                                            position: static; top: 512px" Width="120px">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left">
                                        <asp:TextBox ID="Txttrscable3" runat="server" Style="z-index: 100; left: 504px; position: static;
                                            top: 536px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 353px">
                                        <asp:CheckBox ID="ChkBoxsocket" runat="server" Style="z-index: 100; left: 464px;
                                            position: static; top: 368px" Text="13A Socket & Pattress" Width="176px" AutoPostBack="True" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtsocket" runat="server" Style="z-index: 100; left: 648px; position: static;
                                            top: 392px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px">
                                    </td>
                                    <td align="left" style="width: 54px">
                                        <asp:DropDownList ID="DDLtrscable2" runat="server" Style="z-index: 100; left: 200px;
                                            position: static; top: 416px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>6mm TRs cable</asp:ListItem>
                                            <asp:ListItem>4mm TRs cable</asp:ListItem>
                                            <asp:ListItem>2.5mm TRs cable</asp:ListItem>
                                            <asp:ListItem>1.5mm TRs cable</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 37px">
                                        <asp:TextBox ID="Txttrscable2" runat="server" Style="z-index: 100; left: 336px; position: static;
                                            top: 416px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 77px">
                                        <asp:DropDownList ID="DDLtrscable4" runat="server" Style="z-index: 100; left: 376px;
                                            position: static; top: 560px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>6mm TRs cable</asp:ListItem>
                                            <asp:ListItem>4mm TRs cable</asp:ListItem>
                                            <asp:ListItem>2.5mm TRs cable</asp:ListItem>
                                            <asp:ListItem>1.5mm TRs cable</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left">
                                        <asp:TextBox ID="Txttrscable4" runat="server" Style="z-index: 100; left: 488px; position: static;
                                            top: 552px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 353px">
                                        <asp:CheckBox ID="ChkBxtrunk" runat="server" Style="z-index: 100; left: 464px; position: static;
                                            top: 384px" Text="Trunk" Width="72px" AutoPostBack="True" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txttrunk" runat="server" Style="z-index: 100; left: 640px; position: static;
                                            top: 416px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px">
                                    </td>
                                    <td style="width: 54px">
                                    </td>
                                    <td style="width: 37px">
                                    </td>
                                    <td style="width: 77px">
                                    </td>
                                    <td>
                                    </td>
                                    <td align="left" style="width: 353px">
                                        <asp:CheckBox ID="Chkbxpipe" runat="server" Style="z-index: 100; left: 408px; position: static;
                                            top: 416px" Text="PVC Pipe" Width="96px" AutoPostBack="True" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtpipe" runat="server" Style="z-index: 100; left: 640px; position: static;
                                            top: 440px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px; height: 5px">
                                        Welding cable</td>
                                    <td align="left" style="width: 54px; height: 5px">
                                        <asp:DropDownList ID="DDLwcable1" runat="server" Style="z-index: 100; left: 224px;
                                            position: static; top: 472px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>25mm welding cable</asp:ListItem>
                                            <asp:ListItem>16mm welding cable</asp:ListItem>
                                            <asp:ListItem>Earth bonding cable</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 37px; height: 5px">
                                        <asp:TextBox ID="Txtwcable1" runat="server" Style="z-index: 100; left: 328px; position: static;
                                            top: 472px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 77px; height: 5px">
                                        <asp:DropDownList ID="DDLwcable3" runat="server" Style="z-index: 100; left: 360px;
                                            position: static; top: 616px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="height: 5px">
                                        <asp:TextBox ID="Txtwcable3" runat="server" Style="z-index: 100; left: 488px; position: static;
                                            top: 616px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 353px; height: 5px">
                                        <asp:CheckBox ID="ChkBxrack" runat="server" Style="z-index: 100; left: 408px; position: static;
                                            top: 440px" Text="Battery Rack" Width="112px" AutoPostBack="True" /></td>
                                    <td align="left" style="width: 100px; height: 5px">
                                        <asp:TextBox ID="Txtbrack" runat="server" Style="z-index: 100; left: 648px; position: static;
                                            top: 472px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px">
                                    </td>
                                    <td align="left" style="width: 54px">
                                        <asp:DropDownList ID="DDLwcable2" runat="server" Style="z-index: 100; left: 224px;
                                            position: static; top: 496px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>25mm welding cable</asp:ListItem>
                                            <asp:ListItem>16mm welding cable</asp:ListItem>
                                            <asp:ListItem>Earth bonding cable</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 37px">
                                        <asp:TextBox ID="Txtwcable2" runat="server" Style="z-index: 100; left: 328px; position: static;
                                            top: 504px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 77px">
                                        <asp:DropDownList ID="DDLwcable4" runat="server" Style="z-index: 100; left: 352px;
                                            position: static; top: 648px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left">
                                        <asp:TextBox ID="Txtwcable4" runat="server" Style="z-index: 100; left: 480px; position: static;
                                            top: 648px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 353px">
                                        <asp:CheckBox ID="ChkBxbolt" runat="server" Style="z-index: 100; left: 432px; position: static;
                                            top: 496px" Text="Bolts & Nuts" Width="136px" AutoPostBack="True" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="TxtBolt" runat="server" Style="z-index: 100; left: 648px; position: static;
                                            top: 512px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px">
                                    </td>
                                    <td style="width: 54px">
                                    </td>
                                    <td style="width: 37px">
                                    </td>
                                    <td style="width: 77px">
                                    </td>
                                    <td>
                                    </td>
                                    <td align="left" style="width: 353px">
                                        <asp:CheckBox ID="ChkBxlug" runat="server" Style="z-index: 100; left: 432px; position: static;
                                            top: 536px" Text="Cable lugs" Width="104px" AutoPostBack="True" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtlug" runat="server" Style="z-index: 100; left: 648px; position: static;
                                            top: 536px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px">
                                        Battery</td>
                                    <td style="width: 54px">
                                        <asp:DropDownList ID="DDLbattery1" runat="server" Style="z-index: 100; left: 200px;
                                            position: static; top: 552px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Gaston 1500AH Battery</asp:ListItem>
                                            <asp:ListItem>Gaston  200AH Battery</asp:ListItem>
                                            <asp:ListItem>Gaston 100AH Batttery</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 37px">
                                        <asp:TextBox ID="Txtbattery1" runat="server" Style="z-index: 100; left: 336px; position: static;
                                            top: 560px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 77px">
                                        <asp:DropDownList ID="DDLbattery3" runat="server" Style="z-index: 100; left: 360px;
                                            position: static; top: 704px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left">
                                        <asp:TextBox ID="Txtbattery3" runat="server" Style="z-index: 100; left: 480px; position: static;
                                            top: 704px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 353px">
                                        <asp:CheckBox ID="ChkBxctie" runat="server" Style="z-index: 100; left: 416px; position: static;
                                            top: 544px" Text="Cable Tie" Width="120px" AutoPostBack="True" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtctie" runat="server" Style="z-index: 100; left: 648px; position: static;
                                            top: 568px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px">
                                    </td>
                                    <td style="width: 54px">
                                        <asp:DropDownList ID="DDLbattery2" runat="server" Style="z-index: 100; left: 200px;
                                            position: static; top: 576px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Gaston 1500AH Battery</asp:ListItem>
                                            <asp:ListItem>Gaston 200AH Battery</asp:ListItem>
                                            <asp:ListItem>Gaston 100AH Battery</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 37px">
                                        <asp:TextBox ID="TxtBattery2" runat="server" Style="z-index: 100; left: 336px; position: static;
                                            top: 584px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 77px">
                                        <asp:DropDownList ID="DDLbattery4" runat="server" Style="z-index: 100; left: 368px;
                                            position: static; top: 728px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left">
                                        <asp:TextBox ID="Txtbattery4" runat="server" Style="z-index: 100; left: 480px; position: static;
                                            top: 736px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 353px">
                                        <asp:CheckBox ID="ChkBxscrew" runat="server" Style="z-index: 100; left: 424px; position: static;
                                            top: 584px" Text="Screws & Pegs" Width="136px" AutoPostBack="True" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtscrew" runat="server" Style="z-index: 100; left: 648px; position: static;
                                            top: 592px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px">
                                    </td>
                                    <td style="width: 54px">
                                    </td>
                                    <td style="width: 37px">
                                    </td>
                                    <td style="width: 77px">
                                    </td>
                                    <td>
                                    </td>
                                    <td align="left" style="width: 353px">
                                        <asp:CheckBox ID="ChkBxscharge" runat="server" Style="z-index: 100; left: 440px;
                                            position: static; top: 600px" Text="Solar Charge Controller" Width="176px" AutoPostBack="True" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtscharge" runat="server" Style="z-index: 100; left: 648px; position: static;
                                            top: 616px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px">
                                        DC Disconnect</td>
                                    <td align="left" style="width: 54px">
                                        <asp:DropDownList ID="DDLdisconnt1" runat="server" Style="z-index: 100; left: 208px;
                                            position: static; top: 624px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>160A DC Disconnect</asp:ListItem>
                                            <asp:ListItem>120A DC Disconnect</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 37px">
                                        <asp:TextBox ID="Txtdisconnt1" runat="server" Style="z-index: 100; left: 328px; position: static;
                                            top: 640px" Width="32px" Visible="False"></asp:TextBox></td>
                                    <td align="left" style="width: 77px">
                                        <asp:DropDownList ID="DDLdisconnt3" runat="server" Style="z-index: 100; left: 360px;
                                            position: static; top: 792px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left">
                                        <asp:TextBox ID="Txtdisconnt3" runat="server" Style="z-index: 100; left: 488px; position: static;
                                            top: 792px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 353px">
                                        <asp:CheckBox ID="ChkBxbreaker" runat="server" Style="z-index: 100; left: 424px;
                                            position: static; top: 616px" Text="63A Breaker" AutoPostBack="True" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="TxtBreaker" runat="server" Style="z-index: 100; left: 640px; position: static;
                                            top: 656px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px">
                                    </td>
                                    <td align="left" style="width: 54px">
                                        <asp:DropDownList ID="DDLdisconnt2" runat="server" Style="z-index: 100; left: 208px;
                                            position: static; top: 664px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>160A DC Disconnect</asp:ListItem>
                                            <asp:ListItem>120A DC Disconnect</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 37px">
                                        <asp:TextBox ID="Txtdisconnt2" runat="server" Style="z-index: 100; left: 328px; position: static;
                                            top: 672px" Width="32px" Visible="False"></asp:TextBox></td>
                                    <td align="left" style="width: 77px">
                                        <asp:DropDownList ID="DDLdisconnt4" runat="server" Style="z-index: 100; left: 360px;
                                            position: static; top: 824px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left">
                                        <asp:TextBox ID="Txtdisconnt4" runat="server" Style="z-index: 100; left: 480px; position: static;
                                            top: 824px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 353px">
                                        <asp:CheckBox ID="ChkBxcombiner" runat="server" Style="z-index: 100; left: 424px;
                                            position: static; top: 656px" Text="PV Combiner" Width="112px" AutoPostBack="True" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtcombiner" runat="server" Style="z-index: 100; left: 640px; position: static;
                                            top: 688px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px">
                                    </td>
                                    <td style="width: 54px">
                                    </td>
                                    <td style="width: 37px">
                                    </td>
                                    <td style="width: 77px">
                                    </td>
                                    <td>
                                    </td>
                                    <td align="left" style="width: 353px">
                                        <asp:CheckBox ID="ChkBxarrester" runat="server" Style="z-index: 100; left: 432px;
                                            position: static; top: 680px" Text="Solar Lighting Arrester" AutoPostBack="True" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtarrester" runat="server" Style="z-index: 100; left: 648px; position: static;
                                            top: 712px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px">
                                        Inverter</td>
                                    <td align="left" style="width: 54px">
                                        <asp:DropDownList ID="DDLinv1" runat="server" Style="z-index: 100; left: 240px; position: static;
                                            top: 760px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Xantrex XW Hybrid</asp:ListItem>
                                            <asp:ListItem>Xantrex SW Trace</asp:ListItem>
                                            <asp:ListItem>ATMsure</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 37px">
                                        <asp:TextBox ID="Txtinv1" runat="server" Style="z-index: 100; left: 368px; position: static;
                                            top: 760px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 77px">
                                        <asp:DropDownList ID="DDLinv3" runat="server" Style="z-index: 100; left: 360px; position: static;
                                            top: 880px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left">
                                        <asp:TextBox ID="Txtinv3" runat="server" Style="z-index: 100; left: 480px; position: static;
                                            top: 880px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 353px">
                                        <asp:CheckBox ID="ChkBxpanel" runat="server" Style="z-index: 100; left: 432px; position: static;
                                            top: 704px" Text="175 watt Solar Panel" Width="160px" AutoPostBack="True" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtpanel" runat="server" Style="z-index: 100; left: 648px; position: static;
                                            top: 744px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px">
                                    </td>
                                    <td align="left" style="width: 54px">
                                        <asp:DropDownList ID="DDLinv2" runat="server" Style="z-index: 100; left: 248px; position: static;
                                            top: 784px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Xantrex XW Hybrid</asp:ListItem>
                                            <asp:ListItem>Xantrex SW Trace</asp:ListItem>
                                            <asp:ListItem>ATMsure</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 37px">
                                        <asp:TextBox ID="Txtinv2" runat="server" Style="z-index: 100; left: 368px; position: static;
                                            top: 792px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 77px">
                                        <asp:DropDownList ID="DDLinv4" runat="server" Style="z-index: 100; left: 368px; position: static;
                                            top: 904px" Width="120px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left">
                                        <asp:TextBox ID="Txtinv4" runat="server" Style="z-index: 100; left: 464px; position: static;
                                            top: 912px" Visible="False" Width="32px"></asp:TextBox></td>
                                    <td align="left" style="width: 353px">
                                        <asp:CheckBox ID="Chkgswitch" runat="server" Style="z-index: 100; left: 504px; position: static;
                                            top: 936px" Text="63A Gear Switch" Visible="False" Width="160px" /></td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtgswitch" runat="server" Style="z-index: 100; left: 688px; position: static;
                                            top: 936px" Visible="False" Width="32px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px">
                                    </td>
                                    <td align="right" style="width: 54px">
                                    </td>
                                    <td style="width: 37px">
                                    </td>
                                    <td style="width: 77px">
                                    </td>
                                    <td>
                                    </td>
                                    <td style="width: 353px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px">
                                    </td>
                                    <td align="right" style="width: 54px">
                                    </td>
                                    <td style="width: 37px">
                                    </td>
                                    <td style="width: 77px">
                                    </td>
                                    <td>
                                    </td>
                                    <td style="width: 353px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px">
                                        Others</td>
                                    <td colspan="5" style="font-size: small; font-family: Calibri" align="left">
                                        &nbsp;Enter the materials in this format ( Item-Quantity) and ensure to put a comma
                                        to separate Items.</td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 1044px; height: 11px">
                                        <br />
                                    </td>
                                    <td align="left" colspan="5" rowspan="2">
                                        <asp:TextBox ID="Txtothers" runat="server" Height="104px" Style="z-index: 100; left: 240px;
                                            position: static; top: 760px" TextMode="MultiLine" Width="424px"></asp:TextBox></td>
                                    <td style="width: 100px; height: 11px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px">
                                    </td>
                                    <td style="width: 54px">
                                    </td>
                                    <td style="width: 37px">
                                    </td>
                                    <td style="width: 77px">
                                    </td>
                                    <td>
                                    </td>
                                    <td align="right" style="width: 353px">
                                        <asp:Button ID="Btnsubmit" runat="server" Style="z-index: 100; left: 584px; position: static;
                                            top: 904px" Text="Submit" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" />
                                        <asp:Button ID="Btnreset" runat="server" Style="z-index: 100; left: 456px; position: static;
                                            top: 904px" Text="Reset" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" /></td>
                                    <td style="width: 100px">
                                        </td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px">
                                    </td>
                                    <td style="width: 54px">
                                        <asp:TextBox ID="Txthitem" runat="server" Style="z-index: 100; left: 208px; position: static;
                                            top: 1016px" Visible="False" Width="104px"></asp:TextBox></td>
                                    <td style="width: 37px">
                                    </td>
                                    <td style="width: 77px">
                                    </td>
                                    <td>
                                    </td>
                                    <td style="width: 353px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 1044px">
                                    </td>
                                    <td style="width: 54px">
                                    </td>
                                    <td style="width: 37px">
                                    </td>
                                    <td style="width: 77px">
                                    </td>
                                    <td>
                                    </td>
                                    <td style="width: 353px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="3">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Style="font-size: x-small;
                            z-index: 100; left: 104px; color: blue; font-family: tahoma; position: static;
                            top: 1168px" Width="368px">** If this is an added page to your role click to return to your defualt home page </asp:LinkButton></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
