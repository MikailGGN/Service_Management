<%@ Page Language="VB" AutoEventWireup="false" CodeFile="techrec.aspx.vb" Inherits="techrec" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Technician's Record</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table style="border-right: blue thin solid; border-top: blue thin solid; font-size: small;
                z-index: 100; left: 0px; border-left: blue thin solid; width: 6in; color: blue;
                border-bottom: blue thin solid; font-family: tahoma; position: static; top: 0px;
                height: 100%">
                <tr>
                    <td align="left" style="width: 100px">
                        <img src="images/inlakslogo.gif" style="z-index: 100; left: 64px; position: static;
                            top: 16px; height: 16px" /></td>
                    <td colspan="4">
                        Inverter Implementation And Support Services</td>
                </tr>
                <tr>
                    <td colspan="5">
                        <table id="TABLE1" onclick="return TABLE1_onclick()" style="font-size: small; z-index: 100;
                            left: 0px; width: 100%; position: static; top: 0px; height: 100%">
                            <tr>
                                <td align="right" style="width: 30px; height: 20px">
                                    <asp:Menu ID="Menu2" runat="server" Font-Bold="True" Orientation="Horizontal"
                                        Style="z-index: 100; left: 552px; position: static; top: 104px" 
                                        BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" 
                                        Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
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
                                                <asp:MenuItem NavigateUrl="~/materialrequest.aspx" Text="Materials Request" Value="Materials Request">
                                                </asp:MenuItem>
                                                <asp:MenuItem NavigateUrl="~/Deployment.aspx" Text="Materials Approved" 
                                                    Value="Material Approved"></asp:MenuItem>
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
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx" Style="z-index: 100;
                                        left: 48px; position: static; top: 120px" Width="48px">Logout</asp:HyperLink>
                                </td>
                                <td align="left" style="width: 20px; height: 20px">
                                    <asp:Menu ID="Menu3" runat="server" Font-Bold="True" Orientation="Horizontal" Style="z-index: 100;
                                        left: 520px; position: static; top: 104px" 
                                        BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" 
                                        Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
                                        <Items>
                                            <asp:MenuItem Text="Support" ToolTip="Site Support Services" Value="Support">
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
                                    <br />
                                </td>
                                <td align="left" style="width: 90px; height: 20px">
                                    <asp:Menu ID="Menu6" runat="server" Font-Bold="True" Orientation="Horizontal" Style="z-index: 100;
                                        left: 568px; position: static; top: 112px" BackColor="#B5C7DE" 
                                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                                        ForeColor="#284E98" StaticSubMenuIndent="10px" Width="50px">
                                        <Items>
                                            <asp:MenuItem Text="Equipment Handling" ToolTip="Materials request and supply " 
                                                Value="Equipment Handling">
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
                                    <br />
                                </td>
                                <td style="width: 100px; height: 20px">
                                    <asp:Menu ID="Menu5" runat="server" BackColor="#B5C7DE" BorderStyle="Groove" DynamicHorizontalOffset="2"
                                        Font-Bold="True" Font-Names="Tahoma" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
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
                                                    <asp:MenuItem Text="Feedback" Value="Feedback"></asp:MenuItem>
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
                                    <br />
                                </td>
                                <td style="width: 100px; height: 20px">
                                    &nbsp;<asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" BorderStyle="Groove"
                                        DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Tahoma" Font-Size="0.8em"
                                        ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px" Style="z-index: 100;
                                        left: 576px; position: static; top: 80px">
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
                                    <br />
                                    <br />
                                </td>
                                <td style="width: 100px; height: 20px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        Technician's Record</td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td align="right" style="width: 100px">
                        Technician's Id</td>
                    <td align="left" style="width: 100px">
                        <asp:DropDownList ID="DDLtechid" runat="server" AutoPostBack="True" Style="z-index: 100;
                            left: 240px; position: static; top: 88px" Width="152px">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList></td>
                    <td rowspan="4" style="width: 100px">
                        <asp:Image ID="Imtech" runat="server" Height="120px" Style="z-index: 100; left: 432px;
                            position: static; top: 88px" Width="120px" /></td>
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
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td align="center" colspan="2" rowspan="12" style="border-right: gray thin solid;
                        border-top: gray thin solid; border-left: gray thin solid; border-bottom: gray thin solid">
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
                            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"
                            Height="50px" Style="z-index: 100; left: 272px; width: 3in; position: static;
                            top: 296px; text-align: center" Width="208px">
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                            <RowStyle BackColor="#E3EAEB" />
                            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <Fields>
                                <asp:BoundField DataField="sname" HeaderText="Surname" SortExpression="sname" />
                                <asp:BoundField DataField="fname" HeaderText="Firstname" SortExpression="fname" />
                                <asp:BoundField DataField="cntaddress" HeaderText="Contact Address" SortExpression="cntaddress" />
                                <asp:BoundField DataField="pmaddress" HeaderText="Permanent Address" SortExpression="pmaddress" />
                                <asp:BoundField DataField="techlevel" HeaderText="Level" SortExpression="techlevel" />
                                <asp:BoundField DataField="phone" HeaderText="Telephone" SortExpression="phone" />
                                <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                                <asp:BoundField DataField="dob" HeaderText="Date Of Birth" SortExpression="dob" />
                                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                                <asp:BoundField DataField="nation" HeaderText="Nationality" SortExpression="nation" />
                                <asp:BoundField DataField="sorigin" HeaderText="State Of Origin" SortExpression="sorigin" />
                                <asp:BoundField DataField="lga" HeaderText="L.G.A" SortExpression="lga" />
                                <asp:BoundField DataField="mstatus" HeaderText="Marital Status" SortExpression="mstatus" />
                                <asp:BoundField DataField="religion" HeaderText="Religion" SortExpression="religion" />
                                <asp:BoundField DataField="sex" HeaderText="Sex" SortExpression="sex" />
                                <asp:BoundField DataField="bank" HeaderText="Bank" SortExpression="bank" />
                                <asp:BoundField DataField="account" HeaderText="Account N0." SortExpression="account" />
                            </Fields>
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT [sname], [fname], [cntaddress], [pmaddress], [techlevel], [phone], [mobile], [dob], [age], [nation], [sorigin], [lga], [mstatus], [religion], [sex], [bank], [account] FROM [techinfo] WHERE ([techid] = @techid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DDLtechid" Name="techid" PropertyName="SelectedValue"
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
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
                </tr>
                <tr>
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
                </tr>
                <tr>
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
                </tr>
                <tr>
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
                </tr>
                <tr>
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
                </tr>
                <tr>
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
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
