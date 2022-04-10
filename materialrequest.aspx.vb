Imports System.Data.SqlClient
Partial Class materialdeployment
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim urole As String

    Dim sstate, saddress, stown As String

    Protected Sub DDLtrscable1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLtrscable1.SelectedIndexChanged
        Me.Txttrscable1.Visible = True
        Me.Txttrscable1.Focus()
    End Sub
    Protected Sub DDLtrscable2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLtrscable2.SelectedIndexChanged
        Me.Txttrscable2.Visible = True
        Me.Txttrscable2.Focus()
    End Sub

    Protected Sub DDLwcable1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLwcable1.SelectedIndexChanged
        Me.Txtwcable1.Visible = True
        Me.Txtwcable1.Focus()
    End Sub
   
    Protected Sub DDLbattery1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLbattery1.SelectedIndexChanged
        Me.Txtbattery1.Visible = True
        Me.Txtbattery1.Focus()
    End Sub
    Protected Sub DDLbattery2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLbattery2.SelectedIndexChanged
        Me.TxtBattery2.Visible = True
        Me.TxtBattery2.Focus()
    End Sub

    Protected Sub DDLdisconnt1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLdisconnt1.SelectedIndexChanged
        Me.Txtdisconnt1.Visible = True
        Me.Txtdisconnt1.Focus()
    End Sub
    Protected Sub DDLdisconnt2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLdisconnt2.SelectedIndexChanged
        Me.Txtdisconnt2.Visible = True
        Me.Txtdisconnt2.Focus()
    End Sub

    Protected Sub DDLinv1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLinv1.SelectedIndexChanged
        Me.Txtinv1.Visible = True
        Me.Txtinv1.Focus()
    End Sub
    Protected Sub DDLinv2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLinv2.SelectedIndexChanged
        Me.Txtinv2.Visible = True
        Me.Txtinv2.Focus()
    End Sub

    Protected Sub ChkBoxsocket_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChkBoxsocket.CheckedChanged
        Me.Txtsocket.Visible = True
        Me.Txtsocket.Focus()
    End Sub

    Protected Sub ChkBxtrunk_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChkBxtrunk.CheckedChanged
        Me.Txttrunk.Visible = True
        Me.Txttrunk.Focus()
    End Sub

    Protected Sub Chkbxpipe_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Chkbxpipe.CheckedChanged
        Me.Txtpipe.Visible = True
        Me.Txtpipe.Focus()
    End Sub

    Protected Sub ChkBxrack_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChkBxrack.CheckedChanged
        Me.Txtbrack.Visible = True
        Me.Txtbrack.Focus()
    End Sub

    Protected Sub ChkBxbolt_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChkBxbolt.CheckedChanged
        Me.TxtBolt.Visible = True
        Me.TxtBolt.Focus()
    End Sub

    Protected Sub ChkBxlug_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChkBxlug.CheckedChanged
        Me.Txtlug.Visible = True
        Me.Txtlug.Focus()
    End Sub

    Protected Sub ChkBxctie_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChkBxctie.CheckedChanged
        Me.Txtctie.Visible = True
        Me.Txtctie.Focus()
    End Sub

    Protected Sub ChkBxscrew_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChkBxscrew.CheckedChanged
        Me.Txtscrew.Visible = True
        Me.Txtscrew.Focus()
    End Sub

    Protected Sub ChkBxscharge_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChkBxscharge.CheckedChanged
        Me.Txtscharge.Visible = True
        Me.Txtscharge.Focus()
    End Sub

    Protected Sub ChkBxbreaker_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChkBxbreaker.CheckedChanged
        Me.TxtBreaker.Visible = True
        Me.TxtBreaker.Focus()
    End Sub

    Protected Sub ChkBxcombiner_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChkBxcombiner.CheckedChanged
        Me.Txtcombiner.Visible = True
        Me.Txtcombiner.Focus()
    End Sub

    Protected Sub ChkBxarrester_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChkBxarrester.CheckedChanged
        Me.Txtarrester.Visible = True
        Me.Txtarrester.Focus()
    End Sub

    Protected Sub ChkBxpanel_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChkBxpanel.CheckedChanged
        Me.Txtpanel.Visible = True
        Me.Txtpanel.Focus()
    End Sub
    Sub insiteinfo()
        Dim cmd As SqlCommand = New SqlCommand("update siteinfo set    sitestatus = @sitestatus where  ( projectname = @original_projectname ) and ( sitecode = @original_sitecode )", conn)

        cmd.Parameters.AddWithValue("@original_projectname", Me.DDLproname.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@original_sitecode", Me.DDLsiteid.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@sitestatus", "request")

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("Site Status has been changed ", MsgBoxStyle.Information, " INLAKS COMPUTERS")

            Else
                MsgBox("AN ERROR AS OCCURED," & _
                "PLEASE CHECK THE INFORMATION AND TRY AGAIN", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub


    Protected Sub Btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsubmit.Click

        insiteinfo()


        Txthitem.Text = Txthitem.Text & Me.Txtothers.Text
        Dim dstatus As String = "request"

        'input the items into material for request
        Dim cmd As SqlCommand = New SqlCommand("insert into materials ( projectname,sitecode, items,ddate,dstatus , itemrqt )" & _
        "values ( @projectname,@sitecode, @items,@ddate,@dstatus , @itemrqt )", conn)

        cmd.Parameters.AddWithValue("@projectname", Me.DDLproname.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@sitecode", Me.DDLsiteid.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@items", Me.Txthitem.Text)
        cmd.Parameters.AddWithValue("@ddate", Date.Now)
        cmd.Parameters.AddWithValue("@dstatus", dstatus)
        cmd.Parameters.AddWithValue("@itemrqt", Me.Txthitem.Text)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The request for the site " & Me.DDLsiteid.SelectedItem.Text, MsgBoxStyle.Information, "INLAKS COMPUTERS")
                clear()

            Else
                MsgBox("An error as occurred, Please check the fields and try again", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
                clear()

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            clear()

        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub loadpro()
        'Dim rdr As SqlDataReader
        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro where completed = @completed ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@completed"
        param.Value = "r"
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                Me.DDLproname.Items.Add(rdr("projectname"))


            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub inputmat()
        'input materials
        Dim mat, cat As New StringCollection

        Dim cmd As SqlCommand = New SqlCommand("select material , category from matlog", conn)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader

            While rdr.Read = True
                mat.Add(rdr("material"))
                cat.Add(rdr("category"))

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()

            End If
        End Try

        For x As Integer = 0 To cat.Count - 1
            If cat(x).ToString.ToLower = "trs cable" Then
                Me.DDLtrscable3.Items.Add(mat(x).ToString)
                Me.DDLtrscable4.Items.Add(mat(x).ToString)
            ElseIf cat(x).ToString.ToLower = "welding cable" Then
                Me.DDLwcable3.Items.Add(mat(x).ToString)
                Me.DDLwcable4.Items.Add(mat(x).ToString)

            ElseIf cat(x).ToString.ToLower = "battery" Then
                Me.DDLbattery3.Items.Add(mat(x).ToString)
                Me.DDLbattery4.Items.Add(mat(x).ToString)

            ElseIf cat(x).ToString.ToLower = "inverter" Then
                Me.DDLinv3.Items.Add(mat(x).ToString)
                Me.DDLinv4.Items.Add(mat(x).ToString)

            ElseIf cat(x).ToString.ToLower = "dc disconnect" Then
                Me.DDLdisconnt3.Items.Add(mat(x).ToString)
                Me.DDLdisconnt4.Items.Add(mat(x).ToString)
            End If



        Next
    End Sub
    Sub clear()
        Me.DDLtrscable1.ClearSelection()
        Me.Txttrscable1.Visible = False
        Me.Txttrscable1.Text = ""
        Me.DDLtrscable2.ClearSelection()
        Me.Txttrscable2.Text = ""
        Me.Txttrscable2.Visible = False
        Me.DDLtrscable3.ClearSelection()
        Me.Txttrscable3.Text = ""
        Me.Txttrscable3.Visible = False
        Me.DDLtrscable4.ClearSelection()
        Me.Txttrscable4.Text = ""
        Me.Txttrscable4.Visible = False
        Me.DDLwcable1.ClearSelection()
        Me.Txtwcable1.Text = ""
        Me.Txtwcable1.Visible = False
        Me.DDLwcable2.ClearSelection()
        Me.Txtwcable2.Text = ""
        Me.Txtwcable2.Visible = False
        Me.DDLwcable3.ClearSelection()
        Me.Txtwcable3.Text = ""
        Me.Txtwcable3.Visible = False
        Me.DDLwcable4.ClearSelection()
        Me.Txtwcable4.Text = ""
        Me.Txtwcable4.Visible = False
        Me.DDLbattery1.ClearSelection()
        Me.Txtbattery1.Text = ""
        Me.Txtbattery1.Visible = False
        Me.DDLbattery2.ClearSelection()
        Me.TxtBattery2.Text = ""
        Me.TxtBattery2.Visible = False
        Me.DDLbattery3.ClearSelection()
        Me.Txtbattery3.Text = ""
        Me.Txtbattery3.Visible = False
        Me.DDLbattery4.ClearSelection()
        Me.Txtbattery4.Text = ""
        Me.Txtbattery4.Visible = False
        Me.DDLdisconnt1.ClearSelection()
        Me.Txtdisconnt1.Text = ""
        Me.Txtdisconnt1.Visible = False
        DDLdisconnt2.ClearSelection()
        Me.Txtdisconnt2.Text = ""
        Me.Txtdisconnt2.Visible = False
        DDLdisconnt3.ClearSelection()
        Me.Txtdisconnt3.Text = ""
        Me.Txtdisconnt3.Visible = False
        DDLdisconnt4.ClearSelection()
        Me.Txtdisconnt4.Text = ""
        Me.Txtdisconnt4.Visible = False
        Me.DDLinv1.ClearSelection()
        Me.Txtinv1.Text = ""
        Me.Txtinv1.Visible = False
        Me.DDLinv2.ClearSelection()
        Me.Txtinv2.Text = ""
        Me.Txtinv2.Visible = False
        Me.DDLinv3.ClearSelection()
        Me.Txtinv3.Text = ""
        Me.Txtinv3.Visible = False
        Me.DDLinv4.ClearSelection()
        Me.Txtinv4.Text = ""
        Me.Txtinv4.Visible = False
        Me.ChkBoxsocket.Checked = False
        Me.Txtsocket.Text = ""
        Me.Txtsocket.Visible = False
        Me.ChkBxtrunk.Checked = False
        Me.Txttrunk.Text = ""
        Me.Txttrunk.Visible = False
        Me.Chkbxpipe.Checked = False
        Me.Txtpipe.Text = ""
        Me.Txtpipe.Visible = False
        Me.ChkBxrack.Checked = False
        Me.Txtbrack.Text = ""
        Me.Txtbrack.Visible = False
        Me.ChkBxbolt.Checked = False
        Me.TxtBolt.Text = ""
        Me.TxtBolt.Visible = False
        ChkBxctie.Checked = False
        Txtctie.Text = ""
        Txtctie.Visible = False
        Me.ChkBxscrew.Checked = False
        Me.Txtscrew.Text = ""
        Me.Txtscrew.Visible = False
        Me.ChkBxscharge.Checked = False
        Me.Txtscharge.Text = ""
        Me.Txtscharge.Visible = False
        Me.ChkBxbreaker.Visible = False
        Me.TxtBreaker.Text = ""
        Me.TxtBreaker.Visible = False
        Me.ChkBxcombiner.Checked = False
        Me.Txtcombiner.Text = ""
        Me.Txtcombiner.Visible = False
        Me.ChkBxarrester.Checked = False
        Me.Txtarrester.Text = ""
        Me.Txtarrester.Visible = False
        Me.ChkBxpanel.Checked = False
        Me.Txtpanel.Text = ""
        Txtpanel.Visible = False
        Me.Chkgswitch.Checked = False
        Me.Txtgswitch.Text = ""
        Me.Txtgswitch.Visible = False
        Me.Txtothers.Text = ""
        Me.Txtissues.Text = ""
        Me.Txtbattery.Text = ""
        Me.Txtpsource.Text = ""
        Me.Txtcrack.Text = ""
        Me.Txtatm.Text = ""
        Me.Txtebonding.Text = ""
        Me.Txtarrestor.Text = ""
        Me.Txtereading.Text = ""
        Me.Txtpaudit.Text = ""

    End Sub

    Protected Sub Txttrscable1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txttrscable1.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLtrscable1.SelectedItem.Text & " - " & Me.Txttrscable1.Text & ","
    End Sub

    Protected Sub Txttrscable2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txttrscable2.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLtrscable2.SelectedItem.Text & " - " & Me.Txttrscable2.Text & ","
    End Sub

    Protected Sub Txtwcable1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtwcable1.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLwcable1.SelectedItem.Text & " - " & Me.Txtwcable1.Text & ","
    End Sub

    Protected Sub Txtwcable2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtwcable2.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLwcable2.SelectedItem.Text & " - " & Me.Txtwcable2.Text & ","
    End Sub

    Protected Sub Txtbattery1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtbattery1.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLbattery1.SelectedItem.Text & " - " & Me.Txtbattery1.Text & ","

    End Sub

    Protected Sub TxtBattery2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TxtBattery2.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLbattery2.SelectedItem.Text & " - " & Me.TxtBattery2.Text & ","

    End Sub

    Protected Sub Txtdisconnt1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtdisconnt1.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLdisconnt1.SelectedItem.Text & " - " & Me.Txtdisconnt1.Text & ","

    End Sub

    Protected Sub Txtdisconnt2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtdisconnt2.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLdisconnt2.SelectedItem.Text & " - " & Me.Txtdisconnt2.Text & ","
    End Sub

    Protected Sub Txtinv1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtinv1.TextChanged
        Txthitem.Text = Me.Txthitem.Text & Me.DDLinv1.SelectedItem.Text & " - " & Me.Txtinv1.Text & ","
    End Sub

    Protected Sub Txtinv2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtinv2.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLinv2.SelectedItem.Text & " - " & Me.Txtinv2.Text & ","
    End Sub

    Protected Sub Txtsocket_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtsocket.TextChanged
        If Me.ChkBoxsocket.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.ChkBoxsocket.Text & " - " & Me.Txtsocket.Text & ","
        End If
    End Sub

    Protected Sub Txttrunk_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txttrunk.TextChanged
        If Me.ChkBxtrunk.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.ChkBxtrunk.Text & " - " & Me.Txttrunk.Text & ","
        End If

    End Sub

    Protected Sub Txtpipe_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtpipe.TextChanged
        If Me.Chkbxpipe.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.Chkbxpipe.Text & " - " & Me.Txtpipe.Text & ","
        End If

    End Sub

    Protected Sub Txtbrack_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtbrack.TextChanged
        If Me.ChkBxrack.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.ChkBxrack.Text & " - " & Me.Txtbrack.Text & ","
        End If

    End Sub

    Protected Sub TxtBolt_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TxtBolt.TextChanged
        If Me.ChkBxbolt.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.ChkBxbolt.Text & " - " & Me.TxtBolt.Text & ","
        End If

    End Sub

    Protected Sub Txtlug_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtlug.TextChanged
        If Me.ChkBxlug.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.ChkBxlug.Text & " - " & Me.Txtlug.Text & ","
        End If

    End Sub

    Protected Sub Txtctie_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtctie.TextChanged
        If Me.ChkBxctie.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.ChkBxctie.Text & " - " & Me.Txtctie.Text & ","
        End If

    End Sub

    Protected Sub Txtscrew_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtscrew.TextChanged
        If Me.ChkBxscrew.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.ChkBxscrew.Text & " - " & Me.Txtscrew.Text & ","
        End If

    End Sub

    Protected Sub Txtscharge_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtscharge.TextChanged
        If Me.ChkBxscharge.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.ChkBxscharge.Text & " - " & Me.Txtscharge.Text & ","
        End If

    End Sub

    Protected Sub TxtBreaker_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TxtBreaker.TextChanged
        If Me.ChkBxbreaker.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.ChkBxbreaker.Text & " - " & Me.TxtBreaker.Text & ","
        End If

    End Sub

    Protected Sub Txtcombiner_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtcombiner.TextChanged
        If Me.ChkBxcombiner.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.ChkBxcombiner.Text & " - " & Me.Txtcombiner.Text & ","
        End If

    End Sub

    Protected Sub Txtarrester_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtarrester.TextChanged
        If Me.ChkBxarrester.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.ChkBxarrester.Text & " - " & Me.Txtarrester.Text & ","
        End If

    End Sub

    Protected Sub Txtpanel_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtpanel.TextChanged
        If Me.ChkBxpanel.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.ChkBxpanel.Text & " - " & Me.Txtpanel.Text & ","
        End If


    End Sub

    Protected Sub Btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnreset.Click
        clear()

    End Sub

    Protected Sub DDLproname_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLproname.SelectedIndexChanged
        'load the siteid from survey table



        Dim cmd As SqlCommand = New SqlCommand("SELECT   sitecode FROM siteinfo WHERE        (Projectname = @projectname) AND (sitestatus = @sitestatus) ", conn)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproname.SelectedItem.Text

        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@sitestatus"
        param2.Value = "surveyed"

        cmd.Parameters.Add(param2)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True

                Me.DDLsiteid.Items.Add(rdr("sitecode"))

            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub DDLsiteid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLsiteid.SelectedIndexChanged
        'load address
        Dim rdr As SqlDataReader

        Dim cmd As SqlCommand = New SqlCommand("select clientaddress, clienttown, clientstate from siteinfo where sitecode= @sitecode", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitecode"
        param.Value = Me.DDLsiteid.SelectedItem.Text

        cmd.Parameters.Add(param)


        Try
            conn.Open()

            rdr = cmd.ExecuteReader()

            While (rdr.Read() = True)


                Me.saddress = rdr("clientaddress")
                Me.stown = rdr("clienttown")
                Me.sstate = rdr("clientstate")


                Me.Txtaddress.Text = Me.saddress & "," & vbCrLf & Me.stown & "," & vbCrLf & Me.sstate & "."

            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

        Me.Txtissues.Text = ""
        Me.Txtbattery.Text = ""
        Me.Txtpsource.Text = ""
        Me.Txtcrack.Text = ""
        Me.Txtatm.Text = ""
        Me.Txtebonding.Text = ""
        Me.Txtarrestor.Text = ""
        Me.Txtereading.Text = ""
        Me.Txtpaudit.Text = ""
        readsurvey()
    End Sub
    Sub readsurvey()
        Dim cmd As SqlCommand = New SqlCommand("select tcomment, loadcapcty , invtbattery , invtpsource ,invtcrack , invtatm ,earthbding ,arrestor ,earthrding from survey " & _
        " where  projectname = @projectname and sitecode = @sitecode", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.DDLproname.SelectedItem.Text
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@sitecode"
        param1.Value = Me.DDLsiteid.SelectedItem.Text
        cmd.Parameters.Add(param1)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read = True
                    Me.Txtissues.Text = rdr("tcomment")
                    Me.Txtpaudit.Text = rdr("loadcapcty")
                    Me.Txtbattery.Text = rdr("invtbattery")
                    Me.Txtpsource.Text = rdr("invtpsource")
                    Me.Txtcrack.Text = rdr("invtcrack")
                    Me.Txtatm.Text = rdr("invtatm")
                    Me.Txtebonding.Text = rdr("earthbding")
                    Me.Txtarrestor.Text = rdr("arrestor")
                    Me.Txtereading.Text = rdr("earthrding")
                End While
            End If

        Catch ex As Exception
            ' MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            loadpro()
            loadpages()
            checkrole()
            pages()
            inputmat()
        End If

    End Sub
    Sub loadpages()
        Dim addpage As String

        Dim constrg As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\datasecure.mdf;Integrated Security=True;User Instance=True"
        Dim con As New SqlConnection(constrg)
        Dim rd As SqlDataReader


        Dim cmd As SqlCommand = New SqlCommand("select newpage from otheraccess where username =@username ", con)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@username"
        param.Value = CType(Session.Item("username"), String)
        cmd.Parameters.Add(param)



        Try
            con.Open()
            rd = cmd.ExecuteReader





            While rd.Read = True
                addpage = (rd("newpage"))
                If addpage.ToLower = "nopages," Then

                    Me.Menu1.Items.Item(0).ChildItems.Clear()
                Else


                    Dim dpage As String() = (Split(addpage, ","))
                    For x As Int16 = 0 To Me.Menu1.Items.Item(0).ChildItems.Count - 1



                        If Not Me.Menu1.Items.Item(0).ChildItems.Item(x).Text = dpage(x) Then

                            Me.Menu1.Items.Item(0).ChildItems.Item(x).Text = ""

                        End If
                    Next
                End If



            End While


        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not con.State = Data.ConnectionState.Closed Then
                con.Close()
            End If
        End Try

    End Sub
    Sub checkrole()

        Dim drole As String

        Dim constrg As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\datasecure.mdf;Integrated Security=True;User Instance=True"
        Dim con As New SqlConnection(constrg)
        Dim rd As SqlDataReader


        Dim cmd As SqlCommand = New SqlCommand("select role from [user] where username =@username ", con)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@username"
        param.Value = CType(Session.Item("username"), String)
        cmd.Parameters.Add(param)
        Try
            con.Open()
            rd = cmd.ExecuteReader

            While rd.Read = True

                drole = rd("role")
                'MsgBox(drole)
                If Not drole = "implementation" Then

                    Me.ImageButton1.Enabled = False
                    Me.ImageButton3.Enabled = False
                    Me.ImageButton4.Enabled = False
                    Me.ImageButton2.Enabled = False
                    Me.ImageButton5.Enabled = False

                End If
            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not con.State = Data.ConnectionState.Closed Then
                con.Close()
            End If
        End Try
    End Sub

    Sub pages()
        getrole()
        If Not urole = "implementation" Then
            Me.Menu2.Items.Item(0).ChildItems.Clear()
        End If
    End Sub
    Sub getrole()
        'to get user's role to load menu pages
        Dim constrg As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\datasecure.mdf;Integrated Security=True;User Instance=True"
        Dim con As New SqlConnection(constrg)
        Dim rd As SqlDataReader



        Dim cmd As SqlCommand = New SqlCommand("select role from [user] where username =@username ", con)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@username"
        param.Value = CType(Session.Item("username"), String)
        cmd.Parameters.Add(param)



        Try
            con.Open()
            rd = cmd.ExecuteReader





            While rd.Read = True
                urole = (rd("role"))


            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not con.State = Data.ConnectionState.Closed Then
                con.Close()
            End If
        End Try

    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        getrole()
        'to return to defualt home page
        If urole = "Administrator" Then

            Me.LinkButton1.PostBackUrl = "~/admin.aspx"


        ElseIf urole = "implementation" Then


            Me.LinkButton1.PostBackUrl = "~/implementation.aspx"

        ElseIf urole = "support" Then

            Me.LinkButton1.PostBackUrl = "~/support_home.aspx"

        ElseIf urole = "workshop" Then
            Me.LinkButton1.PostBackUrl = "~/store_workshop.aspx"


        ElseIf urole = "Equipment Handling" Then
            Me.LinkButton1.PostBackUrl = "~/materials.aspx"


        ElseIf urole = "General Operations" Then

            Me.LinkButton1.PostBackUrl = "~\qc_assign.aspx"
        Else
            MsgBox("This user role is not provided " & vbCrLf & "Contact the administrator", MsgBoxStyle.Exclamation, "Inlaks Computers")
        End If

    End Sub


    Protected Sub DDLwcable2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLwcable2.SelectedIndexChanged

        Me.Txtwcable2.Visible = True
        Me.Txtwcable2.Focus()

    End Sub

    Protected Sub DDLtrscable3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLtrscable3.SelectedIndexChanged
        Me.Txttrscable3.Visible = True
        Me.Txttrscable3.Focus()

    End Sub

    Protected Sub DDLtrscable4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLtrscable4.SelectedIndexChanged

        Me.Txttrscable4.Visible = True
        Me.Txttrscable4.Focus()

    End Sub

    Protected Sub DDLwcable3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLwcable3.SelectedIndexChanged

        Me.Txtwcable3.Visible = True
        Me.Txtwcable3.Focus()

    End Sub

    Protected Sub DDLwcable4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLwcable4.SelectedIndexChanged

        Me.Txtwcable4.Visible = True
        Me.Txtwcable4.Focus()

    End Sub

    Protected Sub DDLbattery3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLbattery3.SelectedIndexChanged

        Me.Txtbattery3.Visible = True
        Me.Txtbattery3.Focus()

    End Sub

    Protected Sub DDLbattery4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLbattery4.SelectedIndexChanged

        Me.Txtbattery4.Visible = True
        Me.Txtbattery4.Focus()

    End Sub

    Protected Sub DDLdisconnt3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLdisconnt3.SelectedIndexChanged

        Me.Txtdisconnt3.Visible = True
        Me.Txtdisconnt3.Focus()

    End Sub

    Protected Sub DDLdisconnt4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLdisconnt4.SelectedIndexChanged

        Me.Txtdisconnt4.Visible = True
        Me.Txtdisconnt4.Focus()

    End Sub

    Protected Sub DDLinv3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLinv3.SelectedIndexChanged
        Me.Txtinv3.Visible = True
        Me.Txtinv3.Focus()

    End Sub

    Protected Sub DDLinv4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLinv4.SelectedIndexChanged

        Me.Txtinv4.Visible = True
        Me.Txtinv4.Focus()

    End Sub

    Protected Sub Chkgswitch_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Chkgswitch.CheckedChanged
        Me.Txtgswitch.Visible = True
        Me.Txtgswitch.Focus()

    End Sub

    Protected Sub Txtgswitch_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtgswitch.TextChanged
        If Me.Chkgswitch.Checked = True Then
            Txthitem.Text = Txthitem.Text & Me.Chkgswitch.Text & " - " & Me.Txtgswitch.Text & ","
        End If
    End Sub

    Protected Sub Txttrscable3_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txttrscable3.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLtrscable3.SelectedItem.Text & " - " & Me.Txttrscable3.Text & ","

    End Sub

    Protected Sub Txttrscable4_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txttrscable4.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLtrscable4.SelectedItem.Text & " - " & Me.Txttrscable4.Text & ","
    End Sub

    Protected Sub Txtwcable3_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtwcable3.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLwcable3.SelectedItem.Text & " - " & Me.Txtwcable3.Text & ","
    End Sub

    Protected Sub Txtwcable4_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtwcable4.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLwcable4.SelectedItem.Text & " - " & Me.Txtwcable4.Text & ","
    End Sub

    Protected Sub Txtbattery3_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtbattery3.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLbattery3.SelectedItem.Text & " - " & Me.Txtbattery3.Text & ","
    End Sub

    Protected Sub Txtbattery4_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtbattery4.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLbattery4.SelectedItem.Text & " - " & Me.Txtbattery4.Text & ","
    End Sub

    Protected Sub Txtdisconnt3_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtdisconnt3.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLdisconnt3.SelectedItem.Text & " - " & Me.Txtdisconnt3.Text & ","
    End Sub

    Protected Sub Txtdisconnt4_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtdisconnt4.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLdisconnt4.SelectedItem.Text & " - " & Me.Txtdisconnt4.Text & ","
    End Sub

    Protected Sub Txtinv3_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtinv3.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLinv3.SelectedItem.Text & " - " & Me.Txtinv3.Text & ","
    End Sub

    Protected Sub Txtinv4_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtinv4.TextChanged
        Txthitem.Text = Txthitem.Text & Me.DDLinv4.SelectedItem.Text & " - " & Me.Txtinv4.Text & ","
    End Sub

End Class
