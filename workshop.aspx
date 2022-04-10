<%@ Page Language="VB" AutoEventWireup="false" CodeFile="workshop.aspx.vb" Inherits="workshop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Workshop</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="z-index: 100; left: 0px; width: 22.9cm; position: static; top: 0px; height: 13cm; font-size: small; color: firebrick; font-family: TAHOMA;">
                <tr>
                    <td style="width: 1px;" align="left">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 40px; position: static;
                            top: 16px; height: 16px" /></td>
                    <td colspan="4">
                        &nbsp; Inverter Implementation And Support Services</td>
                </tr>
                <tr>
                    <td align="left" colspan="2">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                            left: 48px; position: static; top: 40px" Width="48px">Logout</asp:HyperLink></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px" align="left">
                    </td>
                </tr>
                <tr>
                    <td colspan="5" 
                        style="height: 401px; border-top-style: solid; border-bottom-style: solid;">
                        <div style="text-align: center">
                            <table style="z-index: 100; left: 0px; width: 876px; position: static; top: 0px">
                                <tr>
                                    <td style="font-size: medium; font-weight: 700; font-family: Tahoma;" 
                                        colspan="8">
                                        Machine Movement</td>
                                </tr>
                                <tr>
                                    <td colspan="2" rowspan="3">
                                        <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows" ShowLines="True" 
                                            Width="181px">
                                            <ParentNodeStyle Font-Bold="False" />
                                            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                                            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" 
                                                HorizontalPadding="0px" VerticalPadding="0px" />
                                            <Nodes>
                                                <asp:TreeNode Text="Workshop" ToolTip="Machine Repairs" Value="Workshop">
                                                    <asp:TreeNode NavigateUrl="~/workshop.aspx" Text="Machine Movement" 
                                                        Value="Machine Movement"></asp:TreeNode>
                                                    <asp:TreeNode NavigateUrl="~/store_workshop.aspx" Text="Spares Approval" 
                                                        Value="Spares Approval"></asp:TreeNode>
                                                </asp:TreeNode>
                                            </Nodes>
                                            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" 
                                                HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                                        </asp:TreeView>
                                    </td>
                                    <td style="width: 100px">
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
                                    <td style="width: 100px">
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
                                    <td style="width: 100px" align="right">
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
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
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
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        Site Code :</td>
                                    <td align="left" style="width: 100px">
                                        <asp:DropDownList ID="DDLsite" runat="server" Style="z-index: 100; left: 224px; position: static;
                                            top: 264px" Width="144px">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="right" style="width: 100px">
                                        Machine N0:</td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtequipno" runat="server" Style="z-index: 100; left: 368px; position: static;
                                            top: 288px"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
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
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        Description :</td>
                                    <td align="left" colspan="2" rowspan="3">
                                        <asp:TextBox ID="Txtdesc" runat="server" Height="48px" Style="z-index: 100; left: 168px;
                                            position: static; top: 336px" TextMode="MultiLine" Width="240px"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
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
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        Purpose :</td>
                                    <td align="left" colspan="2" rowspan="3">
                                        <asp:TextBox ID="Txtpurps" runat="server" Height="48px" Style="z-index: 100; left: 176px;
                                            position: static; top: 416px" TextMode="MultiLine" Width="240px"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
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
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        Direction :</td>
                                    <td align="left" colspan="2">
                                        <asp:DropDownList ID="DDLdirect" runat="server" Style="z-index: 100; left: 184px;
                                            position: static; top: 528px">
                                            <asp:ListItem>Choose One</asp:ListItem>
                                            <asp:ListItem>From Site To Workshop</asp:ListItem>
                                            <asp:ListItem>From Workshop To Site</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;</td>
                                    <td style="width: 100px" align="right">
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
                                    <td style="width: 100px; height: 22px;">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 22px;">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 22px;">
                                    </td>
                                    <td style="width: 100px; height: 22px;" align="left">
                                        <asp:Button ID="Btnmove" runat="server" BackColor="Red" BorderStyle="None" Font-Bold="True"
                                            ForeColor="White" Style="z-index: 100; left: 176px; position: static; top: 576px;
                                            background-color: red" Text="Submit" Width="64px" /></td>
                                    <td style="width: 100px; height: 22px;">
                                    </td>
                                    <td style="width: 100px; height: 22px;">
                                    </td>
                                    <td style="width: 100px; height: 22px;">
                                    </td>
                                    <td style="width: 100px; height: 22px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
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
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
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
                    </td>
                </tr>
                <tr>
                    <td style="width: 1px">
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
                    <td style="width: 1px">
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
                    <td style="width: 1px">
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
                    <td style="width: 1px">
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
                    <td style="width: 1px">
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
