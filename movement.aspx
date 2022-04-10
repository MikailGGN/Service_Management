<%@ Page Language="VB" AutoEventWireup="false" CodeFile="movement.aspx.vb" Inherits="movement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 54%;
            height: 100px;
        }
        .style2
        {
        }
        .style3
        {
            width: 29px;
        }
        .style4
        {
            text-align: left;
        }
        .style5
        {
            text-align: right;
        }
        .newStyle1
        {
            position: static;
            width: 20cm;
            height: 20cm;
        }
        .newStyle2
        {
            position: static;
            width: 15cm;
            height: 15cm;
        }
        .newStyle3
        {
            z-index: auto;
            position: fixed;
            width: 15cm;
            height: 12em;
        }
        .style6
        {
            width: 29px;
            height: 41px;
        }
        .style7
        {
            height: 41px;
        }
        .style8
        {
            text-align: left;
            height: 41px;
        }
    </style>
</head>
<body>
<center >
    <form id="form1" runat="server">
    <div>
    
        <table  class="style1">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2" colspan="6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    Project</td>
                <td>
                    Sitecode</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    </td>
                <td class="style7">
                    <asp:DropDownList ID="DDLproject" runat="server" AutoPostBack="True" 
                        Height="22px" Width="226px">
                        <asp:ListItem>select....</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="DDLsitecode" runat="server" Height="22px" Width="103px" 
                        AutoPostBack="True">
                        <asp:ListItem>Select....</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style7">
                    </td>
                <td class="style8">
                    </td>
                <td class="style7">
                    </td>
                <td class="style7">
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    Designated Site Address</td>
                <td>
                    &nbsp;</td>
                <td>
                    Technician</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2" rowspan="6">
                    <asp:TextBox ID="Txtaddress" runat="server" Height="119px" TextMode="MultiLine" 
                        Width="222px"></asp:TextBox>
                </td>
                <td style="text-align: right">
                    Name</td>
                <td align="left">
                    <asp:TextBox ID="Txtname1" runat="server"></asp:TextBox>
                </td>
                <td class="style5">
                    N0. of Days</td>
                <td align="left">
                    <asp:TextBox ID="Txtnday" runat="server" Width="45px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style5">
                    Start Date</td>
                <td align="left">
                    <asp:TextBox ID="Txtstart" runat="server" Width="76px"></asp:TextBox>
                    <asp:Button ID="Btndate" runat="server" Height="20px" Text="...." 
                        Width="30px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td style="text-align: right">
                    Exception</td>
                <td align="left">
                    <asp:DropDownList ID="DDLexcept1" runat="server" AutoPostBack="True" 
                        Height="22px" Width="128px">
                        <asp:ListItem>Select....</asp:ListItem>
                        <asp:ListItem>Accomodation</asp:ListItem>
                        <asp:ListItem>Feeding</asp:ListItem>
                        <asp:ListItem>Local Transport</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:TextBox ID="Txtsstate" runat="server" Height="22px" Visible="False"></asp:TextBox>
                </td>
                <td rowspan="6">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                        ForeColor="#003399" Height="56px" Visible="False" Width="51px">
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                            Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    </asp:Calendar>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td style="text-align: right">
                    Location</td>
                <td align="left">
                    <asp:TextBox ID="Txtlocatn1" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:TextBox ID="Txtspiont" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td style="text-align: right">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td style="text-align: right">
                    Accomodation</td>
                <td align="left">
                    <asp:TextBox ID="Txtaccom1" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    (x Nights)</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    Technician&#39;s code</td>
                <td style="text-align: right">
                    Feeding</td>
                <td align="left">
                    <asp:TextBox ID="Txtfeed1" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    (x Days)</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td align="left" class="style2" rowspan="4">
                    <asp:ListBox ID="Listtecode" runat="server" Height="99px" Width="231px" 
                        AutoPostBack="True">
                    </asp:ListBox>
                </td>
                <td style="text-align: right">
                    Local Transport</td>
                <td align="left">
                    <asp:TextBox ID="Txtltran1" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    (x Days)</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td style="text-align: right">
                    Travel</td>
                <td align="left">
                    <asp:TextBox ID="Txttrav1" runat="server"></asp:TextBox>
                </td>
                <td align="left" class="style4">
                    <asp:TextBox ID="Txttrav2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="Txtlastjob" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    (location-site)</td>
                <td class="style4">
                    (site-base)</td>
                <td>
                    <asp:TextBox ID="Txtreturn" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td style="text-align: right">
                    <asp:Button ID="Btntotal" runat="server" Text="Total" Width="39px" />
                </td>
                <td align="left">
                    <asp:TextBox ID="Txttotal1" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="Txttechlvl" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    <asp:Button ID="Btnre1" runat="server" Text="Submit" Width="128px" />
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td align="left">
                    <asp:TextBox ID="Txtstown" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
    
    </div>
    </form>
    </center>
</body>
</html>
