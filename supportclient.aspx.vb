Imports System.Data.SqlClient
Partial Class supportclient
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            loadclient()

            loadpages()
            loadstate()
        End If
    End Sub
    Sub loadstate()


        Dim cmd As SqlCommand = New SqlCommand("select state from stateinfo", conn)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows = True Then
                While (rdr.Read = True)

                    Me.DDLstate.Items.Add(rdr("state"))

                End While

            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
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
    Sub loadclient()
        Dim cmd As SqlCommand = New SqlCommand("select clientname from clientinfo", conn)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows = True Then
                While (rdr.Read = True)

                    Me.DDLclient.Items.Add(rdr("clientname"))

                End While

            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try

    End Sub

    Protected Sub DDLclient_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLclient.SelectedIndexChanged
        'load the project 

        clear()
        Me.DDLproject.Items.Clear()
        Me.DDLproject.Items.Add("Select...")
        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro where client = @client ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@client"
        param.Value = Me.DDLclient.SelectedItem.Text
        cmd.Parameters.Add(param)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows = True Then
                While (rdr.Read = True)

                    Me.DDLproject.Items.Add(rdr("projectname"))

                End While

            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try
    End Sub

    
    Protected Sub Btntown_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btntown.Click

        'load the address

        Me.Listaddress.Items.Clear()
        Dim cmd As SqlCommand = New SqlCommand("select clientaddress from siteinfo where (projectname = @projectname) and (clientstate = @clientstate ) and( clienttown = @clienttown) ", conn)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproject.SelectedItem.Text
        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@clientstate"
        param2.Value = Me.DDLstate.SelectedItem.Text
        cmd.Parameters.Add(param2)

        Dim param3 As SqlParameter = New SqlParameter
        param3.ParameterName = "@clienttown"
        param3.Value = Me.Txttown.Text
        cmd.Parameters.Add(param3)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows = True Then
                While (rdr.Read = True)

                    Me.Listaddress.Items.Add(rdr("clientaddress"))
                    'Me.Listaddress.SelectedIndex = 0
                End While

            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try
    End Sub

    Protected Sub Listaddress_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Listaddress.SelectedIndexChanged
        'load the sitecode

        Dim cmd As SqlCommand = New SqlCommand("select sitecode from siteinfo where ( projectname = @projectname ) and ( clientstate = @clientstate) and ( clienttown = @clienttown) and ( clientaddress = @clientaddress ) ", conn)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproject.SelectedItem.Text
        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@clientstate"
        param2.Value = Me.DDLstate.SelectedItem.Text
        cmd.Parameters.Add(param2)

        Dim param3 As SqlParameter = New SqlParameter
        param3.ParameterName = "@clienttown"
        param3.Value = Me.Txttown.Text
        cmd.Parameters.Add(param3)


        Dim param4 As SqlParameter = New SqlParameter
        param4.ParameterName = "@clientaddress"
        param4.Value = Me.Listaddress.SelectedItem.Text
        cmd.Parameters.Add(param4)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows = True Then
                While (rdr.Read = True)

                    Me.Txtsite.Text = (rdr("sitecode"))


                End While
            Else
                MsgBox("sitecode cannot be traced", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try
    End Sub
    Sub checkwarranty()

        Dim wdate As Date

        Dim cmd As SqlCommand = New SqlCommand("select warranty from siteinfo where projectname = @projectname  and sitecode = @sitecode ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.DDLproject.SelectedItem.Text
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@sitecode"
        param1.Value = Me.DDLproject.SelectedItem.Text
        cmd.Parameters.Add(param1)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows = True Then
                While (rdr.Read = True)

                    wdate = (rdr("warranty"))
                    If wdate > Date.Today Then
                        MsgBox("The Site is still under warranty" & vbCrLf & "warranty expires :" & wdate.ToString, MsgBoxStyle.Information, "INLAKS COMPUTERS")
                    Else
                        MsgBox("The Site is out of warranty" & vbCrLf & "warranty expired :" & wdate.ToString, MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
                    End If

                End While
            Else
                MsgBox("No record on this Site warranty", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try

    End Sub

    Sub insdata()

        Dim cmd As SqlCommand = New SqlCommand("insert into support ( sitecode , datereported , complaint ,ftype) " & _
        " values ( @sitecode , @datereported , @complaint , @ftype )", conn)

        cmd.Parameters.AddWithValue("@sitecode", Me.Txtsite.Text)
        cmd.Parameters.AddWithValue("@datereported", Date.Now)
        cmd.Parameters.AddWithValue("@complaint", Me.Txtcompliant.Text)
        cmd.Parameters.AddWithValue("@ftype", Me.DDLtype.SelectedItem.Text)


        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("site complaint has been collected ", MsgBoxStyle.Information, " INLAKS COMPUTERS")

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

    Protected Sub Btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsubmit.Click
        insdata()


        Clear()



    End Sub
    Sub clear()

        Me.DDLclient.SelectedIndex = 0
        Me.DDLstate.SelectedIndex = 0
        Me.DDLproject.SelectedIndex = 0
        Me.Txtsite.Text = ""
        Me.Txttown.Text = ""
        Me.Txtcompliant.Text = ""
        Me.Listaddress.Items.Clear()
        Me.DDLtype.SelectedIndex = 0
    End Sub

    Protected Sub Btnwarranty_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnwarranty.Click
        checkwarranty()
        Me.GridView1.DataBind()

    End Sub

    Protected Sub DDLproject_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLproject.SelectedIndexChanged

        Me.DDLstate.SelectedIndex = 0
        Me.Txtsite.Text = ""
        Me.Txttown.Text = ""
        Me.Txtcompliant.Text = ""
        Me.Listaddress.Items.Clear()
        Me.DDLtype.SelectedIndex = 0

    End Sub

    Protected Sub DDLstate_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLstate.SelectedIndexChanged
        Me.Txtsite.Text = ""
        Me.Txttown.Text = ""
        Me.Txtcompliant.Text = ""
        Me.Listaddress.Items.Clear()
        Me.DDLtype.SelectedIndex = 0
    End Sub
End Class
