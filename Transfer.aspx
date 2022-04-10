<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Transfer.aspx.vb" Inherits="Transfer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Transfer</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
    <style type="text/css">
        .newStyle1
        {
            font-family: Tahoma;
            font-size: small;
            color: #0000FF;
        }
        .newStyle2
        {
            font-family: Tahoma;
            font-size: small;
            color: #0066FF;
        }
        .newStyle3
        {
            font-family: Tahoma;
            font-size: small;
            color: #0066FF;
        }
        .newStyle4
        {
            font-family: Tahoma;
            font-size: small;
            font-weight: bold;
            color: #0000FF;
        }
        .style1
        {
            font-family: Tahoma;
        }
        .style3
        {
            width: 100px;
            font-family: Tahoma;
        }
        .style4
        {
            width: 8px;
            font-family: Tahoma;
        }
        .style5
        {
            width: 100px;
            font-family: Tahoma;
            font-weight: normal;
        }
        .newStyle5
        {
            border-style: none solid solid solid;
            border-width: thin;
            border-color: #0000FF;
        }
        .newStyle1
        {
        }
        .newStyle6
        {
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            border-right-width: medium;
            border-bottom-width: medium;
            border-left-width: medium;
            border-color: #0000FF;
        }
        .newStyle7
        {
            font-weight: bold;
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="z-index: 100; left: 72px; width: 20cm; position: static; top: 40px;
                height: 10cm; color: #0066FF;" class="style5">
                <tr>
                    <td colspan="4">
                        <table id="TABLE1" style="border-top: thin solid; font-size: small; z-index: 100;
                            left: 40px; width: 100%; font-family: tahoma; position: static; top: 24px;
                            height: 100%" onclick="return TABLE1_onclick()">
                            <tr>
                                <td align="left" style="width: 19px">
                                    <img src="images/inlakslogo.gif" style="z-index: 100; left: 112px; position: static;
                                        top: 40px; height: 16px" /></td>
                                <td align="center">
                                    Inverter Implementation And Support Services</td>
                                <td align="center" colspan="1">
                                </td>
                                <td align="center" colspan="1">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 19px; height: 34px">
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                                        left: 8px; position: static; top: 96px" Width="48px">Logout</asp:HyperLink><br />
                                    <br />
                                </td>
                                <td align="right" style="height: 34px">
                                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Style="z-index: 100;
                                        left: 616px; position: static; top: 88px" BackColor="White" 
                                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                                        ForeColor="#284E98" StaticSubMenuIndent="10px" Font-Bold="True">
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
                                    <asp:Menu ID="Menu2" runat="server" Font-Bold="True" Orientation="Horizontal" Style="z-index: 100;
                                        left: 568px; position: static; top: 112px" BackColor="White" 
                                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                                        ForeColor="#284E98" StaticSubMenuIndent="10px" Width="50px">
                                        <Items>
                                            <asp:MenuItem Text="Links" ToolTip="Materials request and supply " Value="Equipment Handling">
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
                                    &nbsp;
                                </td>
                                <td align="left" colspan="1" style="height: 34px">
                                </td>
                                <td align="left" colspan="1" style="height: 34px">
                                </td>
                            </tr>
                            </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="color: #0066FF; font-weight: 700;" colspan="2">
                        Equipment Transfers</td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <div style="text-align: center">
                            <table style="z-index: 100; left: 56px; width: 744px; position: static; top: 112px; font-size: small; font-weight: 700; font-family: Tahoma;">
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 192px" class="style1">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 8px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2" class="style1">
                                        Way Bill N0. :</td>
                                    <td align="left" class="style3">
                                        <asp:TextBox ID="Txtwaybill" runat="server" Style="z-index: 100; left: 144px; position: static;
                                            top: 88px"></asp:TextBox></td>
                                    <td style="width: 8px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2" class="style1">
                                        Hauler :</td>
                                    <td align="left" colspan="3" class="style1">
                                        <asp:DropDownList ID="DDLhauler" runat="server" Style="z-index: 100; left: 136px;
                                            position: static; top: 120px" Width="320px">
                                            <asp:ListItem>Select......</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 192px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 8px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6">
                                        <div style="text-align: center">
                                            <table style="z-index: 100; left: 56px; width: 744px; position: static; top: 96px">
                                                <tr>
                                                    <td colspan="3" class="style1">
                                                        Search Carriage Location</td>
                                                    <td align="right" style="width: 100px">
                                                    </td>
                                                    <td colspan="3" class="style1" align="left">
                                                    Search Delivery Location</td>
                                                    <td class="style1">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px" class="style1">
                                                        &nbsp;</td>
                                                    <td align="right" style="width: 100px" class="style1">
                                                        Project</td>
                                                    <td align="left" class="style3">
                                        <asp:DropDownList ID="DDLproject" runat="server" Style="z-index: 100; left: 144px;
                                            position: static; top: 64px" Width="152px" AutoPostBack="True">
                                            <asp:ListItem>Select...</asp:ListItem>
                                        </asp:DropDownList></td>
                                                    <td align="right" style="width: 100px" class="style1">
                                                        &nbsp;</td>
                                                    <td style="width: 100px" class="style1" align="right">
                                                        Project</td>
                                                    <td align="left" class="style1" colspan="2">
                                                    <asp:DropDownList ID="DDLdproject" runat="server" Style="z-index: 100; left: 256px;
                                                        position: static; top: 848px" Width="130px" AutoPostBack="True">
                                                        <asp:ListItem>Select.....</asp:ListItem>
                                                    </asp:DropDownList>
                                                    </td>
                                                    <td style="width: 100px" class="style1">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td align="right" style="width: 100px" class="style1">
                                                        &nbsp;State</td>
                                                    <td align="left" class="style3">
                                                        <asp:DropDownList ID="DDLcstate" runat="server" Style="z-index: 100; left: 248px;
                                                            position: static; top: 144px" AutoPostBack="True">
                                                            <asp:ListItem>Select......</asp:ListItem>
                                                        </asp:DropDownList></td>
                                                    <td align="right" style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px" align="right">
                                                        State</td>
                                                    <td align="left" class="style3">
                                                    <asp:DropDownList ID="DDLdstate" runat="server" Style="z-index: 100; left: 264px;
                                                        position: static; top: 600px" AutoPostBack="True" Width="80px">
                                                        <asp:ListItem>Select....</asp:ListItem>
                                                    </asp:DropDownList>
                                                    </td>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px" class="style1">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td align="right" style="width: 100px" class="style1">
                                                        Town</td>
                                                    <td align="left" class="style3">
                                                        <asp:DropDownList ID="DDLctown" runat="server" Style="z-index: 100; left: 256px;
                                                            position: static; top: 168px" Width="88px" AutoPostBack="True">
                                                            <asp:ListItem>Select....</asp:ListItem>
                                                        </asp:DropDownList></td>
                                                    <td align="right" style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px" align="right">
                                                        Town</td>
                                                    <td align="left" class="style3">
                                                    <asp:DropDownList ID="DDLdtown" runat="server" Style="z-index: 100; left: 248px;
                                                        position: static; top: 632px" AutoPostBack="True">
                                                        <asp:ListItem>Select....</asp:ListItem>
                                                    </asp:DropDownList>
                                                    </td>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px" class="style1">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td align="right" style="width: 100px" class="style1">
                                                        Address</td>
                                                    <td align="left" colspan="2" class="style1">
                                                        <asp:DropDownList ID="DDLcaddress" runat="server" Style="z-index: 100; left: 248px;
                                                            position: static; top: 200px" Width="200px" AutoPostBack="True">
                                                            <asp:ListItem>Select.....</asp:ListItem>
                                                        </asp:DropDownList></td>
                                                    <td style="width: 100px" align="right">
                                                        Address</td>
                                                    <td align="left" class="style1" colspan="2">
                                                    <asp:DropDownList ID="DDLdaddress" runat="server" Style="z-index: 100; left: 248px;
                                                        position: static; top: 656px" Width="192px" AutoPostBack="True">
                                                        <asp:ListItem>Select.....</asp:ListItem>
                                                    </asp:DropDownList>
                                                    </td>
                                                    <td style="width: 100px" class="style1">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td align="right" style="width: 100px">
                                                    </td>
                                                    <td align="left" style="width: 100px">
                                                    </td>
                                                    <td align="right" style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px" class="style1">
                                                        &nbsp;</td>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px" class="style1">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td align="right" style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td align="right" style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px" class="style1">
                                                        &nbsp;</td>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px" class="style1">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px" class="style1">
                                        &nbsp;</td>
                                    <td align="center" class="style1" colspan="2">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        Carriage Site Code</td>
                                    <td align="left" style="width: 8px" class="style1">
                                        &nbsp;</td>
                                    <td align="left" class="style1" colspan="2">
                                        Delivery Site Code</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        </td>
                                    <td align="right" style="width: 192px" class="style1">
                                        &nbsp;
                                    </td>
                                    <td align="right" class="style3">
                                        <asp:TextBox ID="txtcarrycode" runat="server" Style="z-index: 100; left: 208px; position: static;
                                            top: 256px"></asp:TextBox></td>
                                    <td align="left" style="width: 8px">
                                    </td>
                                    <td align="left" class="style3">
                                        <asp:TextBox ID="Txtdelivercode" runat="server" Style="z-index: 100; left: 224px; position: static;
                                            top: 576px"></asp:TextBox>
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 192px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 8px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 192px">
                                    </td>
                                    <td align="right" rowspan="8" class="style3">
                                        <asp:ListBox ID="Listgmat" runat="server" Height="176px" Style="z-index: 100; left: 224px;
                                            position: static; top: 280px" Width="184px"></asp:ListBox></td>
                                    <td align="left" style="width: 8px">
                                    </td>
                                    <td align="left" rowspan="8" class="style3">
                                        <asp:ListBox ID="Listsmat" runat="server" Height="176px" Style="z-index: 100; left: 600px;
                                            position: static; top: 288px" Width="184px"></asp:ListBox></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 192px">
                                    </td>
                                    <td align="left" style="width: 8px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 192px">
                                    </td>
                                    <td align="left" class="style4">
                                        <asp:Button ID="Btnffw" runat="server" Style="z-index: 100; left: 400px; position: static;
                                            top: 384px" Text=">>" /></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 192px">
                                    </td>
                                    <td align="left" class="style4">
                                        <asp:Button ID="Btnrw" runat="server" Style="z-index: 100; left: 392px; position: static;
                                            top: 416px" Text="<<" /></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 192px">
                                    </td>
                                    <td align="left" style="width: 8px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 192px">
                                    </td>
                                    <td align="left" style="width: 8px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 192px">
                                    </td>
                                    <td align="left" style="width: 8px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 192px">
                                    </td>
                                    <td align="left" style="width: 8px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 192px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 8px">
                                    </td>
                                    <td style="width: 100px" align="left" class="style1">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px; height: 8px;">
                                        </td>
                                    <td align="right" style="width: 192px; height: 8px" class="style1">
                                        &nbsp;</td>
                                    <td align="left" style="width: 100px; height: 8px;" class="style1">
                                        &nbsp;</td>
                                    <td align="right" style="width: 8px; height: 8px;">
                                    </td>
                                    <td style="width: 100px; height: 8px;">
                                    </td>
                                    <td style="width: 100px; height: 8px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="right" style="width: 192px">
                                    </td>
                                    <td align="left" class="style5">
                                        <asp:Button ID="btnsumbit" runat="server" BackColor="#0066FF" 
                                            BorderStyle="None" Font-Bold="True" ForeColor="#CCFFFF" Text="Submit" 
                                            Width="82px" />
                                    </td>
                                    <td align="right" style="width: 8px">
                                    </td>
                                    <td class="style3">
                                                    <asp:TextBox ID="Txtitem" runat="server" Style="z-index: 100; left: 536px; position: static;
                                                        top: 96px" AutoCompleteType="Search" Visible="False"></asp:TextBox>
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px" class="style1">
                                        &nbsp;</td>
                                    <td align="right" style="width: 192px" class="style1">
                                        &nbsp;</td>
                                    <td align="right" style="width: 100px" class="style1">
                                        &nbsp;</td>
                                    <td align="right" style="width: 8px" class="style1">
                                        &nbsp;</td>
                                    <td class="style3">
                                                    <asp:TextBox ID="Txtitems" runat="server" Style="z-index: 100; left: 536px; position: static;
                                                        top: 96px" AutoCompleteType="Search" Visible="False"></asp:TextBox>
                                    </td>
                                    <td style="width: 100px" class="style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="6" class="style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 192px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 8px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 192px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 8px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td colspan="4">
                                <code>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Style="font-size: x-small;
                            z-index: 100; left: 280px; position: static; top: 1184px; font-weight: 400;" Width="516px" 
                                            Font-Names="tahoma">** If this is an added page to your role click to return to your defualt home page </asp:LinkButton>
                                </code>
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
                    <td style="width: 100px">
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
