<%@ Page Language="VB" AutoEventWireup="false" CodeFile="requsition.aspx.vb" Inherits="requsition" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Requsition</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="border-right: cornflowerblue thin solid; border-top: cornflowerblue thin solid;
                font-size: small; z-index: 100; left: 152px; border-left: cornflowerblue thin solid;
                width: 568px; color: blue; border-bottom: cornflowerblue thin solid; font-family: tahoma;
                position: static; top: 32px">
                <tr>
                    <td colspan="3" style="color: black">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 112px; position: static;
                            top: 24px; height: 16px" />
                        Inverter Implementation And Support Services</td>
                </tr>
                <tr>
                    <td align="center" colspan="3" style="font-weight: bold; border-left: cornflowerblue thin solid;
                        border-top-style: solid; border-right-style: solid; border-bottom-style: solid">
                        Materials Requisition
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td align="left" colspan="2">
                        Site Code :
                        <asp:DropDownList ID="DDLsiteid" runat="server" AutoPostBack="True" Style="z-index: 100;
                            left: 296px; position: static; top: 32px">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div style="text-align: center">
                            <table style="z-index: 100; left: 208px; position: static; top: 64px">
                                <tr>
                                    <td colspan="3">
                                        Materials - Quantity&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                        <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Numbered" Style="z-index: 100;
                                            left: 312px; position: static; top: 96px" Width="224px">
                                        </asp:BulletedList>
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Btnprint" runat="server" Style="z-index: 100; left: 120px; position: static;
                            top: 168px" Text="Print" Width="64px" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/materialrequest.aspx"
                            Style="z-index: 100; left: 208px; position: static; top: 168px" Width="40px">Back</asp:HyperLink></td>
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
