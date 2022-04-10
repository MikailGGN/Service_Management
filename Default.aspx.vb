
Imports System.Data.SqlClient
Imports System.Web.Caching.Cache
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim constrg As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\datasecure.mdf;Integrated Security=True;User Instance=True"
    Dim con As New SqlConnection(constrg)
    Dim rd As SqlDataReader
    Protected Sub Page_OnInit(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.ClearHeaders()
        'Response .
        Response.AppendHeader("Cache-Control", "no-cache") ''HTTP 1.1
        Response.AppendHeader("Cache-Control", "private") '' HTTP 1.1
        Response.AppendHeader("Cache-Control", "no-store") '' HTTP 1.1
        Response.AppendHeader("Cache-Control", "must-revalidate") '' HTTP 1.1
        Response.AppendHeader("Cache-Control", "max-stale=0") '' HTTP 1.1 
        Response.AppendHeader("Cache-Control", "post-check=0") '' HTTP 1.1 
        Response.AppendHeader("Cache-Control", "pre-check=0") '' HTTP 1.1 
        Response.AppendHeader("Pragma", "no-cache") '' HTTP 1.1 

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Handles Me.Load
        ' Session.Clear()
        If Not IsPostBack = True Then
            Response.ClearHeaders()
        End If
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1))

        HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache)

        Response.Cache.SetNoStore()

    End Sub
    Sub checkrole()




        Dim cmd As SqlCommand = New SqlCommand("select  role  from [user] where username = @username and password = @password ", con)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@username"
        param.Value = Me.Txtusername.Text
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@password"
        param1.Value = Me.Txtpassword.Text
        cmd.Parameters.Add(param1)


        Try
            con.Open()

            rd = cmd.ExecuteReader
            If rd.HasRows Then
                While rd.Read = True

                    Me.Txtrole.Text = rd("role").ToString

                    Session("username") = Me.Txtusername.Text
                    Session("role") = Me.Txtrole.Text




                End While
            Else
                MsgBox("This user has no defined role.", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception

            MsgBox(ex.Message)
        Finally
            If Not con.State = Data.ConnectionState.Closed Then
                con.Close()
            End If

        End Try



        If Me.Txtrole.Text.ToLower = "administrator" Then


            Response.Redirect("~/admin.aspx")
        ElseIf Me.Txtrole.Text.ToLower = "implementation" Then
            Response.Redirect("~/implementation.aspx")

        ElseIf Me.Txtrole.Text.ToLower = "support" Then

            Response.Redirect("~/support_home.aspx")

        ElseIf Me.Txtrole.Text.ToLower = "workshop" Then
            Response.Redirect("~/store_workshop.aspx")

        ElseIf Me.Txtrole.Text.ToLower = "equipment handling" Then
            Response.Redirect("~/materials.aspx")

        ElseIf Me.Txtrole.Text.ToLower = "general operations" Then

            Response.Redirect("~\qc_assign.aspx")

        Else

            MsgBox(" Enter the password again", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

        End If

    End Sub


    Protected Sub Btnlog_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnlog.Click
        checkrole()


    End Sub
End Class
