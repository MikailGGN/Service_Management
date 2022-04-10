Imports System.Data.SqlClient
Partial Class techform
    Inherits System.Web.UI.Page

    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)

    ' Protected Sub Btndob_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btndob.Click

    '    Me.Calendar1.Visible = True


    'End Sub

    'Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
    '   Me.TxtDOB.Text = Me.Calendar1.SelectedDate
    '    Me.Calendar1.Visible = False
    'End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Sub intechjob()

        Dim cmd As SqlCommand = New SqlCommand("insert into techjob  ( techid , techlevel , location , endjob , jobtype ) " & _
        " values  ( @techid , @techlevel , @location , @endjob , @jobtype ) ", conn)

        cmd.Parameters.AddWithValue("@techid", Me.txtTechid.Text)
        cmd.Parameters.AddWithValue("@techlevel", Me.DDLlevel.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@location", Me.DDLslocatn.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@endjob", Date.Now)
        cmd.Parameters.AddWithValue("@jobtype", "new")

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("Thank you, your informatioen has been collected.", MsgBoxStyle.Information, " Inlaks Computers  ")


            Else
                MsgBox("AN ERROR AS OCCURED,PLEASE TRY AGAIN", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
        Me.DDLslocatn.SelectedIndex = 0

    End Sub
    Sub intechinfo()

        Dim cmd As SqlCommand = New SqlCommand("insert into Techinfo" & _
"( techid ,sname,fname,cntaddress,pmaddress,techlevel,phone,sex,dob,nation,sorigin,lga,mstatus,religion,account, bank , mobile, spoint)" & _
"values ( @techid ,@sname,@fname,@cntaddress,@pmaddress,@techlevel,@phone,@sex,@dob,@nation,@sorigin,@lga,@mstatus,@religion,@account, @bank ,@mobile , @spoint )", conn)


        cmd.Parameters.AddWithValue("@techid", Me.txtTechid.Text)
        cmd.Parameters.AddWithValue("@fname", Me.Txtfname.Text)
        cmd.Parameters.AddWithValue("@sname", Me.Txtsname.Text)
        cmd.Parameters.AddWithValue("@cntaddress", Me.Txtcurrentadd.Text)
        cmd.Parameters.AddWithValue("@pmaddress", Me.Txtpaddress.Text)
        cmd.Parameters.AddWithValue("@techlevel", Me.DDLlevel.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@phone", Me.Txttelephone.Text)
        cmd.Parameters.AddWithValue("@sex", Me.DDLsex.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@dob", Me.TxtDOB.Text)
        cmd.Parameters.AddWithValue("nation", Me.Txtnation.Text)
        cmd.Parameters.AddWithValue("@sorigin", Me.DDLstate.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@lga", Me.Txttown.Text)
        cmd.Parameters.AddWithValue("@mstatus", Me.DDLstatus.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@religion", Me.DDLreligion.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@account", Me.Txtaccount.Text)
        cmd.Parameters.AddWithValue("@bank", Me.Txtbank.Text)
        cmd.Parameters.AddWithValue("@mobile", Me.Txtphone.Text)
        cmd.Parameters.AddWithValue("@spoint", Me.DDLslocatn.SelectedItem.Text)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("Thank you, your informatioen has been collected.", MsgBoxStyle.Information, " Inlaks Computers  ")


            Else
                MsgBox("AN ERROR AS OCCURED,PLEASE TRY AGAIN", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        'store the picture in a folder stopics

        Me.Fupic.SaveAs(MapPath("~/stopics/" + Fupic.FileName))
        'enter the data in the database
        intechinfo()

        intechjob()
        clear()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        clear()
    End Sub
    Sub clear()
        Me.txtTechid.Text = ""
        Me.Txtfname.Text = ""
        Me.Txtsname.Text = ""
        Me.Txtcurrentadd.Text = ""
        Me.Txtpaddress.Text = ""
        Me.DDLlevel.SelectedIndex = 0
        Me.Txtphone.Text = ""
        Me.DDLsex.SelectedIndex = 0
        Me.TxtDOB.Text = ""
        Me.Txtnation.Text = ""
        Me.Txtphone.Text = ""
        Me.Txtage.Text = ""
        Me.DDLstate.SelectedIndex = 0
        Me.Txttown.Text = ""
        Me.DDLstatus.SelectedIndex = 0
        Me.DDLreligion.SelectedIndex = 0
        Me.Txtaccount.Text = ""
        Me.Txtbank.Text = ""
        Me.Txttelephone.Text = ""

    End Sub
End Class


