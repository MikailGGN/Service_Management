<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Defalt2.aspx.vb" Inherits="Defalt2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
                        <div style="text-align: center">
                            <table style="font-size: small; z-index: 100; left: 0px; width: 100%; font-family: tahoma;
                                position: static; top: 0px; height: 100%; color: navy; border-right: dodgerblue thin solid; border-top: dodgerblue thin solid; border-left: dodgerblue thin solid; border-bottom: dodgerblue thin solid;">
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 98px">
                                    </td>
                                    <td style="width: 399px">
                                    </td>
                                    <td style="width: 207px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 354px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 98px">
                                    </td>
                                    <td style="width: 399px">
                                    </td>
                                    <td style="width: 207px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 354px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="8" style="font-size: small; color: mintcream; font-family: tahoma; background-color: cornflowerblue">
                                        Project Name
                                        <asp:DropDownList ID="DDLproname" runat="server" Style="z-index: 100; left: 192px;
                                            position: static; top: 280px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                        &nbsp; &nbsp; &nbsp;&nbsp; Site Code
                                        <asp:DropDownList ID="DDlsite" runat="server" Style="z-index: 100; left: 504px; position: static;
                                            top: 280px" AutoPostBack="True">
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 98px">
                                    </td>
                                    <td style="width: 399px">
                                    </td>
                                    <td style="width: 207px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 354px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        Address</td>
                                    <td align="left" colspan="5" rowspan="3">
                                        <asp:TextBox ID="Txtaddress" runat="server" Height="64px" ReadOnly="True" Style="z-index: 100;
                                            left: 224px; position: static; top: 368px" Width="432px" TextMode="MultiLine"></asp:TextBox></td>
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
                                    <td align="right" colspan="2">
                                        No of Days</td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="Txtnday" runat="server" Style="z-index: 100; left: 248px; position: static;
                                            top: 384px" Width="24px"></asp:TextBox>
                                        &nbsp; &nbsp;&nbsp; &nbsp;Start Date
                                        <asp:TextBox ID="TxtSDATE" runat="server" Style="z-index: 100; left: 368px; position: static;
                                            top: 392px" Width="72px"></asp:TextBox>
                                        <asp:Button ID="Btndate" runat="server" Style="z-index: 100; left: 464px; position: static;
                                            top: 384px" Text="+" /></td>
                                    <td align="left" colspan="2">
                                        End Date
                                        <asp:TextBox ID="Txtedate" runat="server" Style="z-index: 100; left: 552px; position: static;
                                            top: 384px" Width="80px" AutoPostBack="True"></asp:TextBox></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 1px">
                                    </td>
                                    <td align="right" colspan="2" style="height: 1px">
                                    </td>
                                    <td align="right" colspan="2" style="height: 1px">
                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
                                            BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                                            Font-Size="8pt" ForeColor="#003399" Height="1px" Style="z-index: 100; left: -30px;
                                            position: static; top: 0px" Visible="False" Width="1px">
                                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                            <WeekendDayStyle BackColor="#CCCCFF" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                                                Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                        </asp:Calendar>
                                    </td>
                                    <td align="left" colspan="2" style="height: 1px">
                                    </td>
                                    <td style="width: 100px; height: 1px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="left" colspan="3" rowspan="9">
                                        <div style="text-align: center">
                                            <table style="z-index: 100; left: 160px; width: 100%; position: static; top: 432px;
                                                height: 107%">
                                                <tr>
                                                    <td align="right" style="width: 100px">
                                                        Team Leader</td>
                                                    <td align="left" style="width: 100px">
                                                        <asp:DropDownList ID="DDLtec1" runat="server" Style="z-index: 100; left: 264px; position: static;
                                                            top: 440px" Width="120px" AutoPostBack="True">
                                                            <asp:ListItem></asp:ListItem>
                                                        </asp:DropDownList></td>
                                                    <td style="width: 123px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px">
                                                        Present location</td>
                                                    <td style="width: 100px">
                                                        <asp:TextBox ID="Txtpltec1" runat="server" Style="z-index: 100; left: 248px; position: static;
                                                            top: 448px" Width="104px"></asp:TextBox></td>
                                                    <td style="width: 123px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td style="width: 123px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px">
                                                        Transport</td>
                                                    <td align="left" style="width: 100px">
                                                        <asp:TextBox ID="Txttrans1" runat="server" Style="z-index: 100; left: 240px; position: static;
                                                            top: 512px" Width="104px"></asp:TextBox></td>
                                                    <td style="width: 123px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px">
                                                        Accomodation</td>
                                                    <td align="left" style="width: 100px">
                                                        <asp:TextBox ID="Txtaccom1" runat="server" Style="z-index: 100; left: 256px; position: static;
                                                            top: 536px" Width="104px"></asp:TextBox></td>
                                                    <td style="width: 123px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px">
                                                        Feeding</td>
                                                    <td align="left" style="width: 100px">
                                                        <asp:TextBox ID="Txtfeed1" runat="server" Style="z-index: 100; left: 232px; position: static;
                                                            top: 568px" Width="104px"></asp:TextBox></td>
                                                    <td style="width: 123px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px">
                                                        Miscellanous</td>
                                                    <td align="left" style="width: 100px">
                                                        <asp:TextBox ID="Txtmisc1" runat="server" Style="z-index: 100; left: 232px; position: static;
                                                            top: 600px" Width="104px"></asp:TextBox></td>
                                                    <td style="width: 123px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px">
                                                        Total</td>
                                                    <td align="left" style="width: 100px">
                                                        <asp:TextBox ID="Txttotal1" runat="server" Style="z-index: 100; left: 232px; position: static;
                                                            top: 624px" Width="104px"></asp:TextBox></td>
                                                    <td style="width: 123px">
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <td align="center" colspan="3" rowspan="9">
                                        <table style="z-index: 100; left: 440px; width: 100%; position: static; top: 432px;
                                            height: 100%">
                                            <tr>
                                                <td align="right" style="width: 100px">
                                                    Subordinate</td>
                                                <td align="left" style="width: 100px">
                                                    <asp:DropDownList ID="DDLtec2" runat="server" Style="z-index: 100; left: 568px; position: static;
                                                        top: 432px" Width="112px" AutoPostBack="True">
                                                        <asp:ListItem></asp:ListItem>
                                                    </asp:DropDownList></td>
                                                <td style="width: 100px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 100px">
                                                    Present location</td>
                                                <td align="left" style="width: 100px">
                                                    <asp:TextBox ID="Txtpltec2" runat="server" Style="z-index: 100; left: 528px; position: static;
                                                        top: 456px" Width="104px"></asp:TextBox></td>
                                                <td style="width: 100px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 100px">
                                                </td>
                                                <td style="width: 100px">
                                                </td>
                                                <td style="width: 100px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 100px">
                                                    Transport</td>
                                                <td align="left" style="width: 100px">
                                                    <asp:TextBox ID="Txttrans2" runat="server" Style="z-index: 100; left: 528px; position: static;
                                                        top: 512px" Width="104px"></asp:TextBox></td>
                                                <td style="width: 100px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 100px">
                                                    Accomodation</td>
                                                <td align="left" style="width: 100px">
                                                    <asp:TextBox ID="Txtaccom2" runat="server" Style="z-index: 100; left: 512px; position: static;
                                                        top: 552px" Width="104px"></asp:TextBox></td>
                                                <td style="width: 100px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 100px">
                                                    Feeding</td>
                                                <td align="left" style="width: 100px">
                                                    <asp:TextBox ID="Txtfeed2" runat="server" Style="z-index: 100; left: 536px; position: static;
                                                        top: 576px" Width="104px"></asp:TextBox></td>
                                                <td style="width: 100px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 100px">
                                                    Miscellanous</td>
                                                <td align="left" style="width: 100px">
                                                    <asp:TextBox ID="Txtmisc2" runat="server" Style="z-index: 100; left: 528px; position: static;
                                                        top: 600px" Width="104px"></asp:TextBox></td>
                                                <td style="width: 100px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 100px">
                                                    Total</td>
                                                <td style="width: 100px">
                                                    <asp:TextBox ID="Txttotal2" runat="server" Style="z-index: 100; left: 528px; position: static;
                                                        top: 624px" Width="104px"></asp:TextBox></td>
                                                <td style="width: 100px">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
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
                                </tr>
                                <tr>
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
                                </tr>
                                <tr>
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
                                </tr>
                                <tr>
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
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td align="right" colspan="2">
                                        Exception</td>
                                    <td align="left" style="width: 399px">
                                        <asp:DropDownList ID="DDLeptn" runat="server" Style="z-index: 100; left: 232px; position: static;
                                            top: 760px">
                                            <asp:ListItem>None</asp:ListItem>
                                            <asp:ListItem>Accomodation</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="left" style="width: 207px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 354px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 98px">
                                    </td>
                                    <td align="right" style="width: 399px">
                                        </td>
                                    <td align="left" style="width: 207px">
                                        <asp:Button ID="Btnallocate" runat="server" Style="z-index: 100; left: 320px; position: static;
                                            top: 776px" Text="Allocate" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" />
                                        <asp:Button ID="Button1" runat="server" Style="z-index: 100; left: 440px; position: static;
                                            top: 824px" Text="Reset" BackColor="CornflowerBlue" BorderStyle="None" ForeColor="White" />
                                        </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 354px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 98px">
                                    </td>
                                    <td align="right" style="width: 399px">
                                    </td>
                                    <td align="left" style="width: 207px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 354px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 98px">
                                    </td>
                                    <td style="width: 399px">
                                    </td>
                                    <td style="width: 207px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 354px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 98px; height: 21px">
                                    </td>
                                    <td style="width: 399px; height: 21px">
                                    </td>
                                    <td style="width: 207px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                    <td style="width: 354px; height: 21px">
                                    </td>
                                    <td style="width: 100px; height: 21px">
                                    </td>
                                </tr>
                            </table>
                        </div>
    <div>
    
        Sub readpro() &#39;load the project from material table Dim cmd As SqlCommand = New 
        SqlCommand(&quot;select projectname from regpro where completed = @completed &quot;, conn) 
        Dim param As SqlParameter = New SqlParameter param.ParameterName = &quot;@completed&quot; 
        param.Value = &quot;r&quot; cmd.Parameters.Add(param) Try conn.Open() rdr = 
        cmd.ExecuteReader If rdr.HasRows Then While rdr.Read = True 
        Me.DDLproname.Items.Add(rdr(&quot;projectname&quot;)) End While Else MsgBox(&quot;Materials 
        have not been delivered to available sites for implementation &quot;, 
        MsgBoxStyle.Exclamation, &quot;INLAKS COMPUTERS&quot;) End If Catch ex As Exception 
        MsgBox(ex.Message) Finally If Not conn.State = Data.ConnectionState.Closed Then 
        conn.Close() End If End Try End Sub Protected Sub 
        DDLproname_SelectedIndexChanged(ByVal sender As Object, ByVal e As 
        System.EventArgs) Handles DDLproname.SelectedIndexChanged &#39;load the siteid from 
        material table Dim cmd As SqlCommand = New SqlCommand(&quot;select sitecode from 
        materials where projectname= @projectname and dstatus =@dstatus intersect select 
        sitecode from siteinfo where sitestatus = @sitestatus&quot;, conn) Dim param1 As 
        SqlParameter = New SqlParameter param1.ParameterName = &quot;@projectname&quot; 
        param1.Value = Me.DDLproname.SelectedItem.Text cmd.Parameters.Add(param1) Dim 
        param2 As SqlParameter = New SqlParameter param2.ParameterName = &quot;@dstatus&quot; 
        param2.Value = &quot;delivered&quot; cmd.Parameters.Add(param2) Dim param3 As SqlParameter 
        = New SqlParameter param3.ParameterName = &quot;@sitestatus&quot; param3.Value = 
        &quot;delivered&quot; cmd.Parameters.Add(param3) Try conn.Open() rdr = cmd.ExecuteReader 
        While rdr.Read = True Me.DDlsite.Items.Add(rdr(&quot;sitecode&quot;)) End While Catch ex 
        As Exception MsgBox(ex.Message) Finally If Not conn.State = 
        Data.ConnectionState.Closed Then conn.Close() End If End Try End Sub Protected 
        Sub DDlsite_SelectedIndexChanged(ByVal sender As Object, ByVal e As 
        System.EventArgs) Handles DDlsite.SelectedIndexChanged LOADSTATE() 
        Me.Txtaddress.Text = Me.saddress &amp; &quot;, &quot; &amp; vbCrLf &amp; Me.Txtstown.Text &amp; &quot;,&quot; &amp; 
        vbCrLf &amp; Me.Txtsstate.Text End Sub Sub LOADSTATE() &#39;load address Dim cmd As 
        SqlCommand = New SqlCommand(&quot;select clientaddress, clienttown, clientstate from 
        siteinfo where sitecode= @sitecode&quot;, conn) Dim param As SqlParameter = New 
        SqlParameter param.ParameterName = &quot;@sitecode&quot; param.Value = 
        Me.DDlsite.SelectedItem.Text cmd.Parameters.Add(param) Try conn.Open() rdr = 
        cmd.ExecuteReader While rdr.Read = True Me.saddress = rdr(&quot;clientaddress&quot;) 
        Me.Txtstown.Text = rdr(&quot;clienttown&quot;) Me.Txtsstate.Text = rdr(&quot;clientstate&quot;) End 
        While Catch ex As Exception MsgBox(ex.Message) Finally If Not conn.State = 
        Data.ConnectionState.Closed Then conn.Close() End If End Try End Sub Sub 
        teamleader() Dim cmd As SqlCommand = New SqlCommand(&quot; SELECT DISTINCT techid 
        FROM techjob WHERE endjob &lt;= @endjob AND techlevel IS NULL &quot;, conn) &#39;between 
        @endjob-3 and @endjob &#39;Dim param As SqlParameter = New SqlParameter 
        &#39;param.ParameterName = &quot;@techlevel&quot; &#39;param.Value = Me.teamldr.ToString 
        &#39;cmd.Parameters.Add(param) Dim param1 As SqlParameter = New SqlParameter 
        param1.ParameterName = &quot;@endjob&quot; param1.Value = CDate(Me.TxtSDATE.Text) 
        cmd.Parameters.Add(param1) Try conn.Open() rdr = cmd.ExecuteReader If 
        rdr.HasRows Then While rdr.Read = True Me.DDLtec1.Items.Add(rdr(&quot;techid&quot;)) End 
        While Else MsgBox(&quot;There is no Technician to Play the role of a teamleader &quot; &amp; 
        vbCrLf &amp; &quot; for this implementation on the selected date. &quot;, 
        MsgBoxStyle.Exclamation, &quot;INLAKS COMPUTERS&quot;) End If Catch ex As Exception 
        MsgBox(ex.Message) Finally If Not conn.State = Data.ConnectionState.Closed Then 
        conn.Close() End If End Try End Sub Sub subordinate() &#39; Dim cmd As SqlCommand = 
        New SqlCommand(&quot; SELECT DISTINCT techid FROM techjob WHERE endjob &lt;= @endjob AND 
        techlevel IS NULL &quot;, conn) &#39;between @endjob-3 and @endjob &#39;Dim param As 
        SqlParameter = New SqlParameter &#39;param.ParameterName = &quot;@techlevel&quot; &#39;param.Value 
        = Me.subdte.ToString &#39;cmd.Parameters.Add(param) Dim param1 As SqlParameter = New 
        SqlParameter param1.ParameterName = &quot;@endjob&quot; param1.Value = 
        CDate(Me.TxtSDATE.Text) cmd.Parameters.Add(param1) Try conn.Open() rdr = 
        cmd.ExecuteReader If rdr.HasRows Then While rdr.Read 
        Me.DDLtec2.Items.Add(rdr(&quot;techid&quot;)) End While Else MsgBox(&quot;There is no 
        Technician to Play a subordinate role&quot; &amp; vbCrLf &amp; &quot; for this implementation on 
        the selected date. &quot;, MsgBoxStyle.Exclamation, &quot;INLAKS COMPUTERS&quot;) End If Catch 
        ex As Exception MsgBox(ex.Message) Finally If Not conn.State = 
        Data.ConnectionState.Closed Then conn.Close() End If End Try End Sub Sub 
        tec1locatn() Dim cmd As SqlCommand = New SqlCommand(&quot;select location from 
        techjob where techid =@techid&quot;, conn) Dim param As SqlParameter = New 
        SqlParameter param.ParameterName = &quot;@techid&quot; param.Value = 
        Me.DDLtec1.SelectedItem.Text cmd.Parameters.Add(param) Try conn.Open() rdr = 
        cmd.ExecuteReader While rdr.Read = True Me.Txtpltec1.Text = rdr(&quot;location&quot;) End 
        While Catch ex As Exception MsgBox(ex.Message) Finally If Not conn.State = 
        Data.ConnectionState.Closed Then conn.Close() End If End Try End Sub Sub 
        tec2locatn() Dim cmd As SqlCommand = New SqlCommand(&quot;select location from 
        techjob where techid =@techid&quot;, conn) Dim param As SqlParameter = New 
        SqlParameter param.ParameterName = &quot;@techid&quot; param.Value = 
        Me.DDLtec2.SelectedItem.Text cmd.Parameters.Add(param) Try conn.Open() rdr = 
        cmd.ExecuteReader While rdr.Read = True Me.Txtpltec2.Text = rdr(&quot;location&quot;) End 
        While Catch ex As Exception MsgBox(ex.Message) Finally If Not conn.State = 
        Data.ConnectionState.Closed Then conn.Close() End If End Try End Sub Sub 
        acost1() Dim cmd As SqlCommand = New SqlCommand(&quot;select accomodation, feeding, 
        localtrans from allowancecost where techlevel = @techlevel&quot;, conn) Dim param As 
        SqlParameter = New SqlParameter param.ParameterName = &quot;@techlevel&quot; param.Value = 
        Me.teamldr.ToString cmd.Parameters.Add(param) Try conn.Open() rdr = 
        cmd.ExecuteReader While rdr.Read() = True Me.Txtaccom1.Text = 
        rdr(&quot;accomodation&quot;) Me.Txtfeed1.Text = rdr(&quot;feeding&quot;) Me.Txtmisc1.Text = 
        rdr(&quot;localtrans&quot;) End While Catch ex As Exception MsgBox(ex.Message) Finally If 
        Not conn.State = Data.ConnectionState.Closed Then conn.Close() End If End Try 
        End Sub Sub acost2() Dim cmd As SqlCommand = New SqlCommand(&quot;select 
        accomodation, feeding, localtrans from allowancecost where techlevel = 
        @techlevel&quot;, conn) Dim param As SqlParameter = New SqlParameter 
        param.ParameterName = &quot;@techlevel&quot; param.Value = Me.subdte.ToString 
        cmd.Parameters.Add(param) Try conn.Open() rdr = cmd.ExecuteReader While 
        rdr.Read() = True Me.Txtaccom2.Text = rdr(&quot;accomodation&quot;) Me.Txtfeed2.Text = 
        rdr(&quot;feeding&quot;) Me.Txtmisc2.Text = rdr(&quot;localtrans&quot;) End While Catch ex As 
        Exception MsgBox(ex.Message) Finally If Not conn.State = 
        Data.ConnectionState.Closed Then conn.Close() End If End Try End Sub Sub 
        costallocation1() Dim cmd As SqlCommand = New SqlCommand(&quot;select (total) from 
        transportcost where arrival = @arrival and departure = @departure &quot;, conn) Dim 
        param1 As SqlParameter = New SqlParameter() param1.ParameterName = &quot;@arrival&quot; 
        param1.Value = Me.Txtsstate.Text cmd.Parameters.Add(param1) Dim param2 As 
        SqlParameter = New SqlParameter() param2.ParameterName = &quot;@departure&quot; 
        param2.Value = Me.Txtpltec1.Text cmd.Parameters.Add(param2) Try conn.Open() rdr 
        = cmd.ExecuteReader While rdr.Read() = True Me.Txttrans1.Text = rdr(&quot;total&quot;) End 
        While Catch ex As Exception MsgBox(ex.Message) Finally If Not conn.State = 
        Data.ConnectionState.Closed Then conn.Close() End If End Try End Sub Sub 
        costallocation2() LOADSTATE() Dim cmd As SqlCommand = New SqlCommand(&quot;select 
        (total) from transportcost where arrival = @arrival and departure = @departure 
        &quot;, conn) Dim param1 As SqlParameter = New SqlParameter() param1.ParameterName = 
        &quot;@arrival&quot; param1.Value = Me.Txtsstate.Text cmd.Parameters.Add(param1) Dim 
        param2 As SqlParameter = New SqlParameter() param2.ParameterName = &quot;@departure&quot; 
        param2.Value = Me.Txtpltec2.Text cmd.Parameters.Add(param2) Try conn.Open() rdr 
        = cmd.ExecuteReader While rdr.Read() = True Me.Txttrans2.Text = rdr(&quot;total&quot;) End 
        While Catch ex As Exception MsgBox(ex.Message) Finally If Not conn.State = 
        Data.ConnectionState.Closed Then conn.Close() End If End Try End Sub Sub 
        retthorn() Dim cmd As SqlCommand = New SqlCommand(&quot;select (total) from 
        transportcost where arrival = @arrival and departure = @departure &quot;, conn) Dim 
        param1 As SqlParameter = New SqlParameter() param1.ParameterName = &quot;@arrival&quot; 
        param1.Value = &quot;lagos&quot; cmd.Parameters.Add(param1) Dim param2 As SqlParameter = 
        New SqlParameter() param2.ParameterName = &quot;@departure&quot; param2.Value = 
        Me.Txtsstate.Text cmd.Parameters.Add(param2) Try conn.Open() rdr = 
        cmd.ExecuteReader While rdr.Read() = True rrn = rdr(&quot;total&quot;) End While Catch ex 
        As Exception MsgBox(ex.Message) Finally If Not conn.State = 
        Data.ConnectionState.Closed Then conn.Close() End If End Try End Sub Sub 
        sumtotal1() acost1() costallocation1() Me.Txttotal1.Text = 
        Val(Me.Txttrans1.Text) + (Val(Me.Txtnday.Text) * (Val(Me.Txtfeed1.Text) + 
        Val(Me.Txtmisc1.Text)) + (Val(Me.Txtaccom1.Text) * (Val(Me.Txtnday.Text) - 1))) 
        End Sub Sub sumtotal2() acost2() costallocation2() Me.Txttotal2.Text = 
        Val(Me.Txttrans2.Text) + (Val(Me.Txtnday.Text) * (Val(Me.Txtfeed2.Text) + 
        Val(Me.Txtmisc2.Text)) + (Val(Me.Txtaccom2.Text) * (Val(Me.Txtnday.Text) - 1))) 
        End Sub Protected Sub DDLtec1_SelectedIndexChanged(ByVal sender As Object, ByVal 
        e As System.EventArgs) Handles DDLtec1.SelectedIndexChanged tec1locatn() 
        sumtotal1() End Sub Protected Sub DDLtec2_SelectedIndexChanged(ByVal sender As 
        Object, ByVal e As System.EventArgs) Handles DDLtec2.SelectedIndexChanged 
        tec2locatn() sumtotal2() End Sub Protected Sub Calendar1_SelectionChanged(ByVal 
        sender As Object, ByVal e As System.EventArgs) Handles 
        Calendar1.SelectionChanged Me.DDLtec1.Items.Clear() Me.DDLtec1.Items.Add(&quot;&quot;) 
        Me.DDLtec2.Items.Clear() Me.DDLtec2.Items.Add(&quot;&quot;) Me.TxtSDATE.Text = 
        Me.Calendar1.SelectedDate Me.Txtedate.Text = 
        (Me.Calendar1.SelectedDate.AddDays(Val(Me.Txtnday.Text))) teamleader() 
        subordinate() Me.Calendar1.Visible = False Me.Calendar1.SelectedDate = Today End 
        Sub Protected Sub Btndate_Click(ByVal sender As Object, ByVal e As 
        System.EventArgs) Handles Btndate.Click Me.Calendar1.Visible = True End Sub 
        Protected Sub Btnallocate_Click(ByVal sender As Object, ByVal e As 
        System.EventArgs) Handles Btnallocate.Click &#39; MsgBox(&quot;If this team will be 
        returning to the office from assignment click &#39;yes&#39; &quot;, MsgBoxStyle.YesNo, 
        &quot;INLAKS COMPUTERS&quot;) &#39;If MsgBoxStyle.YesNo = MsgBoxResult.Yes Then If 
        (Me.DDLtec2.SelectedIndex = 0) Or (Me.DDLtec1.SelectedIndex = 0) Then MsgBox(&quot;A 
        Team consist of two people.&quot; &amp; vbCrLf &amp; &quot; Either the Team Leader or the 
        Subordinate has not been selected&quot;, MsgBoxStyle.Exclamation, &quot;INLAKS COMPUTERS&quot;) 
        Else &#39;test() indatatl() indatasb() updsiteinfo() End If &#39; End If clear() End Sub 
        Sub indatasb() genregion() retthorn() &#39; insert subordinate allocation Dim alltn 
        As Decimal If Me.DDLeptn.SelectedItem.Text = &quot;None&quot; And (Me.Txtpltec2.Text = 
        Me.Txtsstate.Text) Then alltn = Val(Me.Txttotal2.Text) - rrn ElseIf 
        (Me.DDLeptn.SelectedItem.Text = &quot;None&quot;) And Not (Me.Txtpltec2.Text = 
        Me.Txtsstate.Text) Then alltn = Val(Me.Txttotal2.Text) + rrn ElseIf Not 
        (Me.DDLeptn.SelectedItem.Text = &quot;None&quot;) And (Me.Txtpltec2.Text = 
        Me.Txtsstate.Text) Then alltn = Val(Me.Txttotal2.Text) - (rrn + 
        (Val(Me.Txtaccom2.Text) * (Val(Me.Txtnday.Text) - 1))) ElseIf Not 
        (Me.DDLeptn.SelectedItem.Text = &quot;None&quot;) And Not (Me.Txtpltec2.Text = 
        Me.Txtsstate.Text) Then alltn = (Val(Me.Txttotal2.Text) + rrn) - 
        (Val(Me.Txtaccom2.Text) * (Val(Me.Txtnday.Text) - 1)) End If Dim cmd As 
        SqlCommand = New SqlCommand(&quot;insert into techjob ( techid, location , sitecode 
        ,allocation ,startjob ,endjob, techlevel , jobtype , region , clienttown , 
        R_alloctn )&quot; &amp; _ &quot; values ( @techid, @location , @sitecode ,@allocation , 
        @startjob , @endjob, @techlevel , @jobtype ,@region , @clienttown , @R_alloctn ) 
        &quot;, conn) cmd.Parameters.AddWithValue(&quot;@techid&quot;, Me.DDLtec2.SelectedItem.Text) 
        cmd.Parameters.AddWithValue(&quot;@location&quot;, Me.Txtsstate.Text) 
        cmd.Parameters.AddWithValue(&quot;@sitecode&quot;, Me.DDlsite.SelectedItem.Text) 
        cmd.Parameters.AddWithValue(&quot;@allocation&quot;, alltn) 
        cmd.Parameters.AddWithValue(&quot;@startjob&quot;, CDate(Me.TxtSDATE.Text)) 
        cmd.Parameters.AddWithValue(&quot;@endjob&quot;, CDate(Me.Txtedate.Text)) 
        cmd.Parameters.AddWithValue(&quot;@techlevel&quot;, Me.subdte.ToString) 
        cmd.Parameters.AddWithValue(&quot;@jobtype&quot;, &quot;implementation&quot;) 
        cmd.Parameters.AddWithValue(&quot;@region&quot;, ssite.ToString) 
        cmd.Parameters.AddWithValue(&quot;@clienttown&quot;, Me.Txtstown.Text) 
        cmd.Parameters.AddWithValue(&quot;@R_alloctn&quot;, rrn) Try conn.Open() If 
        cmd.ExecuteNonQuery &gt; 0 Then MsgBox(Me.DDLtec2.SelectedItem.Text &amp; &quot; has been 
        appointed the Subordinate technician&quot;, MsgBoxStyle.Information, &quot;INLAKS 
        COMPUTERS&quot;) Else MsgBox(&quot;An Error has occurred&quot;, MsgBoxStyle.Exclamation, 
        &quot;INLAKS COMPUTERS&quot;) End If Catch ex As Exception MsgBox(ex.Message) Finally If 
        conn.State = Data.ConnectionState.Open Then conn.Close() End If End Try End Sub 
        Sub genregion() Dim cmd As SqlCommand = New SqlCommand(&quot;select region from 
        stateinfo where state= @state&quot;, conn) Dim param As SqlParameter = New 
        SqlParameter param.ParameterName = &quot;@state&quot; param.Value = Me.Txtsstate.Text 
        cmd.Parameters.Add(param) Try conn.Open() rdr = cmd.ExecuteReader If rdr.HasRows 
        Then While (rdr.Read = True) &#39;sitestate(x) = rdr(&quot;state&quot;).ToString &#39;sitestate(i) 
        = sitestate(j) ssite = (rdr(&quot;region&quot;)) End While End If Catch ex As Exception 
        MsgBox(ex.Message) Finally If conn.State = Data.ConnectionState.Open Then 
        conn.Close() End If End Try End Sub Sub indatatl() genregion() retthorn() Dim 
        alltn As Decimal If Me.DDLeptn.SelectedItem.Text = &quot;None&quot; And (Me.Txtpltec1.Text 
        = Me.Txtsstate.Text) Then alltn = Val(Me.Txttotal1.Text) - rrn ElseIf 
        (Me.DDLeptn.SelectedItem.Text = &quot;None&quot;) And Not (Me.Txtpltec1.Text = 
        Me.Txtsstate.Text) Then alltn = Val(Me.Txttotal1.Text) + rrn ElseIf Not 
        (Me.DDLeptn.SelectedItem.Text = &quot;None&quot;) And (Me.Txtpltec1.Text = 
        Me.Txtsstate.Text) Then alltn = Val(Me.Txttotal1.Text) - (rrn + 
        (Val(Me.Txtaccom1.Text) * (Val(Me.Txtnday.Text) - 1))) ElseIf Not 
        (Me.DDLeptn.SelectedItem.Text = &quot;None&quot;) And Not (Me.Txtpltec1.Text = 
        Me.Txtsstate.Text) Then alltn = (Val(Me.Txttotal1.Text) + rrn) - 
        (Val(Me.Txtaccom1.Text) * (Val(Me.Txtnday.Text) - 1)) End If &#39; insert teamleader 
        allocation Dim cmd As SqlCommand = New SqlCommand(&quot; INSERT INTO techjob ( 
        techid, location , sitecode ,allocation , startjob ,endjob, techlevel , jobtype 
        ,region , clienttown , R_alloctn ) &quot; &amp; _ &quot;values ( @techid, @location , 
        @sitecode ,@allocation ,@startjob ,@endjob, @techlevel , @jobtype , @region , 
        @clienttown ,@R_alloctn ) &quot;, conn) cmd.Parameters.AddWithValue(&quot;@techid&quot;, 
        Me.DDLtec1.SelectedItem.Text) cmd.Parameters.AddWithValue(&quot;@location&quot;, 
        Me.Txtsstate.Text) cmd.Parameters.AddWithValue(&quot;@sitecode&quot;, 
        Me.DDlsite.SelectedItem.Text) cmd.Parameters.AddWithValue(&quot;@allocation&quot;, alltn) 
        cmd.Parameters.AddWithValue(&quot;@startjob&quot;, CDate(Me.TxtSDATE.Text)) 
        cmd.Parameters.AddWithValue(&quot;@endjob&quot;, CDate(Me.Txtedate.Text)) 
        cmd.Parameters.AddWithValue(&quot;@techlevel&quot;, &quot;T1&quot;) 
        cmd.Parameters.AddWithValue(&quot;@jobtype&quot;, &quot;implementation&quot;) 
        cmd.Parameters.AddWithValue(&quot;@region&quot;, ssite.ToString) 
        cmd.Parameters.AddWithValue(&quot;@clienttown&quot;, Me.Txtstown.Text) 
        cmd.Parameters.AddWithValue(&quot;@R_alloctn&quot;, rrn) Try conn.Open() If 
        cmd.ExecuteNonQuery &gt; 0 Then MsgBox(Me.DDLtec1.SelectedItem.Text &amp; &quot; has been 
        appointed the Teamleader&quot;, MsgBoxStyle.Information, &quot;INLAKS COMPUTERS&quot;) Else 
        MsgBox(&quot;An Error has occurred&quot;, MsgBoxStyle.Exclamation, &quot;INLAKS COMPUTERS&quot;) End 
        If Catch ex As Exception MsgBox(ex.Message) Finally If conn.State = 
        Data.ConnectionState.Open Then conn.Close() End If End Try End Sub Sub clear() 
        Me.DDlsite.Items.Remove(Me.DDlsite.SelectedItem.Text) Me.Txtaddress.Text = &quot;&quot; 
        Me.Txtnday.Text = &quot;&quot; Me.TxtSDATE.Text = &quot;&quot; Me.Txtpltec1.Text = &quot;&quot; 
        Me.Txtedate.Text = &quot;&quot; Me.Txtpltec2.Text = &quot;&quot; Me.Txttotal1.Text = &quot;&quot; 
        Me.Txttotal2.Text = &quot;&quot; Me.Txttrans1.Text = &quot;&quot; Me.Txttrans2.Text = &quot;&quot; 
        Me.Txtmisc2.Text = &quot;&quot; Me.Txtmisc1.Text = &quot;&quot; Me.Txtfeed2.Text = &quot;&quot; 
        Me.Txtfeed1.Text = &quot;&quot; Me.Txtaccom2.Text = &quot;&quot; Me.Txtaccom1.Text = &quot;&quot; 
        Me.Txtsstate.Text = &quot;&quot; Me.Txtstown.Text = &quot;&quot; Me.DDLtec1.SelectedIndex = 0 
        Me.DDLtec2.SelectedIndex = 0 End Sub Sub updsiteinfo() Dim sstatus As String = 
        &quot;approved&quot; Dim cmd As SqlCommand = New SqlCommand(&quot;update siteinfo set 
        sitestatus = @sitestatus where sitecode = @original_sitecode &quot;, conn) 
        cmd.Parameters.AddWithValue(&quot;@original_sitecode&quot;, Me.DDlsite.SelectedItem.Text) 
        cmd.Parameters.AddWithValue(&quot;@sitestatus&quot;, sstatus.ToString) Try conn.Open() If 
        cmd.ExecuteNonQuery &gt; 0 Then MsgBox(&quot;Site status changed&quot;, 
        MsgBoxStyle.Information, &quot;INLAKS COMPUTERS&quot;) Else MsgBox(&quot;Error occurred&quot;, 
        MsgBoxStyle.Information, &quot;INLAKS COMPUTERS&quot;) End If Catch ex As Exception 
        MsgBox(ex.Message) Finally If conn.State = Data.ConnectionState.Open Then 
        conn.Close() End If End Try End Sub Protected Sub Button1_Click(ByVal sender As 
        Object, ByVal e As System.EventArgs) Handles Button1.Click clear() End Sub</div>
    </form>
</body>
</html>
