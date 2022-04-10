<%@ Page Language="VB" AutoEventWireup="false" CodeFile="supporttec.aspx.vb" Inherits="supporttech" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Appoint Technician</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            &nbsp;<table style="border: thin solid orangered; z-index: 100; left: 128px; width: 95%; position: static; top: 0px;
                height: 100%; ">
                <tr>
                    <td style="height: 53px" colspan="3">
                        <table style="border-top: thin solid; font-size: small; z-index: 100; left: 168px;
                            width: 100%; font-family: tahoma; position: static; top: 32px; height: 100%">
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
                                        PostBackUrl="~/Survey_assign.aspx" Style="z-index: 100; left: 232px; position: static;
                                        top: 40px" ToolTip="Support Technician" Width="40px" /></td>
                                <td align="left" style="width: 35px">
                                    <asp:ImageButton ID="ImageButton5" runat="server" Height="40px" ImageUrl="~/images/mailbtn.jpg"
                                        PostBackUrl="~/Sup_bill_mail.aspx" Style="z-index: 100; left: 440px; position: static;
                                        top: 40px" Width="40px" /></td>
                                <td align="left" style="width: 85px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/reportbtn.jpg"
                                        Style="z-index: 100; left: 344px; position: static; top: 64px" Width="40px" /></td>
                                <td align="left" style="width: 100px">
                                    <asp:ImageButton ID="ImageButton6" runat="server" CausesValidation="False" ImageUrl="~/images/printer.gif"
                                        PostBackUrl="~/suprint.aspx" Style="z-index: 100; left: 400px; position: static;
                                        top: 64px" ToolTip="Print Support Tickets" Width="40px" /></td>
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
                                        ForeColor="#284E98" StaticSubMenuIndent="10px" Height="19px">
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
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div style="text-align: center">
                            <table style="font-size: small; z-index: 100; left: 168px; width: 100%; color: orangered;
                                font-family: tahoma; position: static; top: 248px; height: 100%">
                                <tr>
                                    <td style="width: 111px">
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
                                    <td style="font-weight: bold; font-size: medium; color: white; font-family: tahoma; background-color: orangered;" colspan="6">
                                        Assign Site To Technician</td>
                                </tr>
                                <tr>
                                    <td style="width: 111px">
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
                                    <td style="width: 111px">
                                    </td>
                                    <td style="width: 100px">
                                        Site Code</td>
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
                                    <td style="width: 111px">
                                    </td>
                                    <td rowspan="15" style="width: 100px">
                                        <asp:ListBox ID="Listsite" runat="server" AutoPostBack="True" Height="504px" Style="z-index: 100;
                                            left: 264px; position: static; top: 120px" Width="120px"></asp:ListBox></td>
                                    <td align="right" colspan="2">
                                        Address :</td>
                                    <td rowspan="2" style="width: 100px">
                                        <asp:TextBox ID="Txtaddress" runat="server" Height="56px" Style="z-index: 100; left: 472px;
                                            position: static; top: 152px" TextMode="MultiLine"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 111px; height: 31px">
                                    </td>
                                    <td style="width: 100px; height: 31px" align="left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Listsite"
                                            ErrorMessage="Select a site code" Style="z-index: 100; left: 344px; position: static;
                                            top: 176px" Width="8px">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td align="left" style="width: 100px; height: 31px">
                                    </td>
                                    <td style="width: 100px; height: 31px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 111px">
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
                                    <td style="width: 111px">
                                    </td>
                                    <td align="right" colspan="2">
                                        Complaint :</td>
                                    <td rowspan="2" style="width: 100px">
                                        <asp:TextBox ID="Txtcomplaint" runat="server" Height="40px" Style="z-index: 100;
                                            left: 424px; position: static; top: 240px" TextMode="MultiLine" Width="176px"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 111px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 111px">
                                    </td>
                                    <td align="right" colspan="2">
                                        Service Start :</td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="Txtserstart" runat="server" Style="z-index: 100; left: 424px; position: static;
                                            top: 280px" Width="72px"></asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="z-index: 102; left: 504px;
                                            position: static; top: 280px" Text=". . ." CausesValidation="False" Width="24px" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtserstart"
                                            ErrorMessage="click the button to select the start date" Style="z-index: 100;
                                            left: 528px; position: static; top: 304px" Width="1px">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td style="width: 111px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        </td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="OrangeRed"
                                            BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                                            Font-Size="8pt" ForeColor="OrangeRed" Height="1px" Style="z-index: 100; left: 480px;
                                            position: static; top: 320px" Visible="False" Width="48px">
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
                                </tr>
                                <tr>
                                    <td style="width: 111px">
                                    </td>
                                    <td align="right" colspan="2">
                                        Technician's Id :</td>
                                    <td align="left" style="width: 100px">
                                        <asp:DropDownList ID="DDLtech" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 424px; position: static; top: 464px">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDLtech"
                                            ErrorMessage="select a tecnhnician" Style="z-index: 102; left: 440px; position: static;
                                            top: 472px" Width="1px">*</asp:RequiredFieldValidator></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 111px">
                                    </td>
                                    <td align="right" colspan="2">
                                        Location :</td>
                                    <td align="left" style="width: 100px">
                                        <asp:Label ID="lbllocatn" runat="server" Style="z-index: 100; left: 424px; position: static;
                                            top: 496px" Width="64px"></asp:Label></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 111px">
                                    </td>
                                    <td align="right" colspan="2">
                                        Distance :</td>
                                    <td style="width: 100px" align="left">
                                        <asp:Label ID="Lbldist" runat="server" Style="z-index: 100; left: 424px; position: static;
                                            top: 584px" Width="64px"></asp:Label></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 111px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        </td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                        </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 111px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 111px">
                                    </td>
                                    <td align="right" colspan="2">
                                        Duration :</td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtnday" runat="server" Style="z-index: 100; left: 432px; position: static;
                                            top: 616px" Width="40px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txtnday"
                                            Display="Dynamic" ErrorMessage="Enter the duration the service " Style="z-index: 100;
                                            left: 464px; position: static; top: 616px" Width="1px">*</asp:RequiredFieldValidator>&nbsp;</td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 111px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" colspan="3">
                                    <asp:Button
                                                ID="Button2" runat="server" Style="z-index: 100; left: 432px; position: static;
                                                top: 656px; font-weight: bold; font-size: small; color: white; background-color: orangered;" Text="Submit" BorderStyle="None" />
                                        </td>
                                </tr>
                                <tr>
                                    <td style="width: 111px">
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
                                    <td style="width: 111px">
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
                                    <td style="width: 111px">
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
