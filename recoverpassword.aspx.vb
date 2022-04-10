Imports System.Data.SqlClient
Partial Class recoverpassword
    Inherits System.Web.UI.Page

    Dim cons As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\datasecure.mdf;Integrated Security=True;User Instance=True"
    Dim con As New SqlConnection(cons)
    Dim rd As SqlDataReader

   

    Protected Sub Txtuname_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Txtuname.TextChanged

        Dim cmd As SqlCommand = New SqlCommand("select question , answer from [user] where username = @username ", con)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@username"
        param.Value = Me.Txtuname.Text
        cmd.Parameters.Add(param)

        Try
            con.Open()
            rd = cmd.ExecuteReader
            If rd.HasRows Then
                While rd.Read = True

                    Me.Txtquestn.Text = rd("question")
                    Me.Txtanswa.Text = rd("answer")
                    dplay()

                End While
            Else
                MsgBox("This Username does not exist", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not con.State = Data.ConnectionState.Closed Then
                con.Close()
            End If
        End Try
    End Sub
    Sub dplay()

        Me.Label2.Visible = True
        Me.Label3.Visible = True
        Me.Btnansa.Visible = True
        Me.Txtquestn.Visible = True
        Me.Txtanswer.Visible = True

    End Sub

    Protected Sub Btnansa_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnansa.Click

        If Me.Txtanswa.Text = Me.Txtanswer.Text Then

            Me.Label1.Visible = True
            getuser()

        Else


            MsgBox("You have provide the wrong answer!," & vbCrLf & "Please contact the adminstrator.  ", MsgBoxStyle.Exclamation, "Inlaks Computers")


            Me.Txtquestn.Text = ""
            Me.Txtanswer.Text = ""
            Me.Txtuname.Text = ""
            Me.Label1.Text = ""
            Me.Label2.Visible = False
            Me.Label3.Visible = False
            Me.Btnansa.Visible = False
            Me.Txtquestn.Visible = False
            Me.Txtanswer.Visible = False

        End If



    End Sub
    Sub getuser()

        Dim cmd As SqlCommand = New SqlCommand("select password from [user] where username = @username and question = @question and answer = @answer ", con)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@username"
        param.Value = Me.Txtuname.Text
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@question"
        param1.Value = Me.Txtquestn.Text
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@answer"
        param2.Value = Me.Txtanswer.Text
        cmd.Parameters.Add(param2)

        Try
            con.Open()
            rd = cmd.ExecuteReader
            If rd.HasRows Then
                While rd.Read = True

                    Me.Label1.Text = " Your password is " & " ' " & rd("password") & " ' "
                    

                End While
            Else

                ' MsgBox("You have provide the wrong answer!," & vbCrLf & "Please contact the adminstrator.  ", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally

            If Not con.State = Data.ConnectionState.Closed Then
                con.Close()

            End If

        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Me.Txtquestn.Text = ""
        Me.Txtanswer.Text = ""
        Me.Txtuname.Text = ""
        Me.Label1.Text = ""
        Me.Label2.Visible = False
        Me.Label3.Visible = False
        Me.Btnansa.Visible = False
        Me.Txtquestn.Visible = False
        Me.Txtanswer.Visible = False

    End Sub
End Class
