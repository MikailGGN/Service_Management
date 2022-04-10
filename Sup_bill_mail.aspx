<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Sup_bill_mail.aspx.vb" Inherits="Sup_bill_mail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <div style="text-align: center">
            <table style="z-index: 100; left: 160px; width: 60%; position: static; top: 16px;
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
                                <td rowspan="4" style="width: 19px; height: 34px">
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                                        left: 8px; position: static; top: 96px" Width="48px">Logout</asp:HyperLink><br />
                                    <br />
                                </td>
                                <td align="right" colspan="11" rowspan="4" style="height: 34px">
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
                                        left: 512px; position: static; top: 104px" Target="_blank" BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px">
                                        <Items>
                                            <asp:MenuItem Text="Support" ToolTip="Equipment Support Services" Value="Support">
                                                <asp:MenuItem NavigateUrl="~/support.aspx" Text="Client Complaint " ToolTip="Record client complaint "
                                                    Value="New Item"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/supporttech.aspx" Text="Site Support " ToolTip="Assign Technician for support exercise "
                                                    Value="New Item"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/sup_report.aspx" Text="Support Feedback" ToolTip="Technician's feedback report"
                                                    Value="New Item"></asp:MenuItem>
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
                                </td>
                                <td align="left" colspan="1" rowspan="4" style="height: 34px">
                                </td>
                                <td align="left" colspan="1" rowspan="4" style="height: 34px">
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
                            <table style="z-index: 100; left: 160px; width: 100%; position: static; top: 248px;
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
                                </tr>
                                <tr>
                                    <td colspan="4" style="font-weight: bold; font-size: medium; color: #ffffff; font-family: tahoma;
                                        background-color: orangered">
                                        Mails</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        Client name</td>
                                    <td align="left" style="width: 100px">
                                        <asp:DropDownList ID="DDLclient" runat="server" Style="z-index: 100; left: 232px;
                                            position: static; top: 64px" ForeColor="Blue">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        To :</td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtto" runat="server" Style="z-index: 100; left: 288px; position: static;
                                            top: 160px" Width="248px" ForeColor="Blue"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px; height: 21px">
                                        Cc :</td>
                                    <td align="left" style="width: 100px; height: 21px">
                                        <asp:TextBox ID="Txtcc" runat="server" Style="z-index: 100; left: 272px; position: static;
                                            top: 176px" Width="248px" ForeColor="Blue"></asp:TextBox></td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        Subject :</td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="TxtSUB" runat="server" Style="z-index: 100; left: 264px; position: static;
                                            top: 216px" Width="208px" ForeColor="Blue">PROJECT IS OUT OF WARRANTY</asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px; height: 18px;">
                                    </td>
                                    <td align="left" style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                </tr>
                                <tr>
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
                                        Attachment :</td>
                                    <td align="left" style="width: 100px">
                                        <asp:FileUpload ID="FILEATTACH" runat="server" Style="z-index: 100; left: 272px;
                                            position: static; top: 216px" BackColor="White" BorderColor="OrangeRed" ForeColor="Blue" BorderStyle="Double" /></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px; height: 21px">
                                    </td>
                                    <td align="left" style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px; height: 21px">
                                        Body :<br />
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td align="left" colspan="2" rowspan="3">
                                        <asp:TextBox ID="TXTmbody" runat="server" Height="120px" Style="z-index: 100; left: 256px;
                                            position: static; top: 296px" TextMode="MultiLine" Width="368px" ForeColor="Blue"></asp:TextBox></td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
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
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px" align="left">
                                        <asp:Button ID="Button1" runat="server" Style="z-index: 100; left: 248px; position: static;
                                            top: 424px" Text="Send" BackColor="OrangeRed" BorderStyle="None" Font-Bold="True" ForeColor="White" /></td>
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
                    <td colspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Style="font-size: x-small;
                            z-index: 100; left: 280px; color: blue; font-family: tahoma; position: static;
                            top: 600px" Width="368px">** If this is an added page to your role click to return to your defualt home page </asp:LinkButton></td>
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
    </form>
</body>
</html>
