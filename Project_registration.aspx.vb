Imports System.Data.SqlClient
Partial Class Project_registration
    Inherits System.Web.UI.Page

    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Protected Sub Btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsub.Click
        'enter the form values into the database
        Dim cmd As SqlCommand = New SqlCommand("insert into regpro ( client,projectname , projectdesc , dateissue , completed , warranty )" & _
                " values( @client,@projectname , @projectdesc, @dateissue , @completed , @warranty)", conn)

        cmd.Parameters.AddWithValue("@client", Me.ddlpname.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@projectname", Me.Txtproname.Text)
        cmd.Parameters.AddWithValue("@projectdesc", Me.Txtdesc.Text)
        cmd.Parameters.AddWithValue("@dateissue", Date.Now)
        cmd.Parameters.AddWithValue("@completed", "r")

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The Project has been registered." & _
                vbCrLf & "To register more project, click ok. ", MsgBoxStyle.OkCancel, "INLAKS COMPUTERS")
                If Microsoft.VisualBasic.MsgBoxStyle.OkOnly = MsgBoxResult.Ok Then
                    clear()


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
        clear()

    End Sub
    Sub clear()
        Me.ddlpname.SelectedItem.Text = ""
        Me.Txtdesc.Text = ""
        Me.Txtproname.Text = ""
        Me.ddlpname.Focus()


    End Sub
   

    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            loadpages()
            loadpro()
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

    Sub loadpro()
        Dim cmd As SqlCommand = New SqlCommand("select clientname from clientinfo ", conn)

        Dim rdr As SqlDataReader

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                Me.ddlpname.Items.Add(rdr("clientname"))


            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

End Class
