Imports System.Data.SqlClient
Partial Class sup_report
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Protected Sub Btndate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btndate.Click
        Me.Calendar1.Visible = True

    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        Me.Txtresvdate.Text = (Me.Calendar1.SelectedDate).ToShortDateString
        Me.Calendar1.Visible = False
        Me.Calendar1.SelectedDate = Today


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            loadTEC()
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
    Sub loadsite()
        'load the site from the support
        Dim cmd As SqlCommand = New SqlCommand("select sitecode from support where techid = @techid and f_Re_date is null ", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techid"
        param.Value = Me.DDLtecid.SelectedItem.Text
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows = True Then
                While rdr.Read
                    Me.DDLsite.Items.Add(rdr("sitecode"))

                End While
            Else
                MsgBox("There is no site registered yet in the support", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()

            End If
        End Try
    End Sub
    Sub loadTEC()
        'load the site from the support
        Dim cmd As SqlCommand = New SqlCommand("select techid  from techinfo  where techlevel = @techlevel ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techlevel"
        param.Value = "T1"
        cmd.Parameters.Add(param)

        

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.DDLtecid.Items.Add(rdr("techid"))

                End While
            Else
                MsgBox("There is no support technician in the database ", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()

            End If
        End Try
    End Sub

    Protected Sub Btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsub.Click
        insupport()

    End Sub

    Protected Sub Btncontact_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btncontact.Click
        Me.Txtcname.ReadOnly = False
    End Sub
    Sub insupport()
        Dim cmd As SqlCommand = New SqlCommand(" update support set category = @category , equipservno = @equipservno , equipment = @equipment , equiprob = @equiprob , " & _
        " contact = @contact , techreport = @techreport , customermk = @customermk , f_Re_date = @f_Re_date  where sitecode = @original_sitecode And techid = @original_techid ", conn)

        cmd.Parameters.AddWithValue("@original_sitecode", Me.DDLsite.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@original_techid", Me.DDLtecid.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@category", Me.Txtwcategory.Text)
        cmd.Parameters.AddWithValue("@equipservno", Me.TxtequipN0.Text)
        cmd.Parameters.AddWithValue("@equipment", Me.Txtequip.Text)
        cmd.Parameters.AddWithValue("@equiprob", Me.Txtproblem.Text)
        cmd.Parameters.AddWithValue("@contact", Me.Txtcname.Text)
        cmd.Parameters.AddWithValue("@techreport", Me.Txttask.Text)
        cmd.Parameters.AddWithValue("@customermk", Me.DDLcrmk.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@f_Re_date", CDate(Me.Txtresvdate.Text))


        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The information on how the site : " & Me.DDLsite.SelectedItem.Text & " was resolved " & _
     " has been collected", MsgBoxStyle.Information, "INLAKS COMPUTERS")
                Me.DDLsite.Items.Remove(Me.DDLsite.SelectedItem.Text)
                CLEAR()
            Else
                MsgBox("DATA ENTRY HAS FAILED", MsgBoxStyle.Exclamation, "INLAKS COMPUERS")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)

            If Not conn.State = Data.ConnectionState.Closed Then

                conn.Close()

            End If
        End Try



    End Sub
    Sub CLEAR()

        Me.DDLtecid.SelectedIndex = 0
        Me.DDLcrmk.SelectedIndex = 0
        Me.Txttask.Text = ""
        Me.Txtresvdate.Text = ""
        Me.Txtproblem.Text = ""
        Me.TxtequipN0.Text = ""
        Me.Txtcname.Text = ""
        Me.Txtwcategory.Text = ""

        Me.DDLsite.Items.Remove(Me.DDLsite.SelectedItem.Text)
        Me.DDLsite.SelectedIndex = 0
    End Sub

    Protected Sub Btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnreset.Click
        CLEAR()

    End Sub

    Protected Sub DDLsite_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLsite.SelectedIndexChanged

        loadsite()
        'select the contact from siteinfo
        Dim cmd As SqlCommand = New SqlCommand(" select contact from siteinfo where sitecode = @sitecode", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitecode"
        param.Value = Me.DDLsite.SelectedItem.Text

        cmd.Parameters.Add(param)

        Try
            conn.Open()

            rdr = cmd.ExecuteReader

            While rdr.Read
                Me.Txtcname.Text = rdr("contact")

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub DDLtecid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLtecid.SelectedIndexChanged
        loadsite()
    End Sub
End Class
