<%@ Page Language="VB" AutoEventWireup="false" CodeFile="surveyreport.aspx.vb" Inherits="surveyreport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Survey Record</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center; background-color: cornflowerblue;">
            <table style="z-index: 100; left: 128px;
                width: 83%; position: static; top: 16px; height: 100%; border-bottom-color: navy; border-bottom-style: none; background-color: white; border-top-style: none; border-right-style: none; border-left-style: none;">
                <tr>
                    <td colspan="3" style="height: 50px">
                        <table style="border-top: thin solid; font-size: small; z-index: 100; left: 168px;
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
                                <td align="right" colspan="1" style="height: 34px">
                                </td>
                                <td align="left" colspan="1" style="height: 34px">
                                </td>
                            </tr>
                            </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 128px">
                        <div style="text-align: center">
                            <div style="text-align: center">
                                <table style="z-index: 100; left: 328px; width: 100%; position: static; top: 384px;
                                    height: 100%; font-size: small; color: navy; font-family: tahoma; border-top-width: thin; border-left-width: thin; border-left-color: maroon; border-bottom-width: thin; border-bottom-color: maroon; border-top-color: maroon; background-color: white; border-right-width: thin; border-right-color: maroon;" id="TABLE1" onclick="return TABLE1_onclick()">
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 104px">
                                        </td>
                                        <td style="width: 124px">
                                        </td>
                                        <td colspan="2">
                                            &nbsp;</td>
                                        <td colspan="1">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="font-weight: bold; font-size: medium; text-transform: capitalize;
                                            color: mintcream; background-color: steelblue">
                                            Record Site Survey</td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: small; color: #3300ff; font-family: tahoma; background-color: white;" colspan="5">
                                            Enter the correct values in order to facilitate efficiency.</td>
                                        <td colspan="1" style="font-size: small; color: #3300ff; font-family: tahoma; background-color: white">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td align="right" style="width: 104px">
                                        </td>
                                        <td style="width: 124px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 24px">
                                        </td>
                                        <td align="right" colspan="2" style="height: 24px">
                                            Technician Id :
                                            <asp:DropDownList ID="DDLtechid" runat="server" Style="z-index: 100; left: 376px;
                                                position: static; top: 272px" AutoPostBack="True">
                                                <asp:ListItem></asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 100px; height: 24px" align="left">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDLtechid"
                                                Display="Dynamic" ErrorMessage="select a Technician's Id" Height="24px" SetFocusOnError="True"
                                                Style="z-index: 100; left: 480px; position: static; top: 275px">*</asp:RequiredFieldValidator></td>
                                        <td style="width: 100px; height: 24px">
                                        </td>
                                        <td style="width: 100px; height: 24px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td align="right" colspan="2">
                                            Project Name :
                                            <asp:DropDownList ID="DDLproname" runat="server" Style="z-index: 100; left: 368px;
                                                position: static; top: 296px" AutoPostBack="True">
                                                <asp:ListItem></asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 100px" align="left">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DDLproname"
                                                Display="Dynamic" ErrorMessage="Required !" SetFocusOnError="True" Style="z-index: 100;
                                                left: 472px; position: static; top: 296px" Width="1px">*</asp:RequiredFieldValidator></td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td colspan="3">
                                            Select the address of the
                                            site the you intend to record</td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 104px">
                                            Address
                                        </td>
                                        <td style="width: 124px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 100px; height: 21px">
                                        </td>
                                        <td colspan="3" rowspan="2" align="right">
                                            <asp:ListBox ID="Listaddress" runat="server" Height="72px" Style="z-index: 100; left: 256px;
                                                position: static; top: 352px" Width="312px" AutoPostBack="True"></asp:ListBox></td>
                                        <td style="width: 100px; height: 21px" align="left">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Listaddress"
                                                ErrorMessage="Required !" Style="z-index: 100; left: 576px; position: static;
                                                top: 352px" Width="1px">*</asp:RequiredFieldValidator></td>
                                        <td align="left" style="width: 100px; height: 21px">
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
                                        <td style="width: 104px">
                                            Findings :</td>
                                        <td style="width: 124px">
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
                                        <td style="width: 104px">
                                        </td>
                                        <td align="right" style="width: 124px">
                                            Site Type&nbsp;
                                        </td>
                                        <td align="left" colspan="2">
                                            <asp:DropDownList ID="DDlsitetype" runat="server" Style="z-index: 100; left: 464px;
                                                position: static; top: 432px" AutoPostBack="True">
                                                <asp:ListItem Selected="True">choose one</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DDlsitetype"
                                                Display="Dynamic" ErrorMessage="Required !" Style="z-index: 100; left: 544px;
                                                position: static; top: 448px" Width="1px">*</asp:RequiredFieldValidator></td>
                                        <td align="left" colspan="1">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 100px">
                                        </td>
                                        <td align="right" colspan="2">
                                            Inverter To Battery&nbsp;</td>
                                        <td align="left" style="width: 100px">
                                            <asp:TextBox ID="Txtbattery" runat="server" Style="z-index: 100; left: 472px; position: static;
                                                top: 416px" Width="40px"></asp:TextBox>
                                            m<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Txtbattery"
                                                ErrorMessage="RangeValidator" MaximumValue="999.999" MinimumValue="000.000" Style="z-index: 100;
                                                left: 632px; position: static; top: 528px" Type="Double">*</asp:RangeValidator></td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td align="right" colspan="2">
                                            Inverter To Power Source</td>
                                        <td align="left" style="width: 100px">
                                            <asp:TextBox ID="Txtpsource" runat="server" Style="z-index: 100; left: 464px; position: static;
                                                top: 448px" Width="40px"></asp:TextBox>
                                            m<asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="Txtpsource"
                                                ErrorMessage="Inverter - power source reading " MaximumValue="999.999" MinimumValue="000.000"
                                                Style="z-index: 100; left: 504px; position: static; top: 576px" Type="Double">*</asp:RangeValidator></td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 19px">
                                        </td>
                                        <td align="right" colspan="2" style="height: 19px">
                                            Inverter To Comms Rack</td>
                                        <td align="left" style="width: 100px; height: 19px">
                                            <asp:TextBox ID="Txtcrack" runat="server" Style="z-index: 100; left: 464px; position: static;
                                                top: 472px" Width="40px"></asp:TextBox>
                                            m<asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="Txtcrack"
                                                ErrorMessage="inverter-comms rack" MaximumValue="999.999" MinimumValue="000.000"
                                                Style="z-index: 100; left: 512px; position: static; top: 608px" Type="Double">*</asp:RangeValidator></td>
                                        <td style="width: 100px; height: 19px">
                                        </td>
                                        <td style="width: 100px; height: 19px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td align="right" colspan="2">
                                            Inverter To ATM</td>
                                        <td align="left" style="width: 100px">
                                            <asp:TextBox ID="Txtatm" runat="server" Style="z-index: 100; left: 464px; position: static;
                                                top: 504px" Width="40px"></asp:TextBox>
                                            m<asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="Txtatm"
                                                ErrorMessage="Inverter-ATM reading" MaximumValue="999.999" MinimumValue="000.000"
                                                Style="z-index: 100; left: 512px; position: static; top: 632px" Type="Double"
                                                Width="16px">*</asp:RangeValidator></td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td align="right" colspan="2">
                                            Earth Bonding</td>
                                        <td align="left" style="width: 100px">
                                            <asp:TextBox ID="Txtebonding" runat="server" Style="z-index: 100; left: 480px; position: static;
                                                top: 528px" Width="40px"></asp:TextBox>
                                            m<asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="Txtebonding"
                                                ErrorMessage="earth bonding reading" MaximumValue="999.999" MinimumValue="000.000"
                                                Style="z-index: 100; left: 504px; position: static; top: 656px" Type="Double">*</asp:RangeValidator></td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td align="right" colspan="2">
                                            Total&nbsp; Load&nbsp; Capacity</td>
                                        <td align="left" colspan="2">
                                            <asp:TextBox ID="TxtTLC" runat="server" Style="z-index: 100; left: 432px; position: static;
                                                top: 608px" Width="40px"></asp:TextBox>
                                            KVA<asp:RangeValidator ID="RangeValidator7" runat="server" ControlToValidate="TxtTLC"
                                                ErrorMessage="earth bonding reading" MaximumValue="999.999" MinimumValue="000.000"
                                                Style="z-index: 100; left: 496px; position: static; top: 616px" Type="Double"
                                                Width="16px">*</asp:RangeValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtTLC"
                                                ErrorMessage="Power Audit required" Style="z-index: 100; left: 520px; position: static;
                                                top: 616px" Width="8px">*</asp:RequiredFieldValidator></td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 104px">
                                        </td>
                                        <td style="width: 124px">
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
                                        <td align="right" colspan="2">
                                            Is Lighting Arrestor Installed ?</td>
                                        <td align="left" colspan="2"><asp:DropDownList ID="DDLarrestor" runat="server" Style="z-index: 100; left: 432px;
                                                position: static; top: 616px" Width="96px">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Yes</asp:ListItem>
                                            <asp:ListItem>No</asp:ListItem>
                                        </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DDLarrestor"
                                                Display="Dynamic" ErrorMessage="is lighting arrestor installed on site" Height="1px"
                                                Style="z-index: 100; left: 528px; position: static; top: 616px">*</asp:RequiredFieldValidator></td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td align="right" colspan="2">
                                            Earth Reading</td>
                                        <td align="left" style="width: 100px">
                                            <asp:TextBox ID="Txtereading" runat="server" Style="z-index: 100; left: 472px; position: static;
                                                top: 608px" Width="40px"></asp:TextBox>
                                            volts<asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="Txtereading"
                                                ErrorMessage="Earth reading " MaximumValue="999.999" MinimumValue="000.000" Style="z-index: 100;
                                                left: 512px; position: static; top: 736px" Type="Double">*</asp:RangeValidator></td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td align="right" colspan="2">
                                            Should implementation proceed ?</td>
                                        <td align="left" colspan="2">
                                            <asp:DropDownList ID="DDLstatus" runat="server" Style="z-index: 100; left: 432px;
                                                position: static; top: 712px" Width="96px">
                                                <asp:ListItem>choose one</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DDLstatus"
                                                ErrorMessage="Required !" Style="z-index: 100; left: 528px; position: static;
                                                top: 720px" Width="16px">*</asp:RequiredFieldValidator></td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td align="right" colspan="2">
                                        </td>
                                        <td align="left" colspan="2">
                                            (if No give reason below)&nbsp;</td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            Challenges \ Issues</td>
                                        <td style="width: 124px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:TextBox ID="Txtsitecode" runat="server" Style="z-index: 100; left: 416px; position: static;
                                                top: 616px" Visible="False" Width="88px"></asp:TextBox></td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 17px">
                                        </td>
                                        <td colspan="3" rowspan="2">
                                            <asp:TextBox ID="Txtissues" runat="server" Height="72px" Style="z-index: 100; left: 272px;
                                                position: static; top: 664px" TextMode="MultiLine" Width="320px"></asp:TextBox></td>
                                        <td style="width: 100px; height: 17px">
                                        </td>
                                        <td style="width: 100px; height: 17px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 21px">
                                        </td>
                                        <td style="width: 100px; height: 21px">
                                        </td>
                                        <td style="width: 100px; height: 21px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td align="left" colspan="2">
                                            <asp:Button ID="Btnsub" runat="server" Style="z-index: 100; left: 288px; position: static;
                                                top: 752px" Text="Submit" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" />
                                            <asp:Button ID="Button2" runat="server" Style="z-index: 100;
                                                    left: 368px; position: static; top: 760px" Text="Reset" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" />
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
                                        <td align="left" colspan="4">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Style="z-index: 100;
                                                left: 224px; position: static; top: 872px" Width="256px" />
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 104px">
                                        </td>
                                        <td style="width: 124px">
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
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="width: 2px">
                    </td>
                    <td align="right" colspan="2" style="width: 636px">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Style="font-size: x-small;
                            z-index: 100; left: 168px; color: blue; font-family: tahoma; position: static;
                            top: 880px" Width="368px">** If this is an added page to your role click to return to your defualt home page </asp:LinkButton></td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
