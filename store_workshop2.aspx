<%@ Page Language="VB" AutoEventWireup="false" CodeFile="store_workshop2.aspx.vb" Inherits="store_workshop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Workshop Transactions</title>
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
        <div style="text-align: center">
            <br />
            <table style="z-index: 100; left: 192px; width: 60%; position: static; top: 16px;
                height: 100%; font-family: tahoma;">
                <tr>
                    <td align="left" colspan="3" style="font-size: small">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 16px; position: static;
                            top: 80px; height: 16px" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp;&nbsp; Inverter Implementation And Support Services</td>
                </tr>
                <tr>
                    <td style="width: 88px; font-size: small;" align="left">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="left" colspan="3">
                        <div style="text-align: center">
                            <table style="z-index: 100; left: 160px; width: 100%; position: static; top: 248px;
                                height: 100%; border-right: firebrick thin solid; border-top: firebrick thin solid; font-size: small; border-left: firebrick thin solid; color: red; border-bottom: firebrick thin solid; font-family: tahoma;" id="TABLE1" onclick="return TABLE1_onclick()">
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 68px">
                                    </td>
                                    <td style="width: 72px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 1230px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 77px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="left">
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                                            left: 16px; position: static; top: 144px" Width="48px">Logout</asp:HyperLink><br />
                                    </td>
                                    <td align="left" colspan="1" style="width: 1230px">
                                    </td>
                                    <td colspan="1">
                                    </td>
                                    <td colspan="1" align="right">
                                        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Style="z-index: 100;
                                            left: 608px; position: static; top: 144px" BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px">
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
                                    </td>
                                    <td colspan="1" style="width: 77px">
                                    </td>
                                    <td colspan="1">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="11" style="font-weight: bold; font-size: medium; color: white; height: 21px; background-color: firebrick" align="left">
                                        &nbsp;Workshop Transactions</td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 68px; height: 18px;">
                                    </td>
                                    <td style="width: 72px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; border-left: firebrick thin groove;" rowspan="30">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 1230px; height: 18px">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 77px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" colspan="3" style="font-weight: bold; color: white; background-color: firebrick">
                                        Movement of Machine ( Equipment )
                                    </td>
                                    <td colspan="5" style="font-weight: bold; color: white; background-color: firebrick" align="left">
                                        Inventory</td>
                                    <td colspan="1">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 21px">
                                    </td>
                                    <td style="height: 21px" colspan="2">
                                        From site to workshop or otherwise</td>
                                    <td align="right" style="height: 21px" colspan="2">
                                        Workshop N0.</td>
                                    <td style="width: 100px; height: 21px">
                                        <asp:TextBox ID="Txticno" runat="server" Style="z-index: 100; left: 608px; position: static;
                                            top: 160px" Width="128px"></asp:TextBox></td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 77px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        Site Code :</td>
                                    <td align="left" style="width: 68px">
                                        <asp:DropDownList ID="DDLsite" runat="server" Style="z-index: 100; left: 104px; position: static;
                                            top: 248px">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 72px">
                                    </td>
                                    <td align="right" colspan="2">
                                        Item Description</td>
                                    <td align="left" colspan="2" rowspan="2">
                                        <asp:TextBox ID="Txtitem" runat="server" Height="56px" Style="z-index: 100; left: 560px;
                                            position: static; top: 192px" TextMode="MultiLine" Width="224px"></asp:TextBox></td>
                                    <td style="width: 77px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 21px">
                                        Machine N0:</td>
                                    <td align="left" style="width: 68px; height: 21px">
                                        <asp:TextBox ID="Txtequipno" runat="server" Style="z-index: 100; left: 360px; position: static;
                                            top: 216px"></asp:TextBox>&nbsp;
                                    </td>
                                    <td style="width: 72px; height: 21px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 21px">
                                    </td>
                                    <td align="right" style="width: 1230px; height: 21px">
                                    </td>
                                    <td style="width: 77px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 21px">
                                        Description :</td>
                                    <td align="left" colspan="2" rowspan="2">
                                        <asp:TextBox ID="Txtdesc" runat="server" Height="48px" Style="z-index: 100; left: 336px;
                                            position: static; top: 240px" TextMode="MultiLine" Width="240px"></asp:TextBox></td>
                                    <td align="right" style="height: 21px" colspan="2">
                                        Quantity</td>
                                    <td align="left" style="width: 100px; height: 21px">
                                        <asp:TextBox ID="Txtqty" runat="server" Style="z-index: 100; left: 624px; position: static;
                                            top: 272px" Width="120px"></asp:TextBox></td>
                                    <td align="left" style="width: 100px; height: 21px">
                                        <asp:Button ID="Btnadd" runat="server" Style="z-index: 100; left: 760px; position: static;
                                            top: 272px" Text="Add" BackColor="Red" BorderStyle="None" Font-Bold="True" ForeColor="White" /></td>
                                    <td style="width: 77px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 21px">
                                    </td>
                                    <td style="height: 21px; border-top-width: thin; border-top-color: darkgreen;" colspan="4">
                                    </td>
                                    <td style="width: 77px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 6px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 6px">
                                        Purpose :</td>
                                    <td align="left" colspan="2" rowspan="2">
                                        <asp:TextBox ID="Txtpurps" runat="server" Height="48px" Style="z-index: 100; left: 296px;
                                            position: static; top: 312px" TextMode="MultiLine" Width="240px"></asp:TextBox></td>
                                    <td colspan="5" style="height: 6px; font-weight: bold; font-size: small; color: white; background-color: firebrick;" align="left">
                                        Equipment Used For Machine Repairs&nbsp;</td>
                                    <td colspan="1" style="height: 6px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" colspan="3">
                                        Equipment Ref. N0.</td>
                                    <td align="left" colspan="2">
                                        <asp:DropDownList ID="DDLwkshpn" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 576px; position: static; top: 408px" Width="184px">
                                            <asp:ListItem>Select One</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 21px">
                                        Direction :</td>
                                    <td align="left" style="width: 68px; height: 21px">
                                        <asp:DropDownList ID="DDLdirect" runat="server" Style="z-index: 100; left: 304px;
                                            position: static; top: 352px">
                                            <asp:ListItem>Choose One</asp:ListItem>
                                            <asp:ListItem>From Site To Workshop</asp:ListItem>
                                            <asp:ListItem>From Workshop To Site</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 72px; height: 21px">
                                        <asp:Button ID="Btnmove" runat="server" Style="z-index: 100; left: 640px; position: static;
                                            top: 336px" Text="Submit" Width="64px" BackColor="Red" BorderStyle="None" ForeColor="White" /></td>
                                    <td align="right" colspan="3" style="height: 21px">
                                        Machine Description&nbsp;
                                    </td>
                                    <td align="left" colspan="2" rowspan="2">
                                        <asp:TextBox ID="Txtmdesc" runat="server" Height="48px" ReadOnly="True" Style="z-index: 100;
                                            left: 608px; position: static; top: 384px" TextMode="MultiLine" Width="200px"></asp:TextBox></td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 68px; height: 21px">
                                    </td>
                                    <td style="width: 72px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 1230px; height: 21px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 13px;">
                                    </td>
                                    <td align="left" colspan="3" style="font-weight: bold; color: white; height: 13px;
                                        background-color: firebrick">
                                        Movement Of Machine Parts:</td>
                                    <td align="right" colspan="3" style="height: 13px">
                                        Repairs Information&nbsp;
                                    </td>
                                    <td align="left" colspan="2" rowspan="2">
                                        <asp:TextBox ID="Txtrepair" runat="server" Height="48px" Style="z-index: 100; left: 600px;
                                            position: static; top: 448px" TextMode="MultiLine" Width="200px"></asp:TextBox></td>
                                    <td style="width: 100px; height: 13px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 28px">
                                    </td>
                                    <td style="width: 100px; height: 28px">
                                    </td>
                                    <td style="width: 68px; height: 28px">
                                    </td>
                                    <td style="width: 72px; height: 28px">
                                    </td>
                                    <td style="width: 100px; height: 28px">
                                    </td>
                                    <td style="width: 1230px; height: 28px">
                                    </td>
                                    <td style="width: 100px; height: 28px">
                                    </td>
                                    <td style="width: 100px; height: 28px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="center" colspan="2">
                                        Site Code
                                        <asp:DropDownList ID="DDLsitecode" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 168px; position: static; top: 560px" Width="144px">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 72px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 1230px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        Item&nbsp;
                                    </td>
                                    <td align="left" style="width: 100px">
                                        <asp:DropDownList ID="DDLitem" runat="server" Style="z-index: 100;
                                            left: 560px; position: static; top: 552px" Width="184px" AutoPostBack="True">
                                            <asp:ListItem> Select One</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 77px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                    <td style="width: 68px; height: 26px">
                                        Parts List</td>
                                    <td style="width: 72px; height: 26px">
                                    </td>
                                    <td align="right" colspan="3" style="height: 26px">
                                        &nbsp;Quantity Required
                                    </td>
                                    <td align="left" style="height: 26px" colspan="2">
                                        <asp:DropDownList ID="DDLqtyreq" runat="server" Style="z-index: 100;
                                            left: 600px; position: static; top: 528px">
                                            <asp:ListItem>0</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:Button ID="Btneqused" runat="server" Style="z-index: 100; left: 632px; position: static;
                                            top: 584px" Text="Submit" BackColor="Red" BorderStyle="None" Font-Bold="True" ForeColor="White" /></td>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 26px">
                                        &nbsp;Requested</td>
                                    <td align="left" rowspan="5" style="width: 68px">
                                        <asp:ListBox ID="Listreparts" runat="server" Height="112px" Style="z-index: 100; left: 72px;
                                            position: static; top: 616px" Width="168px"></asp:ListBox></td>
                                    <td style="width: 72px; height: 26px">
                                    </td>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                    <td style="width: 1230px; height: 26px">
                                    </td>
                                    <td style="width: 100px; height: 26px">
                                        <asp:TextBox ID="Txtrqty" runat="server" Style="z-index: 100; left: 424px; position: static;
                                            top: 616px" Visible="False" Width="120px"></asp:TextBox></td>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                    <td align="left" style="width: 77px; height: 26px">
                                        </td>
                                    <td style="width: 100px; height: 26px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 72px">
                                        <asp:Button ID="Btnv" runat="server" Style="z-index: 100; left: 280px; position: static;
                                            top: 576px" Text="<< Next" Width="72px" BackColor="Red" BorderStyle="None" Font-Bold="True" ForeColor="White" /></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 1230px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 77px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 1px">
                                    </td>
                                    <td style="width: 100px; height: 1px">
                                    </td>
                                    <td align="left" style="width: 72px; height: 1px">
                                        <asp:Button ID="Btnapprove" runat="server" Font-Bold="True" Style="z-index: 100;
                                            left: 280px; position: static; top: 600px" Text="< Approve" Width="72px" BackColor="Red" BorderStyle="None" ForeColor="White" /></td>
                                    <td colspan="5" style="height: 1px; font-weight: bold; color: white; background-color: firebrick;" align="left">
                                        Register Faulty Equipment Part</td>
                                    <td colspan="1" style="height: 1px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 72px">
                                        <asp:Button ID="Btnx" runat="server" Font-Bold="True" Style="z-index: 100; left: 280px;
                                            position: static; top: 632px" Text="> Remove" Width="72px" BackColor="Red" BorderStyle="None" ForeColor="White" /></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 1230px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 77px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 23px">
                                    </td>
                                    <td style="width: 100px; height: 23px">
                                    </td>
                                    <td align="left" style="width: 72px; height: 23px">
                                    </td>
                                    <td style="width: 100px; height: 23px">
                                    </td>
                                    <td style="width: 1230px; height: 23px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 23px">
                                        Ref. N0.&nbsp;
                                    </td>
                                    <td align="left" colspan="2" style="height: 23px">
                                        <asp:DropDownList ID="DDLrefno" runat="server" Style="z-index: 100; left: 616px;
                                            position: static; top: 656px" AutoPostBack="True">
                                            <asp:ListItem>Choose one</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 100px; height: 23px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        Granted</td>
                                    <td align="left" rowspan="4" style="width: 68px">
                                        <asp:ListBox ID="Listgraparts" runat="server" Height="96px" Style="z-index: 100;
                                            left: 112px; position: static; top: 688px" Width="168px" AutoPostBack="True"></asp:ListBox></td>
                                    <td align="left" style="width: 72px">
                                    </td>
                                    <td align="right" colspan="3">
                                        &nbsp;Machine Description</td>
                                    <td align="left" colspan="2" rowspan="2">
                                        <asp:TextBox ID="Txtfmdesc" runat="server" Height="40px" Style="z-index: 100; left: 696px;
                                            position: static; top: 680px" TextMode="MultiLine" Width="192px" ReadOnly="True"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 5px">
                                    </td>
                                    <td style="width: 100px; height: 5px">
                                    </td>
                                    <td align="left" style="width: 72px; height: 5px">
                                    </td>
                                    <td style="width: 100px; height: 5px">
                                    </td>
                                    <td style="width: 1230px; height: 5px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 5px">
                                    </td>
                                    <td style="width: 100px; height: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 72px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 1230px">
                                    </td>
                                    <td align="right" style="width: 100px">
                                        &nbsp;Part N0.</td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="Txtpartno" runat="server" Style="z-index: 100; left: 576px; position: static;
                                            top: 880px"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 20px;">
                                    </td>
                                    <td style="width: 100px; height: 20px;">
                                    </td>
                                    <td align="left" style="width: 72px; height: 20px;">
                                    </td>
                                    <td style="width: 100px; height: 20px;">
                                    </td>
                                    <td style="width: 1230px; height: 20px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 20px;">
                                        Description&nbsp;</td>
                                    <td align="left" colspan="2" rowspan="2">
                                        <asp:TextBox ID="Txtfpart" runat="server" Height="40px" Style="z-index: 100; left: 704px;
                                            position: static; top: 568px" TextMode="MultiLine" Width="192px"></asp:TextBox></td>
                                    <td style="width: 100px; height: 20px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 10px">
                                    </td>
                                    <td style="width: 100px; height: 10px">
                                    </td>
                                    <td align="left" colspan="2" style="height: 10px">
                                        <asp:Button ID="Btnxx" runat="server" Font-Bold="True" Style="z-index: 100; left: 112px;
                                            position: static; top: 792px" Text="X" Width="24px" BackColor="Red" BorderStyle="None" ForeColor="White" />
                                        <asp:Button ID="Btnsubapv" runat="server" Style="z-index: 100; left: 136px; position: static;
                                            top: 792px" Text="Submit" BackColor="Red" BorderStyle="None" Font-Bold="True" ForeColor="White" /></td>
                                    <td style="width: 100px; height: 10px">
                                    </td>
                                    <td style="width: 1230px; height: 10px">
                                    </td>
                                    <td align="right" style="width: 100px; height: 10px">
                                    </td>
                                    <td style="width: 100px; height: 10px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 68px">
                                        <asp:TextBox ID="Txtitems" runat="server" Style="z-index: 100; left: 96px; position: static;
                                            top: 872px" Visible="False"></asp:TextBox></td>
                                    <td style="width: 72px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 1230px">
                                    </td>
                                    <td style="width: 100px" align="right">
                                        &nbsp;Fault</td>
                                    <td align="left" colspan="2" rowspan="2">
                                        <asp:TextBox ID="Txtfaulty" runat="server" Style="z-index: 100; left: 576px; position: static;
                                            top: 904px" TextMode="MultiLine" Width="192px"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td colspan="3">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 1230px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td colspan="3">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 1230px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                        <asp:Button ID="Btnfsub" runat="server" BackColor="Red" BorderStyle="None" Font-Bold="True"
                                            ForeColor="White" Style="z-index: 100; left: 576px; position: static; top: 976px"
                                            Text="Submit" /></td>
                                    <td style="width: 77px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 68px">
                                    </td>
                                    <td style="width: 72px">
                                    </td>
                                    <td colspan="5">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 68px; height: 18px;">
                                    </td>
                                    <td style="width: 72px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 1230px; height: 18px">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                    <td style="width: 77px; height: 18px;">
                                    </td>
                                    <td style="width: 100px; height: 18px;">
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="width: 88px">
                    </td>
                    <td colspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Style="font-size: x-small;
                            z-index: 100; left: 272px; color: blue; font-family: tahoma; position: static;
                            top: 1056px" Width="368px">** If this is an added page to your role click to return to your defualt home page </asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="width: 88px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
            </table>
            <br />
        </div>
    
    </div>
    </form>
</body>
</html>
