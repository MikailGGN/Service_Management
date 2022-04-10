Imports System.Data.SqlClient
Partial Class implementation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.Button4_Click(sender, e)
        'Me.Menu1.Visible = False
        loadpages()
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
    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click

        Me.Button4.ForeColor = Drawing.Color.MintCream
        Me.Button5.ForeColor = Drawing.Color.MintCream
        Me.Button6.ForeColor = Drawing.Color.Blue
        uncliq()

        Me.Label1.Visible = True
        'Me.HyperLink6.Visible = True
        Me.HyperLink7.Visible = True
        Me.HyperLink11.Visible = True
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        'Me.Button6.ForeColor = Drawing.Color.MintCream
        Me.Button4.ForeColor = Drawing.Color.MintCream
        Me.Button5.ForeColor = Drawing.Color.Blue
        uncliq()
        Me.HyperLink9.Visible = True
        Me.Label2.Visible = True
        Me.HyperLink5.Visible = True
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        'Me.Button6.ForeColor = Drawing.Color.MintCream
        Me.Button5.ForeColor = Drawing.Color.MintCream
        Me.Button4.ForeColor = Drawing.Color.Blue
        uncliq()

        Me.Label3.Visible = True
        Me.HyperLink4.Visible = True
        Me.HyperLink3.Visible = True
        Me.HyperLink2.Visible = True
        Me.HyperLink1.Visible = True
    End Sub
    Sub uncliq()

        Me.Label3.Visible = False
        Me.HyperLink4.Visible = False
        Me.HyperLink3.Visible = False
        Me.HyperLink2.Visible = False
        Me.HyperLink1.Visible = False
        Me.Label2.Visible = False
        Me.HyperLink5.Visible = False
        Me.Label1.Visible = False
        Me.HyperLink11.Visible = False
        Me.HyperLink7.Visible = False
        ' Me.HyperLink8.Visible = False
        Me.HyperLink9.Visible = False


    End Sub


End Class
