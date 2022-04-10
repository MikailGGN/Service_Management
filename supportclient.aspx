<%@ Page Language="VB" AutoEventWireup="false" CodeFile="supportclient.aspx.vb" Inherits="supportclient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Client Complaint</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="z-index: 100; left: 144px; width: 22.5cm; position: static; top: 32px;
                height: 626px">
                <tr>
                    <td colspan="4" style="height: 66px">
                        <table 
                            style="border-top: thin solid; font-size: small; z-index: 100; left: 136px;
                            width: 99%; font-family: tahoma; position: static; top: 24px; height: 100%">
                            <tr>
                                <td align="left" style="width: 19px; height: 23px">
                                    <img src="images/inlakslogo.gif" style="z-index: 100; left: 112px; position: static;
                                        top: 40px; height: 16px" /></td>
                                <td align="center" colspan="11" style="height: 23px">
                                    Inverter Implementation And Support Services</td>
                                <td align="center" colspan="1" style="height: 23px">
                                </td>
                                <td align="center" colspan="1" style="height: 23px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 19px">
                                </td>
                                <td align="left" style="width: 41px">
                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="~/images/homemade.jpg"
                                        PostBackUrl="~/support_home.aspx" Style="z-index: 100; left: 152px; position: static;
                                        top: 80px" ToolTip="Home page" Width="40px" /></td>
                                <td align="left" style="width: 41px">
                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="40px" ImageUrl="~/images/techbtn.jpg"
                                        PostBackUrl="~/supporttech.aspx" Style="z-index: 100; left: 232px; position: static;
                                        top: 40px" ToolTip="Support Technician" Width="40px" /></td>
                                <td align="left" style="width: 35px">
                                    <asp:ImageButton ID="ImageButton5" runat="server" Height="40px" ImageUrl="~/images/mailbtn.jpg"
                                        PostBackUrl="~/Sup_bill_mail.aspx" Style="z-index: 100; left: 440px; position: static;
                                        top: 40px" Width="40px" /></td>
                                <td align="left" style="width: 100px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/reportbtn.jpg"
                                        Style="z-index: 100; left: 344px; position: static; top: 64px" Width="40px" /></td>
                                <td align="left" style="width: 100px">
                                </td>
                                <td align="left" style="width: 100px">
                                </td>
                                <td align="left" style="width: 100px">
                                </td>
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
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 19px; height: 34px">
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                                        left: 8px; position: static; top: 96px" Width="48px">Logout</asp:HyperLink><br />
                                    <br />
                                </td>
                                <td align="right" colspan="11" style="height: 34px">
                                    <asp:Menu ID="Menu1" runat="server" BackColor="White" DynamicHorizontalOffset="2"
                                        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
                                        StaticSubMenuIndent="10px" Style="z-index: 100; left: 616px; position: static;
                                        top: 88px">
                                        <Items>
                                            <asp:MenuItem Text="Added Pages" Value="Pages : :">
                                                <asp:MenuItem NavigateUrl="~/Survey_assign.aspx" Text="Assign Technician To Survey"
                                                    Value="New Item"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/surveyreport.aspx" Text="Record Survey" Value="Record Survey">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/materialrequest.aspx" Target="_top" Text="Request Materials"
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
                                    <asp:Menu ID="Menu3" runat="server" Font-Bold="False" Orientation="Horizontal" Style="z-index: 100;
                                        left: 520px; position: static; top: 104px" BackColor="White" 
                                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                                        ForeColor="#284E98" StaticSubMenuIndent="10px">
                                        <Items>
                                            <asp:MenuItem Text="Links" ToolTip="Site Support Services" Value="Support">
                                                <asp:MenuItem NavigateUrl="~/supportclient.aspx" Text="Client Complaint " ToolTip="Record client complaint "
                                                    Value="New Item"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/sitems.aspx" Text="Spares Request" 
                                                    Value="Spares Request"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/supporttech.aspx" Text="Site Support " ToolTip="Assign Technician for support exercise "
                                                    Value="New Item"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/sup_report.aspx" Text="Support Feedback" ToolTip="Technician's feedback report"
                                                    Value="New Item"></asp:MenuItem>
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
                    <td colspan="4">
                        <div style="text-align: center">
                            <table style="border-left: thin solid orangered; border-right: thin solid orangered; border-bottom: thin solid orangered; z-index: 100; left: 136px; width: 846px; position: static; top: 600px; font-size: small; color: orangered; font-family: tahoma;">
                                <tr>
                                    <td align="center" colspan="10" 
                                        style="font-weight: bold; font-size: medium; color: white; font-family: tahoma; background-color: teal">
                                        &nbsp; Customer Compliant</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
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
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
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
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        Client :
                                    </td>
                                    <td align="left" style="width: 100px">
                                        <asp:DropDownList ID="DDLclient" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 272px; position: static; top: 216px" Width="112px">
                                            <asp:ListItem>Select......</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="right" style="width: 100px">
                                        Project :</td>
                                    <td align="left" style="width: 100px">
                                        <asp:DropDownList ID="DDLproject" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 432px; position: static; top: 216px" Width="104px">
                                            <asp:ListItem>Select......</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        Support History</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        State :</td>
                                    <td align="left" style="width: 100px">
                                        <asp:DropDownList ID="DDLstate" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 272px; position: static; top: 240px" Width="112px">
                                            <asp:ListItem>Select......</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td colspan="3" rowspan="8">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#FF3300" 
                                            GridLines="None" Width="406px">
                                            <RowStyle BackColor="#E3EAEB" />
                                            <Columns>
                                                <asp:BoundField DataField="ftype" HeaderText="Fault Type" 
                                                    SortExpression="ftype" />
                                                <asp:BoundField DataField="f_Re_date" HeaderText="Date Resolved" 
                                                    SortExpression="f_Re_date" DataFormatString="{0:d}" />
                                                <asp:BoundField DataField="techid" HeaderText="Technician Id" 
                                                    SortExpression="techid" />
                                            </Columns>
                                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                            <EditRowStyle BackColor="#7C6F57" />
                                            <AlternatingRowStyle BackColor="White" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [ftype], [f_Re_date], [techid] FROM [support] WHERE ([sitecode] = @sitecode)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Txtsite" Name="sitecode" PropertyName="Text" 
                                                    Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        Town :</td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="Txttown" runat="server" AutoCompleteType="Search" Style="z-index: 100;
                                            left: 264px; position: static; top: 288px"></asp:TextBox>
                                        <asp:Button ID="Btntown" runat="server" BackColor="OrangeRed" BorderStyle="None"
                                            Font-Bold="True" ForeColor="White" Style="z-index: 100; left: 416px; position: static;
                                            top: 296px" Text="+" /></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        Address :</td>
                                    <td align="left" colspan="3" rowspan="3">
                                        <asp:ListBox ID="Listaddress" runat="server" AutoPostBack="True" Style="z-index: 100;
                                            left: 256px; position: static; top: 344px" Width="296px"></asp:ListBox></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        Site Code :</td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="Txtsite" runat="server" Style="z-index: 100; left: 240px; position: static;
                                            top: 416px"></asp:TextBox>
                                        <asp:Button ID="Btnwarranty" runat="server" Height="22px" Text="..." />
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                        Fault Type:</td>
                                    <td align="left" style="width: 100px">
                                        <asp:DropDownList ID="DDLtype" runat="server" Style="z-index: 100; left: 240px; position: static;
                                            top: 464px" Width="136px">
                                            <asp:ListItem>Select.....</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px; height: 21px">
                                    </td>
                                    <td align="left" style="width: 100px; height: 21px">
                                    </td>
                                    <td align="left" style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px; height: 21px">
                                        Complaint :</td>
                                    <td align="left" colspan="3" rowspan="4">
                                        <asp:TextBox ID="Txtcompliant" runat="server" Height="80px" Style="z-index: 100;
                                            left: 240px; position: static; top: 528px" TextMode="MultiLine" Width="296px"></asp:TextBox></td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                    <td style="width: 100px; height: 21px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                    </td>
                                    <td align="left" style="width: 100px">
                                        <asp:Button ID="Btnsubmit" runat="server" BackColor="OrangeRed" BorderStyle="None"
                                            Font-Bold="True" ForeColor="White" Style="z-index: 100; left: 464px; position: static;
                                            top: 592px" Text="Submit" /></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
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
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 100px">
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
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
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
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
