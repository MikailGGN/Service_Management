<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Survey_assign.aspx.vb" Inherits="Survey_assign" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Survey Technician</title>
    <style type="text/css">


        .style1
        {
            width: 54%;
            height: 100px;
            color: #0000FF;
            font-size: small;
            font-family: tahoma;
        }
        .style3
        {
            width: 29px;
        }
        .style4
        {
            text-align: left;
        }
        .style6
        {
            width: 29px;
            height: 41px;
        }
        .style7
        {
            height: 41px;
        }
        .style8
        {
            text-align: left;
            height: 41px;
        }
        .style5
        {
            text-align: right;
        }
        .style9
        {
            font-family: Tahoma;
            font-size: x-small;
        }
        .style10
        {
            text-align: left;
            font-family: Tahoma;
            font-size: x-small;
        }
    </style>
</head>
<body>
<center >
    <form id="form1" runat="server">
    <div>
    
            <table style="z-index: 100; left: 0px; width: 70%; position: static; top: 0px; height: 100%; background-color: white;">
                <tr>
                    <td style="height: 57px" colspan="3">
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
                                <td align="left" style="width: 73px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/reportbtn.jpg"
                                        Style="z-index: 100; left: 344px; position: static; top: 64px" Width="40px" /></td>
                                <td align="left" style="width: 100px">
                                    <asp:ImageButton ID="ImageButton6" runat="server" CausesValidation="False" ImageUrl="~/images/printer.gif"
                                        PostBackUrl="~/print_tech_allocatn.aspx" Style="z-index: 100; left: 416px; position: static;
                                        top: 40px" ToolTip="Print Implementation Tickets" Width="40px" /></td>
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
    
        <table  class="style1">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    Project</td>
                <td>
                    State</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    </td>
                <td class="style7">
                    <asp:DropDownList ID="DDLproject" runat="server" AutoPostBack="True" 
                        Height="22px" Width="226px">
                        <asp:ListItem>select....</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="DDLstate" runat="server" Height="22px" Width="103px" 
                        AutoPostBack="True">
                        <asp:ListItem>Select....</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style7">
                    </td>
                <td class="style8">
                    </td>
                <td class="style7">
                    </td>
                <td class="style7">
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    Designated Site Address</td>
                <td>
                    &nbsp;</td>
                <td>
                    Technician</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2" rowspan="6">
                                    <asp:ListBox ID="Listsiteadd" runat="server" Height="136px" Style="z-index: 100;
                                        left: 400px; position: static; top: 672px" Width="227px"></asp:ListBox>
                </td>
                <td style="text-align: right">
                    Name</td>
                <td align="left">
                    <asp:TextBox ID="Txtname1" runat="server"></asp:TextBox>
                </td>
                <td class="style5">
                    N0. of Days</td>
                <td align="left">
                    <asp:TextBox ID="Txtnday" runat="server" Width="45px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style5">
                    Start Date</td>
                <td align="left">
                    <asp:TextBox ID="Txtstart" runat="server" Width="76px"></asp:TextBox>
                    <asp:Button ID="Btndate" runat="server" Height="20px" Text="...." 
                        Width="30px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td style="text-align: right">
                    Exception</td>
                <td align="left">
                    <asp:DropDownList ID="DDLexcept1" runat="server" AutoPostBack="True" 
                        Height="22px" Width="128px">
                        <asp:ListItem>Select....</asp:ListItem>
                        <asp:ListItem>Accomodation</asp:ListItem>
                        <asp:ListItem>Feeding</asp:ListItem>
                        <asp:ListItem>Local Transport</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:TextBox ID="Txtsstate" runat="server" Height="22px" Visible="False"></asp:TextBox>
                </td>
                <td rowspan="6">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                        ForeColor="#003399" Height="56px" Visible="False" Width="51px">
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                            Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    </asp:Calendar>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td style="text-align: right">
                    Location</td>
                <td align="left">
                    <asp:TextBox ID="Txtlocatn1" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:TextBox ID="Txtspiont" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td style="text-align: right">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td style="text-align: right">
                    Accomodation</td>
                <td align="left">
                    <asp:TextBox ID="Txtaccom1" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    (x Nights)</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    Technician&#39;s code</td>
                <td style="text-align: right">
                    Feeding</td>
                <td align="left">
                    <asp:TextBox ID="Txtfeed1" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    (x Days)</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td align="left" class="style2" rowspan="4">
                    <asp:ListBox ID="Listtecode" runat="server" Height="99px" Width="231px" 
                        AutoPostBack="True">
                    </asp:ListBox>
                </td>
                <td style="text-align: right">
                    Local Transport</td>
                <td align="left">
                    <asp:TextBox ID="Txtltran1" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    (x Days)</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td style="text-align: right">
                    Travel</td>
                <td align="left">
                    <asp:TextBox ID="Txttrav1" runat="server"></asp:TextBox>
                </td>
                <td align="left" class="style4">
                    <asp:TextBox ID="Txttrav2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="Txtlastjob" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style9">
                    (location-to-site)</td>
                <td class="style10">
                    (site-to-base)</td>
                <td>
                    <asp:TextBox ID="Txtreturn" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td style="text-align: right">
                    <asp:Button ID="Btntotal" runat="server" Text="Total" Width="39px" />
                </td>
                <td align="left">
                    <asp:TextBox ID="Txttotal1" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="Txttechlvl" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    <asp:Button ID="Btnre1" runat="server" Text="Submit" Width="128px" />
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td align="left">
                    <asp:TextBox ID="Txtstown" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
    
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Style="font-size: x-small;
                            z-index: 100; left: 40px; color: blue; font-family: tahoma; position: static;
                            top: 856px" Width="368px">** If this is an added page to your role click to return to your defualt home page </asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        &nbsp;</td>
                    <td style="width: 100px">
                        &nbsp;</td>
                    <td style="width: 100px">
                    </td>
                </tr>
            </table>
    
    </div>
    </form>
    </center>
</body>
</html>
