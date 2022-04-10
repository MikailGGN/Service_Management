Imports System.Data.SqlClient

Partial Class userrecord
    Inherits System.Web.UI.Page
    Dim cons As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\datasecure.mdf;Integrated Security=True;User Instance=True"
    Dim con As New SqlConnection(cons)
    Dim rd As SqlDataReader
    Dim grants As String
    Dim brokenitem As String()


    'Protected Sub Txtcpasswd_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtcpasswd.TextChanged
    '   If Not (Me.Txtpasswd.Text = Me.Txtcpasswd.Text) Then
    '      MsgBox("This characters does not match the password, Try again.", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
    '     Me.Txtcpasswd.Text = ""
    '    Me.Txtpasswd.Text = ""
    '   Me.Txtpasswd.Focus()
    'Else
    'MsgBox("Password confirmed", MsgBoxStyle.Information, "INLAKS COMPUTERS")
    'Me.Txtquestn.Focus()
    'End If
    'End Sub

    Protected Sub Btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsub.Click
        useraccess()
        createuser()

        Me.DDLrole.SelectedIndex = 0
        Me.Txtuname.Text = ""
        Me.Txtquestn.Text = ""
        Me.Txtans.Text = ""

    End Sub
    Sub createuser()


        Dim cmd As SqlCommand = New SqlCommand(" Insert into [user] ( username , role , password , question , answer  ) values ( @username , @role , @password , @question , @answer ) ", con)

        cmd.Parameters.AddWithValue("@username", Me.Txtuname.Text)
        cmd.Parameters.AddWithValue("@role", Me.DDLrole.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@password", Me.Txtpasswd.Text)
        cmd.Parameters.AddWithValue("@question", Me.Txtquestn.Text)
        cmd.Parameters.AddWithValue("@answer", Me.Txtans.Text)

        Try
            con.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("User account has created successfully", MsgBoxStyle.Information, "Inlaks Computers")
            Else
                MsgBox("Check the information supplied and try again", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If con.State = Data.ConnectionState.Open Then
                con.Close()
            End If
        End Try

    End Sub

    Sub useraccess()



        Dim cmd As SqlCommand = New SqlCommand("insert into otheraccess ( username,newpage ) values ( @username , @newpage) ", con)

        cmd.Parameters.AddWithValue("@username", Me.Txtuname.Text)
        cmd.Parameters.AddWithValue("@newpage", "nopages,")

        Try
            con.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("User account has created successfully", MsgBoxStyle.Information, "Inlaks Computers")
            Else
                MsgBox("Check the information supplied and try again", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If con.State = Data.ConnectionState.Open Then
                con.Close()
            End If
        End Try
    End Sub

    Protected Sub Btnaddpage_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnaddpage.Click

        collect()

        Me.Chkimptec.Checked = False
        Me.Chkmapp.Checked = False
        Me.Chkmtrans.Checked = False
        Me.Chkqc.Checked = False
        Me.ChkRmat.Checked = False
        Me.Chksuptec.Checked = False
        Me.Chksuvass.Checked = False
        Me.Chksuvrpt.Checked = False
        Me.Chkwkshp.Checked = False
        Me.DDLguser.SelectedIndex = 0

    End Sub
    Sub collect()

        If Me.Chkimptec.Checked = True Then

            grants = grants & Me.Chkimptec.Text & ","
        ElseIf Me.Chkmapp.Checked = True Then
            grants = grants & Me.Chkmapp.Text & ","
        ElseIf Me.Chkmtrans.Checked = True Then
            grants = grants & Me.Chkmtrans.Text & ","
        ElseIf Me.Chkqc.Checked = True Then
            grants = grants & Me.Chkqc.Text & ","
        ElseIf Me.ChkRmat.Checked = True Then
            grants = grants & Me.ChkRmat.Text & ","
        ElseIf Me.Chksuptec.Checked = True Then
            grants = grants & Me.Chksuptec.Text & ","
        ElseIf Me.Chksuvass.Checked = True Then
            grants = grants & Me.Chksuvass.Text & ","
        ElseIf Me.Chksuvrpt.Checked = True Then
            grants = grants & Me.Chksuvrpt.Text
        ElseIf Me.Chkwkshp.Checked = True Then
            grants = grants & Me.Chkwkshp.Text & ","



        End If
    End Sub
    Sub loadusers()

        Dim cmd As SqlCommand = New SqlCommand("select username from otheraccess ", con)



        Try
            con.Open()
            rd = cmd.ExecuteReader
            While rd.Read = True
                Me.DDLguser.Items.Add(rd("username"))


            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not con.State = Data.ConnectionState.Closed Then
                con.Close()
            End If
        End Try
    End Sub
    Sub thegrants()

        Dim cmd As SqlCommand = New SqlCommand("select newpage from otheraccess where username = @username ", con)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@username"
        param.Value = Me.DDLguser.SelectedItem.Text

        cmd.Parameters.Add(param)

        Try
            con.Open()
            rd = cmd.ExecuteReader
            While rd.Read = True


                grants = (rd("newpage"))


            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not con.State = Data.ConnectionState.Closed Then
                con.Close()
            End If
        End Try

        brokenitem = Split(grants, ",")

        For x As Int16 = 0 To Me.brokenitem.Length - 1

            If Me.Chkimptec.Text = Me.brokenitem(x).ToString Then
                Me.Chkimptec.Checked = True
            ElseIf Me.Chkmapp.Text = Me.brokenitem(x).ToString Then
                Me.Chkmapp.Checked = True
            ElseIf Me.Chkmtrans.Text = Me.brokenitem(x).ToString Then
                Me.Chkmtrans.Checked = True
            ElseIf Me.Chkqc.Text = Me.brokenitem(x).ToString Then
                Me.Chkqc.Checked = True
            ElseIf Me.ChkRmat.Text = Me.brokenitem(x).ToString Then
                Me.ChkRmat.Checked = True
            ElseIf Me.Chksuptec.Text = Me.brokenitem(x).ToString Then
                Me.Chksuptec.Checked = True
            ElseIf Me.Chksuvass.Text = Me.brokenitem(x).ToString Then
                Me.Chksuvass.Checked = True
            ElseIf Me.Chksuvrpt.Text = Me.brokenitem(x).ToString Then
                Me.Chksuvrpt.Checked = True
            ElseIf Me.Chkwkshp.Text = Me.brokenitem(x).ToString Then
                Me.Chkwkshp.Checked = True

            End If


        Next


    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then

            loadusers()

        End If

    End Sub

    Protected Sub DDLguser_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLguser.SelectedIndexChanged

        Me.Chkimptec.Checked = False
        Me.Chkmapp.Checked = False
        Me.Chkmtrans.Checked = False
        Me.Chkqc.Checked = False
        Me.ChkRmat.Checked = False
        Me.Chksuptec.Checked = False
        Me.Chksuvass.Checked = False
        Me.Chksuvrpt.Checked = False
        Me.Chkwkshp.Checked = False

        thegrants()

    End Sub

    Protected Sub Menu2_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu2.MenuItemClick

    End Sub
End Class
