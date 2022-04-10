<%@ Page Language="VB" AutoEventWireup="false" CodeFile="techform.aspx.vb" Inherits="techform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Technician's Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center; background-color: #ffffff;">
            <table style="z-index: 100; left: 200px; width: 60%; position: static; top: 80px;
                height: 100%; border-right: blue thin solid; border-top: blue thin solid; border-left: blue thin solid; border-bottom: blue thin solid; font-family: tahoma;">
                <tr>
                    <td style="width: 100px;">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 72px; position: static;
                            top: 16px; height: 16px" /></td>
                    <td style="font-size: small; font-family: tahoma;" colspan="2">
                        Inverter Implementation And Support Services</td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td colspan="2">
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <table id="TABLE1" onclick="return TABLE1_onclick()" style="font-size: small; z-index: 100;
                            left: 72px; width: 100%; position: static; top: 64px; height: 100%">
                            <tr>
                                <td align="right" style="width: 30px; height: 20px">
                                    <asp:Menu ID="Menu2" runat="server" Font-Bold="True" Orientation="Horizontal"
                                        Style="z-index: 100; left: 552px; position: static; top: 104px" 
                                        BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" 
                                        Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
                                        <Items>
                                            <asp:MenuItem Text="Implementation" Value="Implementation">
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
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                                        left: 48px; position: static; top: 120px" Width="48px">Logout</asp:HyperLink>
                                </td>
                                <td align="left" style="width: 20px; height: 20px">
                                    <asp:Menu ID="Menu3" runat="server" Font-Bold="True" Orientation="Horizontal" Style="z-index: 100;
                                        left: 520px; position: static; top: 104px" 
                                        BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" 
                                        Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
                                        <Items>
                                            <asp:MenuItem Text="Support" ToolTip="Site Support Services" Value="Support">
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
                                    <br />
                                </td>
                                <td align="left" style="width: 90px; height: 20px">
                                    <asp:Menu ID="Menu6" runat="server" Font-Bold="True" Orientation="Horizontal" Style="z-index: 100;
                                        left: 568px; position: static; top: 112px" BackColor="#B5C7DE" 
                                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                                        ForeColor="#284E98" StaticSubMenuIndent="10px" Width="50px">
                                        <Items>
                                            <asp:MenuItem Text="Equipment Handling" ToolTip="Materials request and supply " 
                                                Value="Equipment Handling">
                                                <asp:MenuItem NavigateUrl="~/Deliveryprocess.aspx" Text="Delivery " ToolTip="Materials Delivery"
                                                    Value="Delivery And Transfer"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/haulerinfo.aspx" Text="Hauler's Registration" ToolTip="materials released from store"
                                                    Value="Store Supplies"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/Transfer.aspx" Text="Transfers" Value="Transfers">
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
                                    <br />
                                </td>
                                <td style="width: 100px; height: 20px">
                                    <asp:Menu ID="Menu5" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                        Font-Bold="True" Font-Names="Tahoma" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
                                        StaticSubMenuIndent="10px" Style="z-index: 100; left: 480px; position: static;
                                        top: 56px" Target="_blank">
                                        <StaticSelectedStyle BackColor="#507CD1" />
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <DynamicMenuStyle BackColor="#B5C7DE" />
                                        <DynamicSelectedStyle BackColor="#507CD1" />
                                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <Items>
                                            <asp:MenuItem Text="General Operations" ToolTip="Quality Assurance " Value="General Operations">
                                                <asp:MenuItem NavigateUrl="~/qc_assign.aspx" Text="Quality Assurance" ToolTip="Assign a person for Quality Assurance"
                                                    Value="Quality Assurance">
                                                    <asp:MenuItem Text="Feedback" Value="Feedback" NavigateUrl="~/feedback.aspx"></asp:MenuItem>
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/store_workshop.aspx" Text="Workshop"
                                                    ToolTip="workshop" Value="Workshop"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/adminref.aspx" Text="Operations" ToolTip="technician operations"
                                                    Value="Operations"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/Map.aspx" Text="Technician Location" ToolTip="Map View"
                                                    Value="Technician Location"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </Items>
                                    </asp:Menu>
                                    <br />
                                </td>
                                <td style="width: 100px; height: 20px">
                                    &nbsp;<asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" BorderStyle="Groove"
                                        DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Tahoma" Font-Size="0.8em"
                                        ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px" Style="z-index: 100;
                                        left: 576px; position: static; top: 80px">
                                        <StaticSelectedStyle BackColor="#507CD1" />
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <DynamicMenuStyle BackColor="#B5C7DE" />
                                        <DynamicSelectedStyle BackColor="#507CD1" />
                                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <Items>
                                            <asp:MenuItem Selectable="False" Text="Control Panel" Value="Control Panel">
                                                <asp:MenuItem NavigateUrl="~/userrecord.aspx" Text="Accessibility" Value="Accessibility">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/code_builder.aspx" Text="Code Index"
                                                    Value="Code Index"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/set_cost.aspx" Text="Cost Indexes" Value="Cost Indexes">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/changepassword.aspx" Text="Users Information" Value="Users Information">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/techrec.aspx" Text="Technician's Record" Value="Technician's Record">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/techform.aspx" Text="Technician's Registration form"
                                                    ToolTip="Registration form" Value="Technicians Record"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </Items>
                                    </asp:Menu>
                                    <br />
                                    <br />
                                </td>
                                <td style="width: 100px; height: 20px">
                                </td>
                                <td style="width: 100px; height: 20px">
                                </td>
                                <td style="width: 100px; height: 20px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        <table style="z-index: 100; left: 320px; position: static; top: 392px; font-size: small; color: navy; font-family: tahoma; background-color: white;">
                            <tr>
                                <td align="center" colspan="5" style="font-weight: bold; font-size: medium; text-transform: capitalize;
                                    color: mintcream; border-bottom: navy thin solid; font-family: tahoma;
                                    background-color: cornflowerblue">
                                    Technician's Registration Form
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="3" style="height: 13px">
                                </td>
                                <td style="width: 79px; height: 13px">
                                </td>
                                <td style="width: 800px; height: 13px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="3" style="height: 13px">
                                    <asp:Label ID="Label1" runat="server" Height="16px" Style="z-index: 100; left: 96px;
                                        position: static; top: 72px" Text="Note save the picture with the technician's Id."
                                        Width="440px"></asp:Label></td>
                                <td style="width: 79px; height: 13px;">
                                </td>
                                <td style="width: 800px; height: 13px;">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    Attach Picture</td>
                                <td align="left" colspan="3" style="font-size: x-small">
                                    <asp:FileUpload ID="Fupic" runat="server" Style="z-index: 100; left: 176px; position: static;
                                        top: 80px" ToolTip="Ensure the picture is saved with the technician's id " />
                                    ensure the file is save with Technician's Id</td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                </td>
                                <td align="left" colspan="3" style="font-size: x-small">
                                    "120px by 120px , .jpg extension"
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    Technician's Id</td>
                                <td style="width: 135px">
                                    <asp:TextBox ID="txtTechid" runat="server" Style="z-index: 100; left: 168px; position: static;
                                        top: 72px"></asp:TextBox></td>
                                <td align="right" style="width: 94px">
                                </td>
                                <td style="width: 79px">
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                </td>
                                <td style="width: 135px">
                                </td>
                                <td align="right" style="width: 94px">
                                </td>
                                <td style="width: 79px">
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    Surname</td>
                                <td colspan="2" align="left">
                                    <asp:TextBox ID="Txtsname" runat="server" Style="z-index: 100; left: 248px; position: static;
                                        top: 72px" Width="208px"></asp:TextBox>&nbsp;
                                </td>
                                <td style="width: 79px">
                                    </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    Firstname</td>
                                <td style="width: 135px">
                                    <asp:TextBox ID="Txtfname" runat="server" Style="z-index: 100; left: 312px; position: static;
                                        top: 224px" Width="208px"></asp:TextBox></td>
                                <td style="width: 94px">
                                </td>
                                <td style="width: 79px">
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    </td>
                                <td colspan="2">
                                </td>
                                <td style="width: 79px">
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px; height: 20px">
                                    Address :
                                    Current</td>
                                <td align="left" colspan="2" style="height: 20px">
                                    <asp:TextBox ID="Txtcurrentadd" runat="server" Style="z-index: 100; left: 176px;
                                        position: static; top: 136px" Width="256px"></asp:TextBox></td>
                                <td style="width: 79px; height: 20px">
                                </td>
                                <td style="width: 800px; height: 20px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    Permanent</td>
                                <td align="left" colspan="2">
                                    <asp:TextBox ID="Txtpaddress" runat="server" Style="z-index: 100; left: 176px; position: static;
                                        top: 168px" Width="256px"></asp:TextBox></td>
                                <td style="width: 79px">
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    Telephone</td>
                                <td align="left" style="width: 135px">
                                    <asp:TextBox ID="Txtphone" runat="server" Style="z-index: 100; left: 352px; position: static;
                                        top: 320px"></asp:TextBox></td>
                                <td style="width: 94px">
                                </td>
                                <td style="width: 79px">
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    </td>
                                <td align="left" colspan="2">
                                    </td>
                                <td style="width: 79px">
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px; height: 11px">
                                    Mobile</td>
                                <td align="left" colspan="3" style="height: 11px">
                                    <asp:TextBox ID="Txttelephone" runat="server" Style="z-index: 100; left: 328px; position: static;
                                        top: 216px" Width="152px"></asp:TextBox>&nbsp; Age
                                    <asp:TextBox ID="Txtage" runat="server" Style="z-index: 100; left: 624px; position: static;
                                        top: 224px" Width="40px"></asp:TextBox></td>
                                <td style="width: 800px; height: 11px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px; height: 26px;">
                                    Date of Birth</td>
                                <td align="left" colspan="4" style="font-size: xx-small; text-transform: uppercase; height: 26px">
                                    <asp:TextBox ID="TxtDOB" runat="server" Style="z-index: 100; left: 328px; position: static;
                                        top: 248px" Width="112px"></asp:TextBox>
                                    &nbsp; mm / dd / yyyy
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    Sex</td>
                                <td align="left" colspan="3">
                                    <asp:DropDownList ID="DDLsex" runat="server" Style="z-index: 100; left: 336px; position: static;
                                        top: 272px" Width="104px">
                                        <asp:ListItem>Choose One</asp:ListItem>
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px; height: 21px">
                                </td>
                                <td style="width: 135px; height: 21px">
                                </td>
                                <td style="width: 94px; height: 21px">
                                </td>
                                <td style="width: 79px; height: 21px">
                                </td>
                                <td style="width: 800px; height: 21px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    Nationality</td>
                                <td align="left" style="width: 135px">
                                    <asp:TextBox ID="Txtnation" runat="server" Style="z-index: 100; left: 176px; position: static;
                                        top: 328px"></asp:TextBox></td>
                                <td align="left" colspan="2">
                                    State of origin
                                    <asp:DropDownList ID="DDLstate" runat="server" Style="z-index: 100; left: 440px;
                                        position: static; top: 328px">
                                        <asp:ListItem Selected="True">choose one</asp:ListItem>
                                        <asp:ListItem>Abuja F.C.T</asp:ListItem>
                                        <asp:ListItem>Abia</asp:ListItem>
                                        <asp:ListItem>Adamawa</asp:ListItem>
                                        <asp:ListItem>Akwa Ibom</asp:ListItem>
                                        <asp:ListItem>Anambra</asp:ListItem>
                                        <asp:ListItem>Bauchi</asp:ListItem>
                                        <asp:ListItem>Bayelsa</asp:ListItem>
                                        <asp:ListItem>Benue</asp:ListItem>
                                        <asp:ListItem>Borno</asp:ListItem>
                                        <asp:ListItem>Cross River</asp:ListItem>
                                        <asp:ListItem>Delta</asp:ListItem>
                                        <asp:ListItem>Ebonyi</asp:ListItem>
                                        <asp:ListItem>Edo</asp:ListItem>
                                        <asp:ListItem>Ekiti</asp:ListItem>
                                        <asp:ListItem>Enugu</asp:ListItem>
                                        <asp:ListItem>Gombe</asp:ListItem>
                                        <asp:ListItem>Imo</asp:ListItem>
                                        <asp:ListItem>JIgawa</asp:ListItem>
                                        <asp:ListItem>Kaduna</asp:ListItem>
                                        <asp:ListItem>Katsina</asp:ListItem>
                                        <asp:ListItem>Kebbi</asp:ListItem>
                                        <asp:ListItem>Kogi</asp:ListItem>
                                        <asp:ListItem>Kwara</asp:ListItem>
                                        <asp:ListItem>Lagos</asp:ListItem>
                                        <asp:ListItem>Nassarawa</asp:ListItem>
                                        <asp:ListItem>Niger</asp:ListItem>
                                        <asp:ListItem>Ogun</asp:ListItem>
                                        <asp:ListItem>Ondo</asp:ListItem>
                                        <asp:ListItem>Osun</asp:ListItem>
                                        <asp:ListItem>Oyo</asp:ListItem>
                                        <asp:ListItem>Plateau</asp:ListItem>
                                        <asp:ListItem>Rivers</asp:ListItem>
                                        <asp:ListItem>Sokoto</asp:ListItem>
                                        <asp:ListItem>Taraba</asp:ListItem>
                                        <asp:ListItem>Yobe</asp:ListItem>
                                        <asp:ListItem>Zamfara</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    Town / City 
                                </td>
                                <td style="width: 135px" align="left">
                                <asp:TextBox ID="Txttown" runat="server" Style="z-index: 100;
                                        left: 280px; position: static; top: 504px"></asp:TextBox></td>
                                <td align="left" colspan="2">
                                    &nbsp; &nbsp;</td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px; height: 18px;">
                                </td>
                                <td style="width: 135px; height: 18px;">
                                </td>
                                <td style="width: 94px; height: 18px;">
                                </td>
                                <td style="width: 79px; height: 18px;">
                                </td>
                                <td style="width: 800px; height: 18px;">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px; height: 18px">
                                </td>
                                <td style="width: 135px; height: 18px">
                                </td>
                                <td style="width: 94px; height: 18px">
                                </td>
                                <td style="width: 79px; height: 18px">
                                </td>
                                <td style="width: 800px; height: 18px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    Marital Status</td>
                                <td align="left" style="width: 135px">
                                    <asp:DropDownList ID="DDLstatus" runat="server" Style="z-index: 100; left: 176px;
                                        position: static; top: 400px" Width="104px">
                                        <asp:ListItem>Choose One</asp:ListItem>
                                        <asp:ListItem>Single</asp:ListItem>
                                        <asp:ListItem>Married</asp:ListItem>
                                        <asp:ListItem>Divorced</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td colspan="2">
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    Religion</td>
                                <td align="left" style="width: 135px">
                                    <asp:DropDownList ID="DDLreligion" runat="server" Style="z-index: 100; left: 176px;
                                        position: static; top: 432px" Width="104px">
                                        <asp:ListItem>Choose One</asp:ListItem>
                                        <asp:ListItem>Islam</asp:ListItem>
                                        <asp:ListItem>Christianity</asp:ListItem>
                                        <asp:ListItem>Native</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 94px">
                                </td>
                                <td style="width: 79px">
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    Bank</td>
                                <td style="width: 135px">
                                    <asp:TextBox ID="Txtbank" runat="server" Style="z-index: 100; left: 248px; position: static;
                                        top: 616px"></asp:TextBox></td>
                                <td align="right" style="width: 94px">
                                    Account N0.</td>
                                <td style="width: 79px">
                                    <asp:TextBox ID="Txtaccount" runat="server" Style="z-index: 100; left: 616px; position: static;
                                        top: 640px"></asp:TextBox></td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px; height: 18px">
                                    Level</td>
                                <td align="left" style="width: 135px; height: 18px">
                                    <asp:DropDownList ID="DDLlevel" runat="server" Style="z-index: 100; left: 280px;
                                        position: static; top: 672px">
                                        <asp:ListItem>T1</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td align="right" style="width: 94px; height: 18px">
                                </td>
                                <td style="width: 79px; height: 18px">
                                </td>
                                <td style="width: 800px; height: 18px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                    Service location</td>
                                <td align="left" style="width: 135px"><asp:DropDownList ID="DDLslocatn" runat="server" Style="z-index: 100; left: 280px;
                                        position: static; top: 656px">
                                    <asp:ListItem Selected="True">choose one</asp:ListItem>
                                    <asp:ListItem>Abuja F.C.T</asp:ListItem>
                                    <asp:ListItem>Abia</asp:ListItem>
                                    <asp:ListItem>Adamawa</asp:ListItem>
                                    <asp:ListItem>Akwa Ibom</asp:ListItem>
                                    <asp:ListItem>Anambra</asp:ListItem>
                                    <asp:ListItem>Bauchi</asp:ListItem>
                                    <asp:ListItem>Bayelsa</asp:ListItem>
                                    <asp:ListItem>Benue</asp:ListItem>
                                    <asp:ListItem>Borno</asp:ListItem>
                                    <asp:ListItem>Cross River</asp:ListItem>
                                    <asp:ListItem>Delta</asp:ListItem>
                                    <asp:ListItem>Ebonyi</asp:ListItem>
                                    <asp:ListItem>Edo</asp:ListItem>
                                    <asp:ListItem>Ekiti</asp:ListItem>
                                    <asp:ListItem>Enugu</asp:ListItem>
                                    <asp:ListItem>Gombe</asp:ListItem>
                                    <asp:ListItem>Imo</asp:ListItem>
                                    <asp:ListItem>JIgawa</asp:ListItem>
                                    <asp:ListItem>Kaduna</asp:ListItem>
                                    <asp:ListItem>Katsina</asp:ListItem>
                                    <asp:ListItem>Kebbi</asp:ListItem>
                                    <asp:ListItem>Kogi</asp:ListItem>
                                    <asp:ListItem>Kwara</asp:ListItem>
                                    <asp:ListItem>Lagos</asp:ListItem>
                                    <asp:ListItem>Nassarawa</asp:ListItem>
                                    <asp:ListItem>Niger</asp:ListItem>
                                    <asp:ListItem>Ogun</asp:ListItem>
                                    <asp:ListItem>Ondo</asp:ListItem>
                                    <asp:ListItem>Osun</asp:ListItem>
                                    <asp:ListItem>Oyo</asp:ListItem>
                                    <asp:ListItem>Plateau</asp:ListItem>
                                    <asp:ListItem>Rivers</asp:ListItem>
                                    <asp:ListItem>Sokoto</asp:ListItem>
                                    <asp:ListItem>Taraba</asp:ListItem>
                                    <asp:ListItem>Yobe</asp:ListItem>
                                    <asp:ListItem>Zamfara</asp:ListItem>
                                </asp:DropDownList></td>
                                <td style="width: 94px">
                                </td>
                                <td style="width: 79px">
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 902px">
                                </td>
                                <td align="left" style="width: 135px">
                                </td>
                                <td style="width: 94px">
                                </td>
                                <td style="width: 79px">
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 902px">
                                </td>
                                <td align="left" colspan="2">
                                    <asp:Button ID="Button1" runat="server" Style="z-index: 100; left: 272px; position: static;
                                        top: 616px" Text="Submit" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" />
                                    <asp:Button ID="Button2" runat="server" Style="z-index: 100;
                                            left: 360px; position: static; top: 616px" Text="Reset" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" />
                                </td>
                                <td style="width: 79px">
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 902px">
                                </td>
                                <td style="width: 135px">
                                </td>
                                <td style="width: 94px">
                                </td>
                                <td style="width: 79px">
                                </td>
                                <td style="width: 800px">
                                </td>
                            </tr>
                        </table>
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
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
