Imports System.Data.SqlClient
Partial Class closeproject
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim impl, ostd, mtrl As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            loadpro()
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

        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro where completed= @completed ", conn)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@completed"
        param1.Value = "r"
        cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True

                Me.DDLproname.Items.Add(rdr("projectname"))

            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Sub countimpl()
        'collecting and incrementing the site serial no by the state
        Dim cmd As SqlCommand = New SqlCommand("select sitenum from siteinfo where sitestatus = @sitestatus and projectname = @projectname ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitestatus"
        param.Value = "satisfactory"
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproname.SelectedItem.Text
        cmd.Parameters.Add(param1)

        ' creating an array cnt to collect the sitenum information
        Dim x As Integer
        Dim cnt As New StringCollection

        Dim j As Int16

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then

                While rdr.Read() = True

                    cnt.Add(rdr(x))

                    j += 1

                    'MsgBox(j.ToString)


                End While

            Else
                'j = 0
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

        Me.txtN0impl.Text = cnt.Count
        '  MsgBox("this is sitecount" & sitecount.ToString)
        'MsgBox(j.ToString )

    End Sub
    Sub countoutstd()

        'collecting and incrementing the site serial no by the state
        Dim cmd As SqlCommand = New SqlCommand("select sitenum from siteinfo where  projectname = @projectname and (Not (sitestatus = @sitestatus))  ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitestatus"
        param.Value = "satisfactory"
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproname.SelectedItem.Text
        cmd.Parameters.Add(param1)

        ' creating an array cnt to collect the sitecode information
        Dim x As Integer
        Dim cnt As New StringCollection

        Dim j As Int16

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then

                While rdr.Read() = True

                    cnt.Add(rdr(x))
                    j += 1

                    'MsgBox(j.ToString)


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

        Me.Txtoutstd.Text = cnt.Count
        '  MsgBox("this is sitecount" & sitecount.ToString)
        'MsgBox(j.ToString )

    End Sub

    Sub countmrtl()
        'collecting and incrementing the site serial no by the state
        Dim cmd As SqlCommand = New SqlCommand("select sitecode from siteinfo where sitestatus = @sitestatus and projectname = @projectname ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitestatus"
        param.Value = "delivered"
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproname.SelectedItem.Text
        cmd.Parameters.Add(param1)

        ' creating an array cnt to collect the sitenum information
        ' Dim x As Integer
        Dim cnt As New StringCollection

        'Dim j As Int16

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then

                While rdr.Read() = True

                    cnt.Add(rdr("sitecode"))
                    '   j += 1

                    'MsgBox(j.ToString)


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

        Me.Txtoutstm.Text = cnt.Count
        '  MsgBox("this is sitecount" & sitecount.ToString)
        'MsgBox(j.ToString )
    End Sub
    Protected Sub DDLproname_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLproname.SelectedIndexChanged
        clear()
        countimpl()
        countoutstd()
        countmrtl()

    End Sub
    Sub clear()
        Me.txtN0impl.Text = ""
        Me.Txtoutstd.Text = ""
        Me.Txtoutstm.Text = ""
        Me.Listdisplay.Items.Clear()


    End Sub

    Protected Sub btnvimp_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnvimp.Click

       
        Me.Listdisplay.Items.Clear()
       
        'display the sitecode and state
        Dim cmd As SqlCommand = New SqlCommand("select sitecode , clientstate from siteinfo where sitestatus = @sitestatus and projectname = @projectname ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitestatus"
        param.Value = "satisfactory"
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproname.SelectedItem.Text
        cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then

                While rdr.Read() = True

                    Me.Listdisplay.Items.Add(rdr("sitecode") & ": :" & rdr("clientstate"))

                End While

            Else
                'j = 0
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub Btnvostd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnvostd.Click

        
        Me.Listdisplay.Items.Clear()


        Dim cmd As SqlCommand = New SqlCommand("select sitecode , clientstate from siteinfo where  projectname = @projectname and (Not (sitestatus = @sitestatus))  ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitestatus"
        param.Value = "satisfactory"
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproname.SelectedItem.Text
        cmd.Parameters.Add(param1)

        ' creating an array cnt to collect the sitecode information



        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then

                While rdr.Read() = True

                    Me.Listdisplay.Items.Add(rdr("sitecode") & ": :" & rdr("clientstate"))




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

    Protected Sub Btnvoutstdm_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnvoutstdm.Click


        Me.Listdisplay.Items.Clear()



            Dim cmd As SqlCommand = New SqlCommand("select sitecode , clientstate from siteinfo where sitestatus = @sitestatus and projectname = @projectname ", conn)

            Dim param As SqlParameter = New SqlParameter
            param.ParameterName = "@sitestatus"
            param.Value = "delivered"
            cmd.Parameters.Add(param)

            Dim param1 As SqlParameter = New SqlParameter
            param1.ParameterName = "@projectname"
            param1.Value = Me.DDLproname.SelectedItem.Text
            cmd.Parameters.Add(param1)

            ' creating an array cnt to collect the sitenum information
            ' Dim x As Integer
            Dim cnt As New StringCollection

            'Dim j As Int16

            Try
                conn.Open()
                rdr = cmd.ExecuteReader
                If rdr.HasRows Then

                    While rdr.Read() = True

                        Me.Listdisplay.Items.Add(rdr("sitecode") & ": :" & rdr("clientstate"))

                    End While
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                If Not conn.State = Data.ConnectionState.Closed Then
                    conn.Close()
                End If
            End Try


            '  
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click



        Dim cmd As SqlCommand = New SqlCommand("update regpro set (completed= @completed) where  projectname =@original_projectname", conn)

        cmd.Parameters.AddWithValue("@original_projectname", Me.DDLproname.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@completed", "done")

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("Thanks for the information", MsgBoxStyle.Information, "INLAKS COMPUTERS")
                Me.DDLproname.Items.Remove(Me.DDLproname.SelectedItem.Text)
                clear()

            Else
                MsgBox("Error occurred", MsgBoxStyle.Information, "INLAKS COMPUTERS")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If
        End Try


    End Sub

    Protected Sub RBtnpro_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RBtnpro.CheckedChanged
        If Me.RBtnpro.Checked = True Then
            clear()
            Me.DDLproname.SelectedIndex = 0
            Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro where completed= @completed ", conn)

            Dim param1 As SqlParameter = New SqlParameter
            param1.ParameterName = "@completed"
            param1.Value = "done"
            cmd.Parameters.Add(param1)

            Try
                conn.Open()
                rdr = cmd.ExecuteReader
                While rdr.Read = True

                    Me.DDLproname.Items.Add(rdr("projectname"))

                End While

            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                If Not conn.State = Data.ConnectionState.Closed Then
                    conn.Close()
                End If
            End Try
        Else
            For x As Int16 = 0 To Me.DDLproname.Items.Count - 1
                Me.DDLproname.Items.RemoveAt(x)
            Next

        End If
    End Sub
End Class
