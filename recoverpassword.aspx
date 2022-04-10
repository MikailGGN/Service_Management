<%@ Page Language="VB" AutoEventWireup="false" CodeFile="recoverpassword.aspx.vb" Inherits="recoverpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Password Recovery</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="border-right: #000066 thin solid; border-top: #000066 thin solid; font-size: small;
            z-index: 100; left: 0px; border-left: #000066 thin solid; width: 12.3cm; color: #000066;
            border-bottom: #000066 thin solid; font-family: tahoma; position: static; top: 0px;
            height: 7cm">
            <tr>
                <td align="center" colspan="4" style="font-weight: bold; font-size: small; color: white;
                    background-color: #000066">
                    &nbsp;Password Recovery</td>
            </tr>
            <tr>
                <td colspan="2" style="height: 22px">
                    <asp:Button ID="Btnback" runat="server" BackColor="Navy" BorderStyle="None" Font-Bold="True"
                        ForeColor="White" PostBackUrl="~/Default.aspx" Style="z-index: 100; left: 24px;
                        position: static; top: 40px" Text="<< Back" />&nbsp;<asp:Button ID="Button1" runat="server"
                            BackColor="Navy" BorderStyle="None" Font-Bold="True" ForeColor="White" Style="z-index: 100;
                            left: 120px; position: static; top: 40px" Text="Reset" /></td>
                <td style="width: 100px; height: 22px">
                    <asp:TextBox ID="Txtanswa" runat="server" Style="z-index: 100; left: 200px; position: static;
                        top: 48px" Visible="False"></asp:TextBox></td>
                <td style="width: 100px; height: 22px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td align="right" colspan="2">
                    Please enter the password and press Enter to generate your security question. &nbsp;</td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td align="right" style="width: 100px">
                    &nbsp;Username</td>
                <td style="width: 100px">
                    <asp:TextBox ID="Txtuname" runat="server" Style="z-index: 100; left: 248px; position: static;
                        top: 128px" CausesValidation="True"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2">
                    <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 104px; position: static;
                        top: 136px" Text=" Security Question" Visible="False" Width="112px"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="Txtquestn" runat="server" Style="z-index: 100; left: 216px; position: static;
                        top: 160px" Visible="False"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2">
                    <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 128px; position: static;
                        top: 168px" Text="Security Answer" Visible="False" Width="104px"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="Txtanswer" runat="server" Style="z-index: 100; left: 224px; position: static;
                        top: 168px" Visible="False"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:Button ID="Btnansa" runat="server" Style="z-index: 100; left: 376px; position: static;
                        top: 168px" Text="Submit" Visible="False" BackColor="Navy" BorderStyle="None" ForeColor="White" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td align="right" style="width: 100px">
                    &nbsp;</td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 120px; position: static;
                        top: 232px" Visible="False" Width="320px"></asp:Label></td>
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
        </table>
    
    </div>
    </form>
</body>
</html>
