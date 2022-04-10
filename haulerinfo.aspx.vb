Imports System.Data.SqlClient
Partial Class haulerinfo
    Inherits System.Web.UI.Page

    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim urole As String

    Protected Sub Btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsubmit.Click
        Dim cmd As SqlCommand = New SqlCommand("insert into hauler (name, address , telephone1 , telephone2 , email ) values " & _
        "(@name, @address , @telephone1 , @telephone2 , @email)", conn)

        cmd.Parameters.AddWithValue("@name", Me.Txtname.Text)
        cmd.Parameters.AddWithValue("@address", Me.Txtaddress.Text)
        cmd.Parameters.AddWithValue("@telephone1", Me.Txtfone1.Text)
        cmd.Parameters.AddWithValue("@telephone2", Me.Txtfone2.Text)
        cmd.Parameters.AddWithValue("@email", Me.TxtEmail.Text)


        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("Hauler's information has been collected." & vbCrLf & "Do you want to register more haulers", MsgBoxStyle.YesNo, "Inlaks Computers")
                clear()
            Else
                MsgBox("An error  has occurred, Please try again", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception

            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Closed Then

                conn.Close()

            End If

        End Try

    End Sub
    Sub clear()

        Me.Txtaddress.Text = ""
        Me.TxtEmail.Text = ""
        Me.Txtfone1.Text = ""
        Me.Txtfone2.Text = ""
        Me.Txtname.Text = ""

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
    Sub pages()
        getrole()
        If Not urole = "Equipment Handling" Then
            Me.Menu2.Items.Item(0).ChildItems.Clear()
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            loadpages()
            pages()

        End If
    End Sub
End Class
