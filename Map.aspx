<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Map.aspx.vb" Inherits="Map" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Technician Location</title>
<script language="javascript" type="text/javascript">

</script>
    <style type="text/css">
        .style2
        {
            height: 21px;
        }
        .style3
        {
            height: 11px;
        }
        .style4
        {
            height: 14px;
        }
        .style5
        {
            height: 15px;
        }
        .style6
        {
            height: 13px;
        }
        .style7
        {
            width: 110px;
        }
        .style8
        {
            height: 21px;
            width: 110px;
        }
        .style9
        {
            height: 11px;
            width: 110px;
        }
        .style10
        {
            height: 14px;
            width: 110px;
        }
        .style11
        {
            height: 15px;
            width: 110px;
        }
        .style12
        {
            height: 13px;
            width: 110px;
        }
        .style13
        {
            height: 18px;
            width: 110px;
        }
        .style14
        {
            height: 24px;
            width: 110px;
        }
    </style>
</head>
<body>
<center >
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            &nbsp;<table id="TABLE1" 
                style="background-position: center bottom; z-index: 100; border-left-color: #33ff00;
                background-attachment: inherit; left: 32px; background-image: url(images/new-map.gif);
                border-bottom-color: #33ff00; width: 18cm; border-top-style: ridge; border-top-color: #33ff00;
                background-repeat: no-repeat; border-right-style: ridge; border-left-style: ridge;
                position: static; top: 32px; height: 15cm; border-right-color: #33ff00; border-bottom-style: ridge; font-size: small; color: green; font-family: tahoma;" 
                onclick="return TABLE1_onclick()">
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px; height: 21px">
                    </td>
                    <td colspan="1" style="height: 21px">
                    </td>
                    <td colspan="21" style="height: 21px">
                        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 104px; position: static;
                            top: 48px" Text="Technician's Assigned Locations" Width="568px" ForeColor="Green"></asp:Label></td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td colspan="21">
                        KEY ( Blue Image : Implementation , Red Image : Support )</td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                        <asp:ImageButton ID="bisok" runat="server" Height="16px" Style="z-index: 100;
                            left: 208px; position: static; top: 272px" Width="16px" BorderStyle="None" /></td>
                    <td class="style7">
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                        <asp:ImageButton ID="bssok" runat="server" Height="16px" Style="z-index: 100;
                            left: 208px; position: static; top: 304px" Width="16px" BorderStyle="None" /></td>
                    <td class="style7">
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
                        <asp:ImageButton ID="biyob" runat="server" Height="16px" Style="z-index: 100;
                            left: 536px; position: static; top: 280px" Width="16px" /></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
                    </td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bszam" runat="server" Height="16px" Style="z-index: 100;
                            left: 272px; position: static; top: 320px" Width="16px" BorderStyle="None" /></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bikat" runat="server" Height="16px" Style="z-index: 100;
                            left: 344px; position: static; top: 320px" Width="16px" BorderStyle="None" /></td>
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bsyob" runat="server" Height="16px" Style="z-index: 100;
                            left: 568px; position: static; top: 320px" Width="16px" /></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bikeb" runat="server" Height="16px" ImageAlign="Right"
                            Style="z-index: 100; left: 128px; position: static; top: 352px" Width="16px" /></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td align="right" class="style7">
                        <asp:ImageButton ID="bizam" runat="server" Height="16px" Style="z-index: 100;
                            left: 248px; position: static; top: 368px" Width="16px" BorderStyle="None" /></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bskat" runat="server" Height="16px" Style="z-index: 100;
                            left: 344px; position: static; top: 344px" Width="16px" BorderStyle="None" /></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bsjig" runat="server" Height="16px" Style="z-index: 100;
                            left: 424px; position: static; top: 344px" Width="16px" BorderStyle="None" /></td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bijig" runat="server" Height="16px" Style="z-index: 100;
                            left: 448px; position: static; top: 344px" Width="16px" /></td>
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
                    <td>
                        <asp:ImageButton ID="bsbor" runat="server" Height="16px" Style="z-index: 100;
                            left: 632px; position: static; top: 344px" Width="16px" /></td>
                    <td style="width: 100px">
                        &nbsp;</td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px;" align="right">
                        <asp:ImageButton ID="bskeb" runat="server" Height="15px" Style="z-index: 100;
                            left: 16px; position: static; top: 328px" Width="15px" /></td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td class="style8">
                    </td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td style="width: 100px; height: 21px;">
                        <asp:ImageButton ID="bikan" runat="server" Height="16px" Style="z-index: 100;
                            left: 376px; position: static; top: 368px" Width="16px" BorderStyle="None" /></td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td class="style2">
                    </td>
                    <td style="width: 100px; height: 21px;">
                        <asp:ImageButton ID="bibor" runat="server" Height="16px" Style="z-index: 100;
                            left: 672px; position: static; top: 368px" Width="16px" /></td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
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
                        <asp:ImageButton ID="bskan" runat="server" Height="16px" Style="z-index: 100;
                            left: 376px; position: static; top: 392px" Width="16px" /></td>
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                        <br />
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td class="style9">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td class="style3">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                    <td style="width: 100px; height: 11px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bikad" runat="server" Height="16px" Style="z-index: 100;
                            left: 296px; position: static; top: 408px" Width="16px" /></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bibau" runat="server" Height="16px" Style="z-index: 100;
                            left: 440px; position: static; top: 488px" Width="16px" /></td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bsbau" runat="server" Height="16px" Style="z-index: 100;
                            left: 512px; position: static; top: 328px" Width="16px" /></td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bsgom" runat="server" Height="16px" ImageAlign="Top"
                            Style="z-index: 100; left: 480px; position: static; top: 576px" Width="16px" /></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bskad" runat="server" Height="16px" Style="z-index: 100;
                            left: 344px; position: static; top: 504px" Width="16px" /></td>
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
                    <td style="width: 100px">
                        <asp:ImageButton ID="bigom" runat="server" Height="16px" Style="z-index: 100;
                            left: 536px; position: static; top: 504px" Width="16px" /></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
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
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                        <asp:ImageButton ID="binig" runat="server" Height="16px" Style="z-index: 100;
                            left: 8px; position: static; top: 384px" Width="20px" /></td>
                    <td class="style10">
                        <asp:ImageButton ID="bsnig" runat="server" Height="16px" Style="z-index: 100;
                            left: 248px; position: static; top: 576px" Width="16px" /></td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td class="style4">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                    <td style="width: 100px; height: 14px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                        <asp:ImageButton ID="bskwa" runat="server" Height="16px" Style="z-index: 100;
                            left: 0px; position: static; top: 384px" Width="16px" /></td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td class="style10">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                        <asp:ImageButton ID="bsada" runat="server" Height="16px" Style="z-index: 100;
                            left: 632px; position: static; top: 568px" Width="16px" /></td>
                    <td class="style4">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td class="style10">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td align="right" style="width: 100px; height: 14px">
                        &nbsp;<asp:ImageButton ID="bsfct" runat="server" Height="16px" Style="z-index: 100;
                            left: 328px; position: static; top: 616px" Width="16px" /></td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                        <asp:ImageButton ID="bspla" runat="server" Height="16px" ImageAlign="Top"
                            Style="z-index: 100; left: 448px; position: static; top: 632px" Width="16px" />
                    </td>
                    <td style="width: 100px; height: 14px">
                        <asp:ImageButton ID="bipla" runat="server" Height="16px" Style="z-index: 100;
                            left: 456px; position: static; top: 392px" Width="16px" /></td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px" align="right">
                        <asp:ImageButton ID="biada" runat="server" Height="16px" Style="z-index: 100;
                            left: 568px; position: static; top: 624px" Width="16px" /></td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td class="style4">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                        <asp:ImageButton ID="bsoyo" runat="server" Height="16px" Style="z-index: 100;
                            left: 16px; position: static; top: 344px" Width="16px" /></td>
                    <td style="width: 100px; height: 14px">
                        <asp:ImageButton ID="bikwa" runat="server" Height="16px" Style="z-index: 100;
                            left: 176px; position: static; top: 624px" Width="16px" /></td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td class="style10">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td align="right" style="width: 100px; height: 14px">
                        <asp:ImageButton ID="bifct" runat="server" Height="16px" Style="z-index: 100;
                            left: 296px; position: static; top: 664px" Width="16px" /></td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                        <asp:ImageButton ID="binas" runat="server" Height="16px" Style="z-index: 100;
                            left: 368px; position: static; top: 672px" Width="16px" /></td>
                    <td style="width: 100px; height: 14px">
                        &nbsp;<asp:ImageButton ID="bsnas" runat="server" Height="16px" Style="z-index: 102;
                            left: 488px; position: static; top: 648px" Width="16px" /></td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                        <asp:ImageButton ID="bitar" runat="server" Height="16px" Style="z-index: 100;
                            left: 512px; position: static; top: 648px" Width="16px" /></td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td class="style4">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td class="style11">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                        <asp:ImageButton ID="bstar" runat="server" Height="16px" Style="z-index: 100;
                            left: 504px; position: static; top: 664px" Width="16px" /></td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td class="style5">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                    <td style="width: 100px; height: 15px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                        &nbsp;<asp:ImageButton ID="bioyo" runat="server" Height="16px" Style="z-index: 100;
                            left: 120px; position: static; top: 712px" Width="16px" /></td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                        &nbsp;<asp:ImageButton ID="biosu" runat="server" Height="16px" Style="z-index: 100;
                            left: 192px; position: static; top: 696px" Width="16px" />
                        <asp:ImageButton ID="bsosu" runat="server" Height="16px" Style="z-index: 100;
                            left: 144px; position: static; top: 752px" Width="16px" /></td>
                    <td style="width: 100px; height: 13px">
                        <asp:ImageButton ID="bieki" runat="server" Height="16px" Style="z-index: 100;
                            left: 0px; position: static; top: 0px" Width="16px" />
                        <asp:ImageButton ID="bseki" runat="server" Height="16px" Style="z-index: 100;
                            left: 32px; position: static; top: 400px" Width="16px" /></td>
                    <td class="style12">
                    </td>
                    <td style="width: 100px; height: 13px">
                        <asp:ImageButton ID="bskog" runat="server" Height="16px" Style="z-index: 100;
                            left: 0px; position: static; top: 0px" Width="16px" />
                        <asp:ImageButton ID="bikog" runat="server" Height="16px" Style="z-index: 100;
                            left: 288px; position: static; top: 720px" Width="16px" /></td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                        <asp:ImageButton ID="bsben" runat="server" Height="16px" Style="z-index: 100;
                            left: 384px; position: static; top: 704px" Width="16px" /></td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td class="style6">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                    <td style="width: 100px; height: 13px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td align="left" colspan="2" style="height: 14px">
                        <asp:ImageButton ID="biogu" runat="server" Height="16px" ImageAlign="Top"
                            Style="z-index: 100; left: 104px; position: static; top: 744px" Width="16px" /><asp:ImageButton
                                ID="bsogu" runat="server" Height="16px" Style="z-index: 100; left: 136px;
                                position: static; top: 744px" Width="16px" />
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                        <asp:ImageButton ID="biond" runat="server" Height="16px" Style="z-index: 100;
                            left: 208px; position: static; top: 728px" Width="16px" /></td>
                    <td class="style10">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                        <asp:ImageButton ID="biben" runat="server" Height="16px" Style="z-index: 100;
                            left: 488px; position: static; top: 728px" Width="16px" /></td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td class="style4">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td rowspan="2" style="width: 100px">
                        <asp:ImageButton ID="bilag" runat="server" Height="16px" ImageAlign="Baseline"
                            Style="z-index: 100; left: 0px; position: static; top: 0px" Width="16px" BorderStyle="None" /></td>
                    <td style="width: 100px" rowspan="2">
                        <asp:ImageButton ID="bslag" runat="server" Height="16px" ImageAlign="Top"
                            Style="z-index: 100; left: 0px; position: static; top: 0px" Width="16px" BorderStyle="None" /></td>
                    <td style="width: 100px" align="right">
                        <asp:ImageButton ID="bsond" runat="server" Height="16px" Style="z-index: 100;
                            left: 176px; position: static; top: 752px" Width="16px" /></td>
                    <td style="width: 100px">
                    </td>
                    <td align="right" class="style7">
                        </td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="biedo" runat="server" Height="16px" Style="z-index: 100;
                            left: 264px; position: static; top: 760px" Width="16px" /></td>
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
                    <td style="width: 100px">
                    </td>
                    <td align="right" colspan="8" rowspan="5">
                        <asp:ListBox ID="ListBox1" runat="server" Height="96px" Style="z-index: 100; left: 488px;
                            position: static; top: 600px" Width="224px">
                            <asp:ListItem>Town ++ Site Code ++Technician </asp:ListItem>
                        </asp:ListBox></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px" align="right">
                    </td>
                    <td class="style7">
                        <asp:ImageButton ID="bsedo" runat="server" Height="16px" Style="z-index: 100;
                            left: 232px; position: static; top: 760px" Width="16px" /></td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="biana" runat="server" Height="16px" Style="z-index: 100;
                            left: 304px; position: static; top: 792px" Width="16px" /></td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bsenu" runat="server" Height="16px" Style="z-index: 100;
                            left: 328px; position: static; top: 792px" Width="16px" /></td>
                    <td style="width: 100px">
                        <asp:ImageButton ID="bsebo" runat="server" Height="16px" Style="z-index: 100;
                            left: 360px; position: static; top: 800px" Width="16px" /></td>
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
                    <td style="width: 300px; height: 18px">
                    </td>
                    <td colspan="1" style="height: 18px">
                    </td>
                    <td colspan="2" style="height: 18px">
                        <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 104px; position: static;
                            top: 816px" Width="48px"></asp:Label></td>
                    <td style="width: 100px; height: 18px;">
                    </td>
                    <td style="width: 100px; height: 18px;">
                    </td>
                    <td class="style13">
                    </td>
                    <td style="width: 100px; height: 18px;">
                    </td>
                    <td style="width: 100px; height: 18px;">
                        <asp:ImageButton ID="bsana" runat="server" Height="16px" Style="z-index: 100;
                            left: 304px; position: static; top: 808px" Width="16px" /></td>
                    <td style="width: 100px; height: 18px;">
                        <asp:ImageButton ID="bienu" runat="server" Height="16px" Style="z-index: 100;
                            left: 368px; position: static; top: 416px" Width="16px" /></td>
                    <td style="width: 100px; height: 18px;">
                        <asp:ImageButton ID="biebo" runat="server" Height="16px" Style="z-index: 100;
                            left: 360px; position: static; top: 816px" Width="16px" /></td>
                    <td style="width: 100px; height: 18px;">
                        <asp:ImageButton ID="bicro" runat="server" Height="16px" Style="z-index: 100;
                            left: 392px; position: static; top: 816px" Width="16px" /></td>
                    <td style="width: 100px; height: 18px;">
                    </td>
                    <td style="width: 100px; height: 18px;">
                    </td>
                    <td style="width: 100px; height: 18px;">
                    </td>
                    <td style="width: 100px; height: 18px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px; height: 24px">
                    </td>
                    <td style="width: 100px; height: 24px">
                    </td>
                    <td style="width: 100px; height: 24px">
                    </td>
                    <td style="width: 100px; height: 24px;">
                        <br />
                    </td>
                    <td style="width: 100px; height: 24px;">
                    </td>
                    <td style="width: 100px; height: 24px;" align="right">
                        <asp:ImageButton ID="bidel" runat="server" Height="16px" Style="z-index: 100;
                            left: 208px; position: static; top: 808px" Width="16px" /></td>
                    <td class="style14">
                        <asp:ImageButton ID="bsdel" runat="server" Height="16px" Style="z-index: 100;
                            left: 240px; position: static; top: 808px" Width="16px" /></td>
                    <td style="width: 100px; height: 24px;">
                    </td>
                    <td style="width: 100px; height: 24px;" align="right">
                        <asp:ImageButton ID="biimo" runat="server" Height="16px" Style="z-index: 100;
                            left: 304px; position: static; top: 840px" Width="16px" />
                    </td>
                    <td style="width: 100px; height: 24px;">
                        <asp:ImageButton ID="biabi" runat="server" Height="16px" Style="z-index: 100;
                            left: 336px; position: static; top: 840px" Width="16px" /></td>
                    <td style="width: 100px; height: 24px;">
                    </td>
                    <td style="width: 100px; height: 24px;">
                        <asp:ImageButton ID="bscro" runat="server" Height="16px" Style="z-index: 100;
                            left: 392px; position: static; top: 856px" Width="16px" /></td>
                    <td style="width: 100px; height: 24px;">
                    </td>
                    <td style="width: 100px; height: 24px;">
                    </td>
                    <td style="width: 100px; height: 24px;">
                    </td>
                    <td style="width: 100px; height: 24px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
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
                    <td class="style7">
                    </td>
                    <td align="center" colspan="3">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:ImageButton ID="bsimo" runat="server"
                            Height="16px" Style="z-index: 100; left: 280px; position: static; top: 888px"
                            Width="16px" />&nbsp;<asp:ImageButton ID="bsabi" runat="server" Height="16px"
                                Style="z-index: 100; left: 304px; position: static; top: 880px" Width="16px" /></td>
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
                    <td style="width: 300px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                        </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td align="right" colspan="2" style="height: 21px">
                        <asp:ImageButton ID="bsbay" runat="server" Height="16px" Style="z-index: 100;
                            left: 240px; position: static; top: 864px" Width="16px" /><asp:ImageButton ID="bibay"
                                runat="server" Height="16px" Style="z-index: 100; left: 256px; position: static;
                                top: 904px" Width="16px" /></td>
                    <td style="height: 21px" align="right" colspan="2">
                        <asp:ImageButton ID="biriv" runat="server" Height="16px" Style="z-index: 100;
                            left: 312px; position: static; top: 888px" Width="16px" /><asp:ImageButton ID="bsriv"
                                runat="server" Height="16px" Style="z-index: 100; left: 304px; position: static;
                                top: 904px" Width="16px" /></td>
                    <td style="height: 21px" colspan="2">
                        <asp:ImageButton ID="biakw" runat="server" Height="16px" Style="z-index: 100;
                            left: 336px; position: static; top: 904px" Width="16px" />
                        <asp:ImageButton ID="bsakw" runat="server" Height="16px" Style="z-index: 100;
                            left: 352px; position: static; top: 904px" Width="16px" /></td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td class="style2">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td class="style8">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td class="style2">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                </tr>
                 
            </table>
        </div>
    
    </div>
    </form>
    </center>
</body>
</html>
