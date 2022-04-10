Imports System.Data.SqlClient
Partial Class transportinfo
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim connitem, transitem As String
    Dim urole As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            project()
            hauler()
            loadpages()
            pages()


        End If

    End Sub
    Sub project()

        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro where completed = @completed", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@completed"
        param.Value = "r"
        cmd.Parameters.Add(param)
        Try
            conn.Open()

            rdr = cmd.ExecuteReader
            While rdr.Read = True
                Me.DDLproject.Items.Add(rdr("Projectname"))

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()

            End If
        End Try
    End Sub
    Sub hauler()

        Dim cmd As SqlCommand = New SqlCommand("select name from hauler", conn)

        Try
            conn.Open()

            rdr = cmd.ExecuteReader

            While rdr.Read = True
                Me.DDLhauler.Items.Add(rdr("name"))

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then

                conn.Close()

            End If
        End Try
    End Sub
    Sub deliverstate()
        'delivery state

        Dim cmd As SqlCommand = New SqlCommand("select distinct clientstate from siteinfo where projectname = @projectname ", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.DDLproject.SelectedItem.Text
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True
                Me.DDLdstate.Items.Add(rdr("clientstate"))

            End While


        Catch ex As Exception

            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try
    End Sub
    Sub delivertown()
        'delivery town

        Dim cmd As SqlCommand = New SqlCommand("select distinct clienttown from siteinfo where projectname = @projectname  and clientstate = @clientstate ", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.DDLproject.SelectedItem.Text
        cmd.Parameters.Add(param)

        Dim paramm As SqlParameter = New SqlParameter
        paramm.ParameterName = "@clientstate"
        paramm.Value = Me.DDLdstate.SelectedItem.Text
        cmd.Parameters.Add(paramm)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True
                Me.DDLdtown.Items.Add(rdr("clienttown"))

            End While


        Catch ex As Exception

            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try
    End Sub
    Sub deliveraddress()
        'delivery address

        Dim cmd As SqlCommand = New SqlCommand("select distinct clientaddress from siteinfo where projectname = @projectname  and clientstate = @clientstate  and clienttown = @clienttown", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.DDLproject.SelectedItem.Text
        cmd.Parameters.Add(param)

        Dim paramm As SqlParameter = New SqlParameter
        paramm.ParameterName = "@clientstate"
        paramm.Value = Me.DDLdstate.SelectedItem.Text
        cmd.Parameters.Add(paramm)

        Dim par As SqlParameter = New SqlParameter
        par.ParameterName = "@clienttown"
        par.Value = Me.DDLdtown.SelectedItem.Text
        cmd.Parameters.Add(par)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True
                Me.DDLdaddress.Items.Add(rdr("clientaddress"))

            End While


        Catch ex As Exception

            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try
    End Sub
    Sub delivercode()
        ' 
        Dim cmd As SqlCommand = New SqlCommand("select sitecode from siteinfo where clientstate = @clientstate and clienttown =@clienttown and clientaddress= @clientaddress  and projectname = @projectname intersect select sitecode from materials where dstatus = @dstatus", conn)


        Dim paramm As SqlParameter = New SqlParameter
        paramm.ParameterName = "@clientstate"
        paramm.Value = Me.DDLdstate.SelectedItem.Text
        cmd.Parameters.Add(paramm)

        Dim par As SqlParameter = New SqlParameter
        par.ParameterName = "@clienttown"
        par.Value = Me.DDLdtown.SelectedItem.Text
        cmd.Parameters.Add(par)


        Dim para As SqlParameter = New SqlParameter
        para.ParameterName = "@clientaddress"
        para.Value = Me.DDLdaddress.SelectedItem.Text
        cmd.Parameters.Add(para)



        Dim para2 As SqlParameter = New SqlParameter
        para2.ParameterName = "@projectname"
        para2.Value = DDLproject.SelectedItem.Text
        cmd.Parameters.Add(para2)

        Dim param3 As SqlParameter = New SqlParameter
        param3.ParameterName = "@dstatus"
        param3.Value = "deployed"
        cmd.Parameters.Add(param3)



        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While rdr.Read = True


                    Me.Txtdelivercode.Text = rdr("sitecode").ToString



                End While
            Else
                MsgBox("This has not been approved for material delivery ", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub Btnaddplus_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnaddplus.Click

        Me.Txtaddress.ReadOnly = False
        Me.Txtaddress.Text = ""

    End Sub
    Sub getmaterial()

        Dim cmd As SqlCommand = New SqlCommand("select items   from materials where sitecode = @sitecode and Projectname =@projectname  ", conn)


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@sitecode"
        param1.Value = Me.Txtdelivercode.Text
        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@projectname"
        param2.Value = Me.DDLproject.SelectedItem.Text
        cmd.Parameters.Add(param2)


        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True
                Me.Listgmat.Items.Clear()

                connitem = (rdr("items"))

                Dim delvd As String() = Split(connitem, ",")

                For x As Int16 = 1 To delvd.Length - 1



                    Me.Listgmat.Items.Add(delvd(x))

                Next

            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

        For x As Int16 = 1 To Me.Listgmat.Items.Count - 1



            Me.Listgmat.Items.Remove("")

        Next
    End Sub

    Protected Sub Btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsubmit.Click


        Dim cmd As SqlCommand = New SqlCommand("insert into materials (items , ddate , sitecode ,projectname, dstatus , waybill, haulername ) " & _
                                               "(@items , @ddate , @sitecode ,@projectname, @dstatus , @waybill, @haulername )", conn)

        cmd.Parameters.AddWithValue("@items", Me.Txtitems.Text)
        cmd.Parameters.AddWithValue("@ddate", Date.Now)
        cmd.Parameters.AddWithValue("@sitecode", Me.Txtdelivercode.Text)
        cmd.Parameters.AddWithValue("@projectname", Me.DDLproject.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@dstatus", "delivered")
        cmd.Parameters.AddWithValue("@waybill", Me.txtwaybill.text)
        cmd.Parameters.AddWithValue("@haulername", Me.DDLhauler.SelectedItem.Text)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The materials for the Site has been delivered ", MsgBoxStyle.Information, " INLAKS COMPUTERS")


            Else
                MsgBox("AN ERROR AS OCCURED," & _
                "PLEASE CHECK THE INFORMATION AND TRY AGAIN", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub DDLdaddress_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLdaddress.SelectedIndexChanged
        Me.Txtaddress.Text = ""
        Me.Txtaddress.Text = Me.DDLdaddress.SelectedItem.Text & "," & vbCrLf & Me.DDLdtown.SelectedItem.Text & "," & vbCrLf & Me.DDLdstate.SelectedItem.Text
        Me.Txtdelivercode.Text = ""
        delivercode()

    End Sub

    Protected Sub DDLdtown_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLdtown.SelectedIndexChanged
        Me.DDLdaddress.Items.Clear()
        DDLdaddress.Items.Add("Select...")

        deliveraddress()

    End Sub

    Protected Sub DDLdstate_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLdstate.SelectedIndexChanged
        Me.DDLdtown.Items.Clear()
        DDLdtown.Items.Add("Select...")
        delivertown()
    End Sub

    Protected Sub DDLproject_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLproject.SelectedIndexChanged
        Me.DDLdstate.Items.Clear()
        DDLdstate.Items.Add("Select...")

        deliverstate()

    End Sub

    Protected Sub Btnequip_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnequip.Click

        getmaterial()

    End Sub

    Protected Sub Btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnadd.Click
        Dim otherm As String() = Split(Me.Txtother.Text, ",")
        For x As Integer = 0 To otherm.Length - 1
            Me.Listgmat.Items.Add(otherm(x))
        Next
    End Sub

    Protected Sub Btnchange_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnchange.Click
        If Me.Listgmat.SelectedIndex <> -1 Then
            Me.Txtother.Text = ""
            Me.Txtother.Text = Me.Listgmat.SelectedItem.Text
            Me.Listgmat.Items.Remove(Me.Listgmat.SelectedItem.Text)
        End If
    End Sub

    Protected Sub Btnremove_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnremove.Click
        If Me.Listgmat.SelectedIndex <> -1 Then
            Me.Listgmat.Items.Remove(Me.Listgmat.SelectedItem.Text)
        End If
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

        Dim constrg As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\supplement\App_Data\Datasecure.mdf;Integrated Security=True;User Instance=True"
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
End Class
