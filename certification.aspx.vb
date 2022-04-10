Imports System.Data.SqlClient
Partial Class certification
    Inherits System.Web.UI.Page

    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim sstate, saddress, stown As String
    Dim teamldr As String = "T1"
    Dim subdte As String = "T1"
    Dim x, y As Integer
    Dim cnt, ct As New StringCollection


    Protected Sub Btnchg_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnchg.Click
        Me.Txtcontact.ReadOnly = False
        Me.Txtcontact.Text = ""

    End Sub

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
        'load the project from material table

        Dim cmd As SqlCommand = New SqlCommand("select projectname from materials ", conn)
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


    Protected Sub DDLproname_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLproname.SelectedIndexChanged
        'load the siteid from material table

        Dim cmd As SqlCommand = New SqlCommand("select sitecode from siteinfo where projectname= @projectname and sitestatus = @sitestatus", conn)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproname.SelectedItem.Text
        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@sitestatus"
        param2.Value = "approved"
        cmd.Parameters.Add(param2)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True

                Me.DDLsite.Items.Add(rdr("sitecode"))

            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub DDLsite_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLsite.SelectedIndexChanged
        'load address
        Dim cmd As SqlCommand = New SqlCommand("select clientaddress, clienttown, clientstate, contact1, contact2  from siteinfo where sitecode= @sitecode", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitecode"
        param.Value = Me.DDLsite.SelectedItem.Text
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True

                Me.saddress = rdr("clientaddress")
                Me.stown = rdr("clienttown")
                Me.sstate = rdr("clientstate")
                Me.DDLsigned.Items.Add(rdr("contact1"))
                Me.DDLsigned.Items.Add(rdr("contact2"))


                Me.Txtaddress.Text = Me.saddress & vbCrLf & Me.stown & vbCrLf & Me.sstate

            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        opdtechjob()
        updsite()
        checksiteno()
    End Sub
    Sub clear()
        Me.DDLsigned.SelectedIndex = 0
        Me.Txtcontact.Text = ""
        Me.Txtcomment.Text = ""
        Me.Txtaddress.Text = ""
        Me.DDLproname.SelectedIndex = 0
        Me.DDLsite.SelectedIndex = 0
        Me.DDLrmk.SelectedIndex = 0
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        clear()
    End Sub
    Sub opdtechjob()


        ' update the techjob"
        Dim cmd As SqlCommand = New SqlCommand("update techjob set (remark= @remark),(comment = @comment) where sitecode =@original_sitecode", conn)

        cmd.Parameters.AddWithValue("@original_sitecode", Me.DDLsite.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@remark", Me.DDLrmk.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@comment", Me.Txtcomment.Text)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("Site status changed", MsgBoxStyle.Information, "INLAKS COMPUTERS")
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
    Sub updsite()
        'update the status in siteinfo
        Dim cmd As SqlCommand = New SqlCommand("update siteinfo set (sitestatus= @sitestatus)and (signed = @signed) and (warranty = @warranty) where sitecode =@original_sitecode", conn)

        cmd.Parameters.AddWithValue("@original_sitecode", Me.DDLsite.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@sitestatus", Me.DDLrmk.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@signed", Me.Txtcontact.Text)
        cmd.Parameters.AddWithValue("@warranty", Date.Now.AddYears(Val(Me.Txtwperiod.Text)))

        Try

            conn.Open()

            If cmd.ExecuteNonQuery > 0 Then

                MsgBox("Thanks for the information, this site warranty expires " & Date.Now.AddYears(Val(Me.Txtwperiod.Text)).ToString, MsgBoxStyle.Information, "INLAKS COMPUTERS")
                Me.DDLsite.Items.Remove(Me.DDLsite.SelectedItem.Text)
                Me.DDLsigned.Items.Clear()

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
    Sub terminatepro()


        Dim cmd As SqlCommand = New SqlCommand("update regpro set (completed= @completed) where projectname =@original_projectname", conn)

        cmd.Parameters.AddWithValue("@original_projectname", Me.DDLproname.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@completed", "done")

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("Thanks for the information", MsgBoxStyle.Information, "INLAKS COMPUTERS")
                Me.DDLsite.Items.Remove(Me.DDLsite.SelectedItem.Text)
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

    Sub checksiteno()
        siteno()
        'count the number of site that 

        Dim cmd As SqlCommand = New SqlCommand("select sitecode from siteinfo where  sitestatus = @sitestatus ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitestatus"
        param.Value = "satisfactory"
        cmd.Parameters.Add(param)
        ' Dim j As Int16
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True


                cnt.Add(rdr(x))

                'j += 1


            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
        If cnt.Count = ct.Count Then
            terminatepro()
            MsgBox("This project :" & Me.DDLproname.SelectedItem.Text & " has been commpleted", MsgBoxStyle.Information, "Inlaks Computers")

        End If
    End Sub
    Sub siteno()
        Dim cmd As SqlCommand = New SqlCommand("select sitecode from siteinfo where  projectname = @projectname ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.DDLproname.SelectedItem.Text
        cmd.Parameters.Add(param)
        '  Dim i As Int16
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True


                ct.Add(rdr(x))

                ' i += 1


            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub DDLsigned_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLsigned.SelectedIndexChanged
        Me.Txtcontact.Text = Me.DDLsigned.SelectedItem.Text

    End Sub

End Class
