Imports System.Data.SqlClient
Partial Class support_home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            loadpages()
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

            If rd.HasRows = False Then

                MsgBox("what")

            Else

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
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not con.State = Data.ConnectionState.Closed Then
                con.Close()
            End If
        End Try

    End Sub
End Class
