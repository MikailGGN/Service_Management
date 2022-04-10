<%@ Page Language="VB" AutoEventWireup="false" CodeFile="changepassword.aspx.vb" Inherits="changepassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>User Information</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="z-index: 100; left: 160px; width: 8in; position: static; top: 32px;
                height: 10cm; font-size: small; color: blue; font-family: tahoma; border-right: blue thin solid; border-top: blue thin solid; border-left: blue thin solid; border-bottom: blue thin solid;">
                <tr>
                    <td colspan="1" style="width: 15px">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 112px; position: static;
                            top: 24px; height: 16px" /></td>
                    <td colspan="5">
                        Inverter Implementation And Support Services</td>
                </tr>
                <tr>
                    <td colspan="6">
                        <table id="TABLE1" onclick="return TABLE1_onclick()" style="z-index: 100; left: 112px;
                            width: 100%; position: static; top: 40px; height: 100%">
                            <tr>
                                <td align="right" style="width: 29px; height: 27px">
                                    <asp:Menu ID="Menu2" runat="server" BackColor="#B5C7DE" BorderColor="White" BorderStyle="Groove"
                                        DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em"
                                        ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px" Style="z-index: 100;
                                        left: 72px; position: static; top: 40px">
                                        <StaticSelectedStyle BackColor="#507CD1" />
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <DynamicMenuStyle BackColor="#B5C7DE" />
                                        <DynamicSelectedStyle BackColor="#507CD1" />
                                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <Items>
                                            <asp:MenuItem Text="Implementation" Value="Implementation">
                                                <asp:MenuItem NavigateUrl="~/Project_registration.aspx" Text="Project Registration"
                                                    ToolTip="Register a New Project" Value="Project Registration">
                                                    <asp:MenuItem NavigateUrl="~/siteregistration.aspx" Text="Site Registration" ToolTip="Register a Site : Town &amp; State"
                                                        Value="Site Registration"></asp:MenuItem>
                                                    <asp:MenuItem NavigateUrl="~/Survey_assign.aspx" Text="Get Technician To Survey"
                                                        ToolTip="Assign a Technician to Survey site " Value="Get Technician To Survey"></asp:MenuItem>
                                                    <asp:MenuItem NavigateUrl="~/surveyreport.aspx" Text="Technician Survey Report" ToolTip="Record site Survey"
                                                        Value="Technician Survey Report"></asp:MenuItem>
                                                    <asp:MenuItem NavigateUrl="~/not_surveyed.aspx" Text="Predict Site Survey" ToolTip="To give site code without actual Survey "
                                                        Value="Predict Site Survey"></asp:MenuItem>
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/joballocation.aspx" Text="Site Implementation" ToolTip="Assign a team to implementation"
                                                    Value="Site Implementation"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/certification.aspx" Text="Job Certification" ToolTip="Signed the job cards"
                                                    Value="Job Certification"></asp:MenuItem>
                                                <asp:MenuItem Text="Material Request" Value="Material Request"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </Items>
                                    </asp:Menu>
                                </td>
                                <td align="left" style="width: 19px; height: 27px">
                                    <asp:Menu ID="Menu3" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                        Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
                                        StaticSubMenuIndent="10px" Style="z-index: 100; left: 304px; position: static;
                                        top: 48px">
                                        <StaticSelectedStyle BackColor="#507CD1" />
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <DynamicMenuStyle BackColor="#B5C7DE" />
                                        <DynamicSelectedStyle BackColor="#507CD1" />
                                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <Items>
                                            <asp:MenuItem Text="Support" ToolTip="Equipment Support Services" Value="Support">
                                                <asp:MenuItem NavigateUrl="~/support.aspx" Text="Client Complaint " ToolTip="Record client complaint "
                                                    Value="New Item"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/supporttech.aspx" Text="Site Support " ToolTip="Assign Technician for support exercise "
                                                    Value="New Item"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/sup_report.aspx" Text="Support Feedback" ToolTip="Technician's feedback report"
                                                    Value="New Item"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </Items>
                                    </asp:Menu>
                                </td>
                                <td align="left" style="width: 86px; height: 27px">
                                    <asp:Menu ID="Menu4" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                        Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
                                        StaticSubMenuIndent="10px" Style="z-index: 100; left: 392px; position: static;
                                        top: 56px">
                                        <StaticSelectedStyle BackColor="#507CD1" />
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <DynamicMenuStyle BackColor="#B5C7DE" />
                                        <DynamicSelectedStyle BackColor="#507CD1" />
                                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <Items>
                                            <asp:MenuItem Text="Equipment Handling" ToolTip="Materials request and supply " Value="Equipment Handling">
                                                <asp:MenuItem NavigateUrl="~/Deployment.aspx" Text="Store Supplies" ToolTip="materials released from store"
                                                    Value="Store Supplies"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/Deliveryprocess.aspx" Text="Delivery And Transfer" ToolTip="Materials Delivery"
                                                    Value="Delivery And Transfer"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </Items>
                                    </asp:Menu>
                                </td>
                                <td style="width: 97px; height: 27px">
                                    <asp:Menu ID="Menu5" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                        Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
                                        StaticSubMenuIndent="10px" Style="z-index: 100; left: 480px; position: static;
                                        top: 56px">
                                        <StaticSelectedStyle BackColor="#507CD1" />
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <DynamicMenuStyle BackColor="#B5C7DE" />
                                        <DynamicSelectedStyle BackColor="#507CD1" />
                                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <Items>
                                            <asp:MenuItem Text="General Operations" ToolTip="Quality Assurance " Value="General Operations">
                                                <asp:MenuItem NavigateUrl="~/qc_assign.aspx" Text="Quality Assurance" ToolTip="Assign a person for Quality Assurance"
                                                    Value="Quality Assurance">
                                                    <asp:MenuItem Text="Feedback" Value="Feedback" NavigateUrl="~/feedback.aspx"></asp:MenuItem>
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/store_workshop.aspx" Text="Workshop"
                                                    ToolTip="workshop" Value="Workshop"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/adminref.aspx" Text="Operations" ToolTip="technician operations"
                                                    Value="Operations"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/Map.aspx" Text="Technician Location" ToolTip="Map View"
                                                    Value="Technician Location"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </Items>
                                    </asp:Menu>
                                </td>
                                <td style="width: 100px; height: 27px">
                                    <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                        Font-Bold="True" Font-Names="Tahoma" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
                                        StaticSubMenuIndent="10px" Style="z-index: 100; left: 672px; position: static;
                                        top: 56px">
                                        <StaticSelectedStyle BackColor="#507CD1" />
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <DynamicMenuStyle BackColor="#B5C7DE" />
                                        <DynamicSelectedStyle BackColor="#507CD1" />
                                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                        <Items>
                                            <asp:MenuItem Selectable="False" Text="Control Panel" Value="Control Panel">
                                                <asp:MenuItem NavigateUrl="~/userrecord.aspx" Text="Accessibility" Value="Accessibility">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/code_builder.aspx" Text="Code Index"
                                                    Value="Code Index"></asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/set_cost.aspx" Text="Cost Indexes" Value="Cost Indexes">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/changepassword.aspx" Text="Users Information" Value="Users Information">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/techrec.aspx" Text="Technician's Record" Value="Technician's Record">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/techform.aspx" Text="Technician's Registration form"
                                                    ToolTip="Registration form" Value="Technicians Record"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </Items>
                                    </asp:Menu>
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                                <td style="width: 100px; height: 27px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 15px">
                    </td>
                    <td align="left" style="width: 100px">
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                            left: 72px; position: static; top: 104px" Width="48px">Logout</asp:HyperLink></td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 311px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 15px">
                    </td>
                    <td align="center" colspan="4" rowspan="1">
                        Edit roles , username, password, security questions, and answers.&nbsp;</td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="6" rowspan="3">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            CellPadding="4" DataKeyNames="sn,username" DataSourceID="SqlDataSource1" ForeColor="#333333"
                            GridLines="None" Style="z-index: 100; left: 160px; width: 100%; position: static;
                            top: 72px; height: 100%">
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#EFF3FB" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="sn" HeaderText="S/N0." InsertVisible="False" ReadOnly="True"
                                    SortExpression="sn" />
                                <asp:BoundField DataField="username" HeaderText="Username" ReadOnly="True" SortExpression="username" />
                                <asp:BoundField DataField="role" HeaderText="Role" SortExpression="role" />
                                <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                                <asp:BoundField DataField="question" HeaderText="Security Question" SortExpression="question" />
                                <asp:BoundField DataField="answer" HeaderText="Answer" SortExpression="answer" />
                            </Columns>
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>"
                            SelectCommand="SELECT [user].* FROM [user]" UpdateCommand="UPDATE [user] SET username = @username, role = @role, password = @password, question = @question, answer = @answer FROM [user] INNER JOIN otheraccess ON [user].username = otheraccess.username WHERE ([user].sn = @sn)">
                            <UpdateParameters>
                                <asp:Parameter Name="username" />
                                <asp:Parameter Name="role" />
                                <asp:Parameter Name="password" />
                                <asp:Parameter Name="question" />
                                <asp:Parameter Name="answer" />
                                <asp:Parameter Name="sn" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td style="width: 15px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td align="right" style="width: 100px; height: 21px">
                        &nbsp;
                    </td>
                    <td align="left" style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 311px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 15px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                    <td style="width: 311px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 15px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                    <td style="width: 311px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 15px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                    <td style="width: 311px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 15px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                    <td style="width: 311px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 15px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                    <td style="width: 311px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 15px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                    <td style="width: 311px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 15px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                    <td style="width: 311px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 15px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px" align="right">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 311px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 15px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px" align="right">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 311px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 15px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 311px">
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
