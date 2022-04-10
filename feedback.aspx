<%@ Page Language="VB" AutoEventWireup="false" CodeFile="feedback.aspx.vb" Inherits="feedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Feedback</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="font-size: small; z-index: 100; left: 176px; width: 5in; color: seagreen;
                font-family: tahoma; position: static; top: 24px; height: 4in; border-right: seagreen thin solid; border-top: seagreen thin solid; border-left: seagreen thin solid; border-bottom: seagreen thin solid;">
                <tr>
                    <td align="left" style="width: 100px">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 160px; position: static;
                            top: 24px; height: 16px" /></td>
                    <td align="center" colspan="6">
                        Inverter Implementation And Support Services</td>
                </tr>
                <tr>
                    <td rowspan="18" style="width: 100px; background-color: seagreen">
                    </td>
                    <td align="left" colspan="6" style="border-bottom: seagreen thin solid; height: 5px">
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                            left: 200px; position: static; top: 48px" Width="48px">Logout</asp:HyperLink></td>
                </tr>
                <tr>
                    <td align="left" colspan="2">
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#8080FF" NavigateUrl="~/qc_assign.aspx"
                            Style="z-index: 100; left: 200px; position: static; top: 80px" Width="144px">To Quality Assurance</asp:HyperLink></td>
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
                    <td colspan="6" style="font-weight: bold; font-size: medium; font-family: tahoma">
                        Quality Assurance FeedBack</td>
                </tr>
                <tr>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                        Supervisor
                    </td>
                    <td align="left" style="width: 100px">
                        <asp:DropDownList ID="DDlsupvsr" runat="server" AutoPostBack="True" Style="z-index: 100;
                            left: 320px; position: static; top: 120px" Width="168px">
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
                    <td align="right" style="width: 100px; height: 13px">
                    </td>
                    <td align="right" style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 100px; height: 13px">
                    </td>
                    <td align="right" style="width: 100px; height: 13px">
                        Site code
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                </tr>
                <tr>
                    <td colspan="1" rowspan="3">
                    </td>
                    <td colspan="3" rowspan="3">
                        <asp:ListBox ID="Listcode" runat="server" AutoPostBack="True" Height="80px" Style="z-index: 100;
                            left: 232px; position: static; top: 192px" Width="312px"></asp:ListBox></td>
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
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                        Remark</td>
                    <td align="left" style="width: 100px">
                        <asp:DropDownList ID="DDLrmk" runat="server" AutoPostBack="True" Style="z-index: 100;
                            left: 328px; position: static; top: 296px" Width="192px">
                            <asp:ListItem>choose one</asp:ListItem>
                            <asp:ListItem>Satisfactory</asp:ListItem>
                            <asp:ListItem>Unsatisfactory</asp:ListItem>
                        </asp:DropDownList></td>
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
                    <td align="left" colspan="3">
                        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 344px; position: static;
                            top: 328px" Text="Label" Width="208px"></asp:Label></td>
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
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                        <asp:Button ID="Button1" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White"
                            Style="z-index: 100; left: 224px; position: static; top: 392px" Text="Clear"
                            Width="56px" /></td>
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
                    <td style="width: 100px">
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
