Imports System.Data.SqlClient
Partial Class Transfer
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
        ' load the project
        ''''carriage location

        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro where completed =@completed ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@completed"
        param.Value = "r"
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True
                Me.DDLproject.Items.Add(rdr("projectname"))
                Me.DDLdproject.Items.Add(rdr("projectname"))


            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub
    Sub hauler()
        'load the hauler

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
    Sub carrystate()
        'carriage state
        Me.DDLcstate.Items.Clear()
        Me.DDLcstate.Items.Add("Select....")


        Dim cmd As SqlCommand = New SqlCommand("select distinct clientstate from siteinfo where projectname = @projectname ", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.DDLproject.SelectedItem.Text
        cmd.Parameters.Add(param)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True
                Me.DDLcstate.Items.Add(rdr("clientstate"))

            End While


        Catch ex As Exception

            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try
    End Sub
    Sub carrytown()
        'carriage town

        Dim cmd As SqlCommand = New SqlCommand("select distinct clienttown from siteinfo where projectname = @projectname  and clientstate = @clientstate ", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.DDLproject.SelectedItem.Text
        cmd.Parameters.Add(param)

        Dim paramm As SqlParameter = New SqlParameter
        paramm.ParameterName = "@clientstate"
        paramm.Value = Me.DDLcstate.SelectedItem.Text
        cmd.Parameters.Add(paramm)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True
                Me.DDLctown.Items.Add(rdr("clienttown"))

            End While


        Catch ex As Exception

            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try
    End Sub
    Sub carryaddress()
        'carriage address
        Me.DDLcaddress.Items.Clear()
        Me.DDLcaddress.Items.Add("Select...")

        Dim cmd As SqlCommand = New SqlCommand("select distinct clientaddress from siteinfo where projectname = @projectname  and clientstate = @clientstate  and clienttown = @clienttown ", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.DDLproject.SelectedItem.Text
        cmd.Parameters.Add(param)

        Dim paramm As SqlParameter = New SqlParameter
        paramm.ParameterName = "@clientstate"
        paramm.Value = Me.DDLcstate.SelectedItem.Text
        cmd.Parameters.Add(paramm)

        Dim par As SqlParameter = New SqlParameter
        par.ParameterName = "@clienttown"
        par.Value = Me.DDLctown.SelectedItem.Text
        cmd.Parameters.Add(par)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True
                Me.DDLcaddress.Items.Add(rdr("clientaddress"))

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
        param.Value = Me.DDLdproject.SelectedItem.Text
        cmd.Parameters.Add(param)
        Try

            Me.DDLdstate.Items.Clear()
            Me.DDLdstate.Items.Add("Select....")
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
        param.Value = Me.DDLdproject.SelectedItem.Text
        cmd.Parameters.Add(param)

        Dim paramm As SqlParameter = New SqlParameter
        paramm.ParameterName = "@clientstate"
        paramm.Value = Me.DDLdstate.SelectedItem.Text
        cmd.Parameters.Add(paramm)
        Try
            Me.DDLdtown.Items.Clear()
            Me.DDLdtown.Items.Add("Select...")
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

        Dim cmd As SqlCommand = New SqlCommand("select distinct clientaddress from siteinfo where projectname = @projectname  and clientstate = @clientstate  and clienttown = @clienttown ", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.DDLdproject.SelectedItem.Text
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
            Me.DDLdaddress.Items.Clear()
            Me.DDLdaddress.Items.Add("Select....")
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
    Sub carrycode()
        ' 
        Dim status As String = "delivered"
        Dim cmd As SqlCommand = New SqlCommand("select sitecode from siteinfo where clientstate = @clientstate and clienttown =@clienttown and clientaddress= @clientaddress and sitestatus = @sitestatus  and projectname = @projectname  ", conn)



        Dim paramm As SqlParameter = New SqlParameter
        paramm.ParameterName = "@clientstate"
        paramm.Value = Me.DDLcstate.SelectedItem.Text
        cmd.Parameters.Add(paramm)

        Dim par As SqlParameter = New SqlParameter
        par.ParameterName = "@clienttown"
        par.Value = Me.DDLctown.SelectedItem.Text
        cmd.Parameters.Add(par)


        Dim para As SqlParameter = New SqlParameter
        para.ParameterName = "@clientaddress"
        para.Value = Me.DDLcaddress.SelectedItem.Text
        cmd.Parameters.Add(para)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitestatus"
        param.Value = status
        cmd.Parameters.Add(param)

        Dim para2 As SqlParameter = New SqlParameter
        para2.ParameterName = "@projectname"
        para2.Value = DDLproject.SelectedItem.Text
        cmd.Parameters.Add(para2)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            'If rdr.HasRows Then


            While rdr.Read = True


                Me.txtcarrycode.Text = rdr("sitecode").ToString



            End While
            'Else
            'MsgBox("The site has not been delivered", MsgBoxStyle.Exclamation, "Inlaks Computers")

            'End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    
    Protected Sub DDLcstate_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLcstate.SelectedIndexChanged
        carrytown()
        carrycode()
    End Sub

    Protected Sub DDLctown_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLctown.SelectedIndexChanged
        carryaddress()
        carrycode()

    End Sub

    Protected Sub DDLcaddress_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLcaddress.SelectedIndexChanged
        carrycode()
        getmaterial()
    End Sub

    Protected Sub DDLproject_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLproject.SelectedIndexChanged
        carrystate()
    End Sub
    Sub getmaterial()
        Dim cmd As SqlCommand = New SqlCommand("select items   from materials where sitecode = @sitecode and Projectname =@projectname ", conn)


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@sitecode"
        param1.Value = Me.txtcarrycode.Text
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
                Me.Listgmat.Items.Add("Select....")
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

      
    End Sub

    
    Protected Sub Btnffw_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnffw.Click
        Dim i As Int16
        Me.Listgmat.SelectedIndex = i
        If Not Me.Listgmat.SelectedItem.Text = "" Then

            Me.Listsmat.Items.Add(Me.Listgmat.SelectedItem.Text)
            Me.Listgmat.Items.Remove(Me.Listgmat.SelectedItem.Text)
        End If
        i += 1
        Me.Listsmat.Focus()

    End Sub

    Protected Sub Btnrw_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnrw.Click
        For j As Int16 = 0 To Me.Listgmat.Items.Count - 1
            Me.Listgmat.Items.Remove("")
        Next
        If Me.Listsmat.SelectedIndex >= 0 Then
            Me.Listgmat.Items.Add(Me.Listsmat.SelectedItem.Text)
            Me.Listsmat.Items.Remove(Me.Listsmat.SelectedItem.Text)
            Me.Listsmat.Focus()

        Else
            MsgBox("Select the item you intend to remove", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
            Me.Listsmat.SelectedIndex = 0
            Me.Listsmat.Focus()
        End If
    End Sub

    Protected Sub btnsumbit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsumbit.Click
        If Not Me.Listgmat.Items.Count = 0 Then
            inputrans()
           updtdata()
            uptositeinfo()


            clear()

        Else
            MsgBox("You have not specified the items transferred", MsgBoxStyle.Information, "Inlaks Computrs")

        End If
       
    End Sub
    Sub clear()
        Me.Txtitem.Text = ""
        Me.Txtitem.Text = ""
        Me.DDLproject.SelectedIndex = 0
        Me.DDLhauler.SelectedIndex = 0
        Me.DDLdtown.SelectedIndex = 0
        Me.DDLdstate.SelectedIndex = 0
        Me.DDLdproject.SelectedIndex = 0
        Me.DDLctown.SelectedIndex = 0
        Me.DDLcstate.SelectedIndex = 0
        Me.DDLcaddress.SelectedIndex = 0
        Me.DDLdaddress.SelectedIndex = 0
        Me.txtcarrycode.Text = ""
        Me.Txtdelivercode.Text = ""
    End Sub

    Protected Sub DDLdproject_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLdproject.SelectedIndexChanged
        deliverstate()

    End Sub

    Protected Sub DDLdstate_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLdstate.SelectedIndexChanged
        delivertown()

    End Sub

    Protected Sub DDLdtown_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLdtown.SelectedIndexChanged
        deliveraddress()

    End Sub

    Protected Sub DDLdaddress_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLdaddress.SelectedIndexChanged
        delivercode()

    End Sub
    Sub delivercode()
        Dim cmd As SqlCommand = New SqlCommand("select sitecode from siteinfo where clientstate = @clientstate and clienttown =@clienttown and clientaddress= @clientaddress  and projectname = @projectname  ", conn)



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
        para2.Value = DDLdproject.SelectedItem.Text
        cmd.Parameters.Add(para2)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While rdr.Read = True


                    Me.Txtdelivercode.Text = rdr("sitecode").ToString



                End While
            Else
                MsgBox("The site has not been delivered", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub inputrans()

        Dim ditem As String
        If Me.Listgmat.Items.Count = 0 Then
            ditem = "All"
        Else
            ditem = "some"

        End If

        'txtitem stores the items to be transfer

        For x As Int16 = 1 To Me.Listgmat.Items.Count - 1
            'Dim com(x) As group
            Me.Txtitem.Text = Me.Listsmat.Items.Item(x).Text & ","
            ' Me.Txtitem.Text = Me.Txtitem.Text & com(x).coll

        Next

        Dim cmd As SqlCommand = New SqlCommand("insert into transfer (haulername , items , tdate, fromsite , tosite  , waybill , volume ) " & _
        " values  ( @haulername , @items , @tdate, @fromsite , @tosite , @waybill ,@volume)", conn)

        cmd.Parameters.AddWithValue("@haulername", Me.DDLhauler.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@items", Me.Txtitem.Text)
        cmd.Parameters.AddWithValue("@tdate", Date.Now)
        cmd.Parameters.AddWithValue("@fromsite", Me.txtcarrycode.Text)
        cmd.Parameters.AddWithValue("@tosite", Me.Txtdelivercode.Text)
        cmd.Parameters.AddWithValue("@waybill", Me.Txtwaybill.Text)
        cmd.Parameters.AddWithValue("@volume", ditem)




        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The materials for the Site has been transfered ", MsgBoxStyle.Information, " INLAKS COMPUTERS")


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
    Sub uptositeinfo()

        Dim cmd As SqlCommand = New SqlCommand("update siteinfo set sitestatus = @sitestatus   where ( projectname = @original_projectname) and ( sitecode = @original_sitecode)", conn)


        cmd.Parameters.AddWithValue("@original_projectname", Me.DDLdproject.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@original_sitecode", Me.Txtdelivercode.Text)
        cmd.Parameters.AddWithValue("@sitestatus", "delivered")

        Try
            conn.Open()

            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The site information has been updated ", MsgBoxStyle.Information, " INLAKS COMPUTERS")



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
    Sub updtdata()


        For x As Int16 = 1 To Me.Listgmat.Items.Count - 1

            Me.Txtitems.Text = Me.Listgmat.Items.Item(x).Text & ","
            
        Next


        'updating the  material into the database

        Dim cmd As SqlCommand = New SqlCommand("update materials set items=@items, ddate=@ddate   " & _
        " where (projectname=@original_projectname) and ( sitecode=@original_sitecode)", conn)


        cmd.Parameters.AddWithValue("@original_projectname", Me.DDLdproject.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@original_sitecode", Me.Txtdelivercode.Text)
        cmd.Parameters.AddWithValue("@items", Me.Txtitems.Text)
        cmd.Parameters.AddWithValue("@ddate", Date.Now)
       
        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The materials for updated ", MsgBoxStyle.Information, " INLAKS COMPUTERS")



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


End Class
