Imports System.Data.SqlClient
Partial Class code_builders
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Protected Sub BtnState_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnState.Click

        Dim cmd As SqlCommand = New SqlCommand("insert into stateinfo ( state,statecode,region)" & _
               " values( @state,@statecode,@region)", conn)
        cmd.Parameters.AddWithValue("@statecode", Me.Txtscode.Text)
        cmd.Parameters.AddWithValue("@state", Me.DDLstate.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@region", Me.DDLregion.SelectedItem.Text)


        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("State code has been registered" & _
                "To add click yes", MsgBoxStyle.YesNo, "INLAKS COMPUTERS")

                If Microsoft.VisualBasic.MsgBoxResult.Yes Then
                    clear()
                    Me.DDLstate.Focus()
                Else
                    clear()
                    Me.DDLstate.Focus()
                End If


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
        Me.GridView2.DataBind()



    End Sub

    Protected Sub Btnclient_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnclient.Click

        Dim cmd As SqlCommand = New SqlCommand("insert into clientinfo ( clientname,clientcode)" & _
               " values( @clientname,@clientcode)", conn)

        cmd.Parameters.AddWithValue("@clientname", Me.Txtclient.Text)
        cmd.Parameters.AddWithValue("@clientcode", Me.Txtccode.Text)


        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("Client code has been registered" & _
               "To add click yes", MsgBoxStyle.YesNo, "INLAKS COMPUTERS")

                If Microsoft.VisualBasic.MsgBoxResult.Yes Then
                    clear()
                    Me.Txtclient.Focus()
                Else
                    clear()
                    Me.DDLstate.Focus()
                End If


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

        Me.GridView3.DataBind()

    End Sub

    Protected Sub Btnsitetype_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsitetype.Click
        Dim cmd As SqlCommand = New SqlCommand("insert into sitetypeinfo ( sitetype)" & _
                       " values( @sitetype)", conn)

        cmd.Parameters.AddWithValue("@sitetype", Me.Txtsitetype.Text)



        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("A new site type has been registered." & _
                "To add click yes", MsgBoxStyle.YesNo, "INLAKS COMPUTERS")
                If Microsoft.VisualBasic.MsgBoxResult.Yes Then
                    clear()
                    Me.Txtsitetype.Focus()
                Else
                    clear()
                    Me.DDLstate.Focus()
                End If


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


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then


            Me.DDLstate.Focus()

        End If
    End Sub
    Sub clear()
        Me.DDLregion.SelectedIndex = 0
        Me.DDLstate.SelectedIndex = 0
        Me.Txtsitetype.Text = ""
        Me.Txtscode.Text = ""

        Me.Txtclient.Text = ""
        Me.Txtccode.Text = ""
        Me.DDLstate.Focus()
    End Sub


    Protected Sub Btnmat_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnmat.Click


        Dim cmd As SqlCommand = New SqlCommand("insert into matlog ( material ,category )" & _
              " values( @material,@category)", conn)
        cmd.Parameters.AddWithValue("@material", Me.Txtmat.Text)
        cmd.Parameters.AddWithValue("@catgory", Me.DDLcatgy.SelectedItem.Text)



        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("A new equipment has been registered" & _
                "To add click yes", MsgBoxStyle.YesNo, "INLAKS COMPUTERS")

                If Microsoft.VisualBasic.MsgBoxResult.Yes Then
                    clear()
                    Me.DDLcatgy.SelectedIndex = 0
                    Me.Txtmat.Text = ""

                    Me.DDLcatgy.Focus()
                Else
                    clear()
                    Me.DDLcatgy.SelectedIndex = 0
                    Me.Txtmat.Text = ""

                    Me.DDLstate.Focus()
                End If


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
End Class
