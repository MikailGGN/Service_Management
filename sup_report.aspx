<%@ Page Language="VB" AutoEventWireup="false" CodeFile="sup_report.aspx.vb" Inherits="sup_report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Support Feedback</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <div style="text-align: center">
                <table style="z-index: 100; left: 184px; width: 88%; position: static; top: 40px;
                    height: 100%">
                    <tr>
                        <td colspan="3">
                            <table style="border-top: thin solid; font-size: small; z-index: 100; left: 168px;
                                width: 100%; font-family: tahoma; position: static; top: 24px; height: 100%">
                                <tr>
                                    <td align="left" style="width: 19px">
                                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 112px; position: static;
                                            top: 40px; height: 16px" /></td>
                                    <td align="center" colspan="11">
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
                                            PostBackUrl="~/support_home.aspx" Style="z-index: 100; left: 152px; position: static;
                                            top: 80px" ToolTip="Home page" Width="40px" /></td>
                                    <td align="left" style="width: 41px">
                                        <asp:ImageButton ID="ImageButton3" runat="server" Height="40px" ImageUrl="~/images/techbtn.jpg"
                                            PostBackUrl="~/supporttech.aspx" Style="z-index: 100; left: 232px; position: static;
                                            top: 40px" ToolTip="Support Technician" Width="40px" /></td>
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
                                    <td align="right" colspan="11" style="height: 34px">
                                        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Style="z-index: 100;
                                            left: 616px; position: static; top: 88px" BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px">
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
                                            <StaticSelectedStyle BackColor="#FFCC66" />
                                            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                                            <DynamicMenuStyle BackColor="#FFFBD6" />
                                            <DynamicSelectedStyle BackColor="#FFCC66" />
                                            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                                        </asp:Menu>
                                    <asp:Menu ID="Menu3" runat="server" Font-Bold="False" Orientation="Horizontal" Style="z-index: 100;
                                        left: 520px; position: static; top: 104px" BackColor="White" 
                                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                                        ForeColor="#284E98" StaticSubMenuIndent="10px">
                                        <Items>
                                            <asp:MenuItem Text="Links" ToolTip="Site Support Services" Value="Support">
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
                                    </td>
                                    <td align="left" colspan="1" style="height: 34px">
                                    </td>
                                    <td align="left" colspan="1" style="height: 34px">
                                    </td>
                                </tr>
                                </table>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div style="text-align: center">
                                <table style="z-index: 100; left: 160px; width: 100%; position: static; top: 256px;
                                    height: 100%; border-right: orangered thin solid; border-top: orangered thin solid; font-size: small; border-left: orangered thin solid; color: orangered; border-bottom: orangered thin solid; font-family: tahoma;">
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
                                        <td colspan="5" style="font-weight: bold; font-size: medium; color: white; font-family: tahoma; background-color: orangered;">
                                            Technician's Report</td>
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
                                        <td align="right" colspan="2">
                                            Technician's Id</td>
                                        <td align="left" style="width: 100px">
                                            <asp:DropDownList ID="DDLtecid" runat="server" Style="z-index: 100; left: 368px;
                                                position: static; top: 64px" AutoPostBack="True" BackColor="Transparent">
                                                <asp:ListItem></asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 100px">
                                        </td>
                                        <td align="right" style="width: 100px">
                                        </td>
                                        <td align="left" style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 100px">
                                        </td>
                                        <td align="right" style="width: 100px">
                                            Site Code</td>
                                        <td align="left" style="width: 100px">
                                            <asp:DropDownList ID="DDLsite" runat="server" Style="z-index: 100; left: 360px;
                                                position: static; top: 96px" AutoPostBack="True">
                                                <asp:ListItem></asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            Work Category</td>
                                        <td align="left" style="width: 100px">
                                            <asp:TextBox ID="Txtwcategory" runat="server" Style="z-index: 100; left: 328px; position: static;
                                                top: 136px"></asp:TextBox></td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            Equipment Service N0.</td>
                                        <td align="left" style="width: 100px">
                                            <asp:TextBox ID="TxtequipN0" runat="server" Style="z-index: 100; left: 344px; position: static;
                                                top: 144px" Width="72px"></asp:TextBox></td>
                                        <td align="right" style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            Equipment Type</td>
                                        <td align="left" style="width: 100px">
                                            <asp:TextBox ID="Txtequip" runat="server" Style="z-index: 100; left: 360px; position: static;
                                                top: 168px"></asp:TextBox></td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 100px">
                                            &nbsp;</td>
                                        <td align="right" style="width: 100px">
                                            Problem</td>
                                        <td align="left" colspan="2" rowspan="2">
                                            <asp:TextBox ID="Txtproblem" runat="server" Height="56px" Style="z-index: 100; left: 344px;
                                                position: static; top: 200px" TextMode="MultiLine" Width="248px"></asp:TextBox></td>
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
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            &nbsp;Task performed</td>
                                        <td align="left" colspan="2" rowspan="3">
                                            <asp:TextBox ID="Txttask" runat="server" Height="72px" Style="z-index: 100; left: 328px;
                                                position: static; top: 328px" TextMode="MultiLine" Width="248px"></asp:TextBox></td>
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
                                        <td align="right" colspan="2">
                                            Contact Name</td>
                                        <td align="left" colspan="2">
                                            <asp:TextBox ID="Txtcname" runat="server" Style="z-index: 100; left: 328px; position: static;
                                                top: 400px" ReadOnly="True"></asp:TextBox><asp:Button ID="Btncontact" runat="server" Style="z-index: 100; left: 504px; position: static;
                                                top: 400px" Text="X" BackColor="OrangeRed" BorderStyle="None" Font-Bold="True" ForeColor="White" /></td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            Customer Remark</td>
                                        <td align="left" style="width: 100px">
                                            <asp:DropDownList ID="DDLcrmk" runat="server" Style="z-index: 100; left: 328px; position: static;
                                                top: 408px" AutoPostBack="True">
                                                <asp:ListItem>Choose one</asp:ListItem>
                                                <asp:ListItem>Satifactory</asp:ListItem>
                                                <asp:ListItem>Unsatifactory</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 100px">
                                        </td>
                                        <td align="right" style="width: 100px">
                                            Date Resolved
                                        </td>
                                        <td align="left" colspan="2">
                                            <asp:TextBox ID="Txtresvdate" runat="server" Style="z-index: 100; left: 336px; position: static;
                                                top: 432px" Width="88px"></asp:TextBox>
                                            <asp:Button ID="Btndate" runat="server" Style="z-index: 100; left: 448px; position: static;
                                                top: 432px" Text="..." BackColor="OrangeRed" BorderStyle="None" /></td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 100px">
                                        </td>
                                        <td align="right" style="width: 100px">
                                        </td>
                                        <td align="left" style="width: 100px">
                                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
                                                BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                                                Font-Size="8pt" ForeColor="#003399" Height="112px" Style="z-index: 100; left: 328px;
                                                position: static; top: 464px" Width="152px" Visible="False">
                                                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                                <WeekendDayStyle BackColor="#CCCCFF" />
                                                <OtherMonthDayStyle ForeColor="#999999" />
                                                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                                                    Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                            </asp:Calendar>
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 100px">
                                        </td>
                                        <td align="right" style="width: 100px">
                                        </td>
                                        <td align="left" style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 100px">
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
                                        <td align="right" style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td align="left" colspan="2">
                                            <asp:Button ID="Btnsub" runat="server" Style="z-index: 100; left: 424px; position: static;
                                                top: 720px" Text="Submit" Width="56px" BackColor="OrangeRed" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                                            <asp:Button ID="Btnreset" runat="server" Style="z-index: 100; left: 488px; position: static;
                                                top: 720px" Text="Reset" BackColor="OrangeRed" BorderColor="White" BorderStyle="None" Font-Bold="True" ForeColor="White" /></td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 100px; height: 21px;">
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
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 357px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
