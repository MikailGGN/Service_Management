<%@ Page Language="VB" AutoEventWireup="false" CodeFile="store_workshop.aspx.vb" Inherits="store_workshop1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            font-family: Tahoma;
            font-size: medium;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <div style="text-align: center">
            <table style="z-index: 100; left: 72px; width: 17cm; position: static; top: 48px;
                height: 15cm; font-family: Tahoma; font-size: small; color: #FF0000;">
                <tr>
                    <td style="width: 100px" align="left">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 40px; position: static;
                            top: 16px; height: 16px" /></td>
                    <td colspan="3">
                        &nbsp; Inverter Implementation And Support Services</td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                            left: 48px; position: static; top: 40px" Width="48px">Logout</asp:HyperLink>
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
                    <td colspan="5" 
                        style="border-top-style: solid; border-top-color: #FF0000; border-bottom-style: solid; border-bottom-color: #FF0000">
                        <div style="text-align: center">
                            <table style="z-index: 100; left: 0px; width: 744px; position: static; top: 0px; border-top-style: solid; border-bottom-style: solid;">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td colspan="7">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        &nbsp;</td>
                                    <td colspan="7" class="style1">
                                        Inventory ( Spares Registration )</td>
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
                                    <td rowspan="3">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="width: 100px">
                                        Stock&nbsp; code</td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txticno" runat="server" Style="z-index: 100; left: 192px; position: static;
                                            top: 136px" Width="128px"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px">
                                        Item Description</td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" rowspan="3" style="width: 100px">
                                        <asp:TextBox ID="Txtitem" runat="server" Height="56px" Style="z-index: 100; left: 184px;
                                            position: static; top: 144px" TextMode="MultiLine" Width="224px"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px">
                                        Quantity</td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtqty" runat="server" Style="z-index: 100; left: 160px; position: static;
                                            top: 232px" Width="56px"></asp:TextBox>
                                        <asp:Button ID="Btnadd" runat="server" BackColor="Red" BorderStyle="None" Font-Bold="True"
                                            ForeColor="White" Style="z-index: 100; left: 304px; position: static; top: 232px"
                                            Text="Add" /></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="8" 
                                        style="font-size: medium; font-weight: 700; font-family: Tahoma; border-top: 2px solid #FF0000; border-bottom: 2px solid #FF0000">
                                        Machine Parts ( Approval of&nbsp; Requested Spares )</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px">
                                        <asp:DropDownList ID="DDLsitecode" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 160px; position: static; top: 360px" Width="144px">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
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
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" rowspan="5" style="width: 100px">
                                        <asp:ListBox ID="Listreparts" runat="server" Height="112px" Style="z-index: 100;
                                            left: 160px; position: static; top: 448px" Width="232px"></asp:ListBox></td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td colspan="2" rowspan="5">
                                        <asp:ListBox ID="Listgraparts" runat="server" AutoPostBack="True" Height="112px"
                                            Style="z-index: 100; left: 488px; position: static; top: 448px" Width="192px"></asp:ListBox></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px">
                                        <asp:Button ID="Btnv" runat="server" BackColor="Red" BorderStyle="None" Font-Bold="True"
                                            ForeColor="White" Style="z-index: 100; left: 400px; position: static; top: 440px"
                                            Text="v Next" Width="72px" /></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px">
                                        <asp:Button ID="Btnapprove" runat="server" BackColor="Red" BorderStyle="None" Font-Bold="True"
                                            ForeColor="White" Style="z-index: 100; left: 376px; position: static; top: 496px"
                                            Text="Approve >" Width="72px" /></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px">
                                        <asp:Button ID="Btnx" runat="server" BackColor="Red" BorderStyle="None" Font-Bold="True"
                                            ForeColor="White" Style="z-index: 100; left: 384px; position: static; top: 520px"
                                            Text="X Remove" Width="72px" /></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="Txtitems" runat="server" Style="z-index: 100; left: 144px; position: static;
                                            top: 568px" Visible="False"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        <asp:Button ID="Btnsubapv" runat="server" BackColor="Red" BorderStyle="None" Font-Bold="True"
                                            ForeColor="White" Style="z-index: 100; left: 584px; position: static; top: 568px"
                                            Text="Submit" /></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
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
                                    <td align="right" style="width: 100px">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
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
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                    </td>
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
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
