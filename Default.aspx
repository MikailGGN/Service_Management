<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ OutputCache Location="None" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

<meta http-equiv="expires" content="-1"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Pragma" content="no-cache"/>
    <title>Bolt</title>

</head>

<script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>
<body style ="background-color :Gray ">
    <form id="form1" runat="server">
    <div style="text-align: center"; >
    <div style ="background-image : url('images/defbg.gif');left: 264px;
                width: 25cm; position: static; top: 16px; height: 15.9cm; background-position: center center;">
        
            <table style="z-index: 100; left: 264px;
                width: 25cm; position: static; top: 16px; height: 15.9cm; background-position: center center; background-attachment: fixed; background-repeat: no-repeat;">
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 91px">
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
                    <td style="width: 91px">
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
                    <td style="width: 91px">
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
                    <td style="width: 91px">
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
                        <div style="text-align: left">
                            <br />
                            <br />
                            <br />
                            <table id="TABLE1" style="border-right: blue thin solid; border-top: blue thin solid;
                                font-size: small; z-index: 100; left: 592px; border-left: blue thin solid; width: 8.9cm;
                                color: blue; border-bottom: blue thin solid; font-family: tahoma; position: static;
                                top: 280px; height: 3cm; background-color: white" onclick="return TABLE1_onclick()">
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 88px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 88px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;Username :</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="Txtusername" runat="server" Style="z-index: 100; left: 496px; position: static;
                                            top: 272px" Width="120px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                                runat="server" ControlToValidate="Txtusername" ErrorMessage="username is required"
                                                Height="16px" Style="z-index: 100; left: 616px; position: static; top: 291px"
                                                Width="24px">*</asp:RequiredFieldValidator></td>
                                    <td colspan="1">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px; height: 14px">
                                        Password :</td>
                                    <td style="height: 14px" colspan="2">
                                        <asp:TextBox ID="Txtpassword" runat="server" Style="z-index: 100; left: 480px; position: static;
                                            top: 304px" TextMode="Password" Width="120px"></asp:TextBox><asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtpassword" ErrorMessage="password is required"
                                                Style="z-index: 100; left: 616px; position: static; top: 320px" Width="24px">*</asp:RequiredFieldValidator></td>
                                    <td colspan="1" style="height: 14px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px; height: 22px">
                                    </td>
                                    <td style="height: 22px" colspan="2">
                                        <asp:Button ID="Btnlog" runat="server" BackColor="Blue" BorderStyle="None" ForeColor="White"
                                            Style="z-index: 100; left: 448px; position: static; top: 344px" Text="Login" />
                                        <a href="recoverpassword.aspx">Forgot Password</a></td>
                                    <td colspan="1" style="height: 22px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 88px">
                                        <asp:TextBox ID="Txtrole" runat="server" Style="z-index: 100; left: 488px; position: static;
                                            top: 376px" Visible="False"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 88px">
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="1px" Style="z-index: 100;
                                            left: 536px; position: static; top: 381px" Width="160px" />
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 88px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td style="width: 91px">
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
                    <td style="width: 91px">
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
                    <td style="width: 91px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 41px">
                    </td>
                    <td style="width: 100px; height: 41px">
                    </td>
                    <td style="width: 100px; height: 41px">
                    </td>
                    <td style="width: 100px; height: 41px">
                    </td>
                    <td style="width: 91px; height: 41px">
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
