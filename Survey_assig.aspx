<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Survey_assig.aspx.vb" Inherits="Survey_assign" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Assign Technician to Survey Site</title>
</head>
<body >
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center; background-color: cornflowerblue;">
            <table style="z-index: 100; left: 0px; width: 60%; position: static; top: 0px; height: 100%; background-color: white;">
                <tr>
                    <td style="height: 50px" colspan="3">
                        <table style="border-top: thin solid; font-size: small; z-index: 100; left: 160px;
                            width: 100%; font-family: tahoma; position: static; top: 16px; height: 100%">
                            <tr>
                                <td align="left" style="width: 19px">
                                    <img src="images/inlakslogo.gif" style="z-index: 100; left: 112px; position: static;
                                        top: 40px; height: 16px" /></td>
                                <td align="center" colspan="13">
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
                                <td align="left" style="width: 36px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/reportbtn.jpg"
                                        Style="z-index: 100; left: 344px; position: static; top: 64px" Width="40px" CausesValidation="False" /></td>
                                <td align="left" style="width: 82px">
                                    <asp:ImageButton ID="ImageButton6" runat="server" CausesValidation="False" ImageUrl="~/images/printer.gif"
                                        PostBackUrl="~/print_tech_allocatn.aspx" Style="z-index: 100; left: 448px; position: static;
                                        top: 48px" ToolTip="Print Survey Tickets" Width="40px"/></td>
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
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="1" style="width: 19px; height: 9px">
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                                        left: 136px; position: static; top: 120px" Width="48px">Logout</asp:HyperLink><br />
                                    <br />
                                </td>
                                <td align="right" colspan="13" rowspan="1" style="height: 9px">
                                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Style="z-index: 100;
                                        left: 448px; position: static; top: 136px" BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
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
                                <td align="left" colspan="1" rowspan="1" style="height: 9px">
                                </td>
                                <td align="left" colspan="1" rowspan="1" style="height: 9px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <table style="font-size: small;
                            z-index: 100; left: 160px; width: 100%; color: navy; position: static; top: 392px; height: 100%; background-color: white; font-family: tahoma; border-right: cornflowerblue thin solid; border-top: cornflowerblue thin solid; border-left: cornflowerblue thin solid; border-bottom: cornflowerblue thin solid;">
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 70px">
                                </td>
                                <td style="width: 42px">
                                </td>
                                <td style="width: 447px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" style="font-weight: bold; font-size: medium; color: mintcream; font-family: verdana;
                                    background-color: cornflowerblue">
                                    Assign Sites To Technician's To Survey</td>
                            </tr>
                            <tr>
                                <td colspan="5" style="height: 149px">
                                    <div style="text-align: center">
                                        <table style="z-index: 100; left: 168px;
                                            width: 100%; position: static; top: 256px; height: 100%; font-size: small; color: navy; font-family: tahoma; border-right: cornflowerblue thin inset; border-top: cornflowerblue thin inset; border-left: cornflowerblue thin inset; border-bottom: cornflowerblue thin inset;">
                                            <tr>
                                                <td colspan="3" style="font-weight: bold; font-size: medium; color: navy; font-family: tahoma;">
                                                    Project Information</td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 100px">
                                                    Name</td>
                                                <td align="left" colspan="2">
                                                    <asp:DropDownList ID="ddlpname" runat="server" AutoPostBack="True" DataTextField="projectname"
                                                        DataValueField="projectname" Style="z-index: 100; left: 336px; position: static;
                                                        top: 272px" Width="104px">
                                                        <asp:ListItem>choose one</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlpname"
                                                        Display="Dynamic" ErrorMessage="Select the Project Name" Style="z-index: 100;
                                                        left: 376px; position: static; top: 304px">*</asp:RequiredFieldValidator></td>
                                            </tr>
                                            <tr style="color: #800000">
                                                <td align="right" style="width: 100px; color: navy; font-family: tahoma;">
                                                    Description</td>
                                                <td align="left" rowspan="3" style="width: 100px">
                                                    <asp:TextBox ID="Txtdesc" runat="server" Height="64px" Style="z-index: 100; left: 328px;
                                                        position: static; top: 312px" Width="264px" TextMode="MultiLine"></asp:TextBox></td>
                                                <td style="width: 100px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px; height: 21px">
                                                </td>
                                                <td style="width: 100px; height: 21px">
                                                </td>
                                            </tr>
                                            <tr>
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
                                <td colspan="5">
                                    <div style="text-align: center">
                                        <table style="z-index: 100; left: 168px;
                                            width: 100%; position: static; top: 392px; height: 100%; color: navy; font-family: tahoma; border-right: cornflowerblue thin outset; border-top: cornflowerblue thin outset; border-left: cornflowerblue thin outset; border-bottom: cornflowerblue thin outset;">
                                            <tr>
                                                <td colspan="3" style="font-weight: bold; font-size: medium; color: navy; font-family: tahoma;">
                                                    Technician Information</td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 99px">
                                                    Identity&nbsp;</td>
                                                <td align="left" colspan="2">
                                                    <asp:DropDownList ID="ddltech" runat="server" AutoPostBack="True" EnableTheming="True"
                                                        Style="z-index: 100; left: 336px; position: static; top: 424px">
                                                        <asp:ListItem>choose one</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddltech"
                                                        Display="Dynamic" ErrorMessage="Select the technician Id" Style="z-index: 100;
                                                        left: 408px; position: static; top: 448px">*</asp:RequiredFieldValidator></td>
                                            </tr>
                                            <tr style="color: #800000">
                                                <td align="right" style="width: 99px; color: navy; font-family: times new roman;">
                                                    Present Location</td>
                                                <td align="left" colspan="2">
                                                    <asp:TextBox ID="Txtplocatn" runat="server" AutoPostBack="True" ReadOnly="True" Style="z-index: 100;
                                                        left: 344px; position: static; top: 448px"></asp:TextBox>&nbsp;</td>
                                            </tr>
                                            <tr style="color: #800000">
                                                <td align="right" style="width: 99px; color: navy; font-family: times new roman">
                                                    Job at&nbsp; hand closes</td>
                                                <td align="left" colspan="2">
                                                    <asp:TextBox ID="Txtcdate" runat="server" Style="z-index: 100; left: 272px; position: static;
                                                        top: 400px"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" style="font-weight: bold; font-size: medium; color: navy; font-family: tahoma; height: 21px;">
                                    Survey Information</td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 70px">
                                </td>
                                <td style="width: 42px">
                                </td>
                                <td style="width: 447px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td align="left" colspan="3">
                                    Click the "Anticipated Destination" to view the states, select a state to populated
                                    address, Click the button "..." to invoke a calender select the date the survey
                                    will start , Enter the number of days intended for the survey and Click Allocate.</td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="5">
                                    <asp:Button ID="Btnstate" runat="server" BackColor="CornflowerBlue" BorderStyle="Groove"
                                        CausesValidation="False" ForeColor="White" Style="z-index: 100; left: 464px;
                                        position: static; top: 576px" Text="Anticipated Destination" /></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 70px">
                                </td>
                                <td style="width: 42px">
                                </td>
                                <td style="width: 447px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 12px">
                                </td>
                                <td colspan="2" style="height: 12px">
                                    &nbsp;
                                    Site : State &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                    Address<asp:RequiredFieldValidator
                                        ID="RequiredFieldValidator5" runat="server" ControlToValidate="Listsiteadd" Display="Dynamic"
                                        ErrorMessage="Select the Site address " Style="z-index: 100; left: 352px; position: static;
                                        top: 696px" Width="16px">*</asp:RequiredFieldValidator>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                </td>
                                <td align="right" style="width: 447px; height: 12px">
                                    </td>
                                <td style="width: 100px; height: 12px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 5px">
                                </td>
                                <td rowspan="10" style="width: 70px">
                                    <asp:ListBox ID="Listsite" runat="server" AutoPostBack="True" Height="312px" Style="z-index: 100;
                                        left: 264px; position: static; top: 656px" Width="128px"></asp:ListBox></td>
                                <td rowspan="6" style="width: 42px">
                                    <asp:ListBox ID="Listsiteadd" runat="server" Height="192px" Style="z-index: 100;
                                        left: 400px; position: static; top: 672px" Width="208px"></asp:ListBox></td>
                                <td align="left" colspan="2" rowspan="6">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 6px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 18px">
                                </td>
                                <td align="left" colspan="2" style="height: 18px">
                                    Job Start :
                                    <asp:TextBox ID="Txtjobstart" runat="server" Style="z-index: 100; left: 360px; position: static;
                                        top: 776px" Width="72px"></asp:TextBox>
                                    <asp:Button ID="Btndate" runat="server" CausesValidation="False" Font-Bold="True"
                                        Font-Names="Arial Black" ForeColor="White" Style="z-index: 100; left: 440px;
                                        position: static; top: 784px" Text="..." BackColor="CornflowerBlue" BorderStyle="None" Height="24px" Width="16px" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txtjobstart"
                                        Display="Dynamic" ErrorMessage="Select the Date the survey will start" Style="z-index: 102;
                                        left: 448px; position: static; top: 784px" Width="8px" Height="24px">*</asp:RequiredFieldValidator></td>
                                <td style="width: 100px; height: 18px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 17px">
                                </td>
                                <td align="left" colspan="2" style="height: 17px">
                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
                                        BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                                        ForeColor="#003399" Height="104px" Style="z-index: 100; left: 344px;
                                        position: static; top: 824px" Visible="False" Width="176px" CellPadding="1">
                                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                        <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                                        <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
                                            <WeekendDayStyle BackColor="#CCCCFF" />
                                    </asp:Calendar>
                                </td>
                                <td style="width: 100px; height: 17px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 17px">
                                </td>
                                <td align="left" colspan="2" style="height: 17px">
                                    Distance :
                                    <asp:TextBox ID="Txtdist" runat="server" Style="z-index: 100; left: 304px; position: static;
                                        top: 776px" Width="88px" ReadOnly="True"></asp:TextBox>
                                    (Between the states in 0,000km)</td>
                                <td style="width: 100px; height: 17px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 17px">
                                </td>
                                <td align="left" colspan="2" style="height: 17px">
                                    N0. of Day:
                                    <asp:TextBox ID="Txtnday" runat="server" Style="z-index: 100; left: 376px; position: static;
                                        top: 792px" Width="40px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtnday"
                                        Display="Dynamic" ErrorMessage="Enter the anticipated N0. of Days " Style="z-index: 100;
                                        left: 376px; position: static; top: 984px">*</asp:RequiredFieldValidator>
                                    <asp:Button ID="Btnallocat" runat="server" BackColor="CornflowerBlue" BorderStyle="Groove"
                                        ForeColor="#FFFFC0" Style="z-index: 100; left: 368px; position: static; top: 808px"
                                        Text="Allocate" /></td>
                                <td style="width: 100px; height: 17px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 70px">
                                </td>
                                <td style="width: 42px" align="right">
                                    &nbsp;</td>
                                <td style="width: 447px">
                                    <asp:Button ID="Button3" runat="server" BackColor="CornflowerBlue" BorderStyle="None"
                                        ForeColor="White" Style="z-index: 100; left: 496px; position: static; top: 824px"
                                        Text="Reset" CausesValidation="False" /></td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 70px">
                                </td>
                                <td style="width: 42px">
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Style="z-index: 100;
                                        left: 320px; position: static; top: 976px" Width="184px" />
                                </td>
                                <td style="width: 447px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 70px">
                                </td>
                                <td style="width: 42px">
                                </td>
                                <td style="width: 447px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: normal; font-size: x-small; color: blue; font-family: tahoma;" align="right" colspan="3">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Style="z-index: 100;
                            left: 328px; position: static; top: 1272px" Width="368px">** If this is an added page to your role click to return to your defualt home page </asp:LinkButton>
                        &nbsp;</td>
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
