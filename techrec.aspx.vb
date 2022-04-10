Imports System.Data.SqlClient
Partial Class techrec
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then


            tecinfo()


        End If
    End Sub
    Sub tecinfo()


        Dim rdr As SqlDataReader

        Dim cmd As SqlCommand = New SqlCommand("select techid from techinfo ", conn)



        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read)

                    Me.DDLtechid.Items.Add(rdr("techid").ToString)


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If

        End Try
    End Sub
    Protected Sub DDLtechid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLtechid.SelectedIndexChanged

        'Me.Imtech.ImageUrl = "~\stopics\Tech234.jpg"

        Me.Imtech.ImageUrl = "~\stopics\" & Me.DDLtechid.SelectedItem.Text.Trim & ".jpg"





    End Sub
End Class
