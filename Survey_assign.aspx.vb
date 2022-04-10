Imports System.Data.SqlClient
Partial Class Survey_assign

    Inherits System.Web.UI.Page

    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim saddress, Stown, sstate, ssite As String
    Dim urole As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            readpro()
            loadpages()
            checkrole()
            pages()
            loadtech()
            thestate()
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

    Sub checkrole()

        Dim drole As String

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

                drole = rd("role")
                'MsgBox(drole)
                If Not drole = "implementation" Then

                    Me.ImageButton1.Enabled = False
                    Me.ImageButton3.Enabled = False
                    Me.ImageButton4.Enabled = False
                    Me.ImageButton2.Enabled = False
                    Me.ImageButton5.Enabled = False

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

    Sub pages()
        getrole()
        If Not urole = "implementation" Then
            Me.Menu2.Items.Item(0).ChildItems.Clear()
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
    Sub readpro()
        'load the project that are ongoing 

        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro where completed = @completed ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@completed"
        param.Value = "r"
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While rdr.Read = True
                    Me.DDLproject.Items.Add(rdr("projectname"))


                End While
            Else

                MsgBox("Materials have not been delivered to available sites for implementation ", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub





    Sub thestate()

        'select the state in the region



        Dim cmd As SqlCommand = New SqlCommand("select state from stateinfo ", conn)


        Try

            'Dim j As Int16
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read = True)

                    'sitestate(x) = rdr("state").ToString
                    'sitestate(i) = sitestate(j)
                    Me.DDLstate.Items.Add(rdr("state"))



                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If

        End Try
        ' Next
    End Sub
    Sub LOADSTATE()
        'load address
        Dim cmd As SqlCommand = New SqlCommand("select  clienttown, clientstate from siteinfo where clientaddress= @clientaddress and ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@clientaddress"
        param.Value = Me.Listsiteadd.SelectedItem.Text
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@clientstate"
        param1.Value = DDLstate.SelectedItem.Text
        cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True


                Txtstown.Text = rdr("clienttown")



            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub
    Sub loadtech()
        'list the technician's code

        Dim cmd As SqlCommand = New SqlCommand("select techid from techinfo ", conn)
        Try
            conn.Open()

            rdr = cmd.ExecuteReader
            While rdr.Read = True

                Me.Listtecode.Items.Add(rdr("techid"))

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()

            End If

        End Try

    End Sub

    Protected Sub Listtecode_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Listtecode.SelectedIndexChanged
        If Txtstart.Text = "" Then
            MsgBox("Select the date to commence the task", MsgBoxStyle.Exclamation, "Inlaks Computers")
            Listtecode.Items.Clear()
            loadtech()
        Else
            tecname()
            techloc()
            tosite()
            tobase()
            verify()
            alloctn()
        End If

    End Sub
    Sub tecname()
        Dim cmd As SqlCommand = New SqlCommand("select sname , fname ,spoint ,techlevel from techinfo where techid = @techid", conn)

        Dim para As SqlParameter = New SqlParameter
        para.ParameterName = "@techid"
        para.Value = Listtecode.SelectedItem.Text
        cmd.Parameters.Add(para)


        Try
            conn.Open()

            rdr = cmd.ExecuteReader
            While rdr.Read = True

                Me.Txtname1.Text = rdr("sname").ToString.ToUpper & " " & rdr("fname").ToString.ToLower
                Me.Txtspiont.Text = rdr("spoint")
                Txttechlvl.Text = rdr("techlevel")

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()

            End If

        End Try

    End Sub
    Sub techloc()
        ' tech present location
        Dim cmd As SqlCommand = New SqlCommand("select location ,endjob ,R_alloctn from techjob where techid =@techid", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techid"
        param.Value = Me.Listtecode.SelectedItem.Text
        cmd.Parameters.Add(param)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True

                Me.Txtlocatn1.Text = rdr("location")
                Me.Txtlastjob.Text = rdr("endjob")
                Me.Txtreturn.Text = rdr("R_alloctn")


            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub tosite()
        'travel to site


        Dim cmd As SqlCommand = New SqlCommand("select (total) from transportcost where arrival = @arrival and departure = @departure ", conn)

        Dim param1 As SqlParameter = New SqlParameter()
        param1.ParameterName = "@arrival"
        param1.Value = Me.Txtsstate.Text
        cmd.Parameters.Add(param1)
        Dim param2 As SqlParameter = New SqlParameter()
        param2.ParameterName = "@departure"
        param2.Value = Me.Txtlocatn1.Text
        cmd.Parameters.Add(param2)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True
                Me.Txttrav1.Text = rdr("total")

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub tobase()


        Dim cmd As SqlCommand = New SqlCommand("select (total) from transportcost where arrival = @arrival and departure = @departure ", conn)

        Dim param1 As SqlParameter = New SqlParameter()
        param1.ParameterName = "@arrival"
        param1.Value = Me.Txtspiont.Text
        cmd.Parameters.Add(param1)
        Dim param2 As SqlParameter = New SqlParameter()
        param2.ParameterName = "@departure"
        param2.Value = Me.Txtsstate.Text
        cmd.Parameters.Add(param2)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True
                Me.Txttrav2.Text = rdr("total")

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub verify()
        'check the return fare

        If CDate(Txtlastjob.Text) = CDate(Me.Txtstart.Text) Then
            If CDec(Me.Txttrav2.Text) < CDec(Me.Txtreturn.Text) Then
                Me.Txttrav2.Text = 0
            ElseIf CDec(Me.Txttrav2.Text) > CDec(Me.Txtreturn.Text) Then
                Me.Txttrav2.Text = CDec(Me.Txttrav2.Text) - CDec(Me.Txtreturn.Text)

            End If

        End If
    End Sub
    Sub alloctn()
        'the allowances
        Dim cmd As SqlCommand = New SqlCommand("select accomodation, feeding, localtrans from allowancecost where techlevel = @techlevel", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techlevel"
        param.Value = Me.Txttechlvl.Text
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                Me.Txtaccom1.Text = rdr("accomodation")
                Me.Txtfeed1.Text = rdr("feeding")
                Me.Txtltran1.Text = rdr("localtrans")


            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Protected Sub DDLexcept1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLexcept1.SelectedIndexChanged
        If Me.DDLexcept1.SelectedItem.Text = "Accomodation" Then
            Me.Txtaccom1.Text = ""
        ElseIf Me.DDLexcept1.SelectedItem.Text = "Feeding" Then
            Me.Txtfeed1.Text = ""
        ElseIf Me.DDLexcept1.SelectedItem.Text = "Local Transport" Then
            Me.Txtltran1.Text = ""

        End If
    End Sub

    Protected Sub Btntotal_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btntotal.Click

        Dim a As Double = Val(Txtaccom1.Text) * (Val(Txtnday.Text) - 1)
        Dim b As Double = Val(Txtfeed1.Text) * Val(Txtnday.Text)
        Dim c As Double = Val(Txtltran1.Text) * Val(Txtnday.Text)
        Txttotal1.Visible = True
        Txttotal1.Text = Val(Txttrav1.Text) + Val(Txttrav2.Text) + a + b + c
    End Sub

    Protected Sub Btndate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btndate.Click
        Calendar1.Visible = True
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        Txtstart.Text = Calendar1.SelectedDate
        Me.Calendar1.Visible = False
        Calendar1.SelectedDate = Today

    End Sub

    Protected Sub Btnre1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnre1.Click
        genregion()
        'into technician info
        ',@region, region
        Dim cmd As SqlCommand = New SqlCommand("insert into techjob ( techid, location ,allocation ,startjob ,endjob, techlevel , jobtype  , clienttown , R_alloctn )" & _
       " values  ( @techid, @location  ,@allocation ,  @startjob , @endjob, @techlevel , @jobtype  , @clienttown , @R_alloctn ) ", conn)

        cmd.Parameters.AddWithValue("@techid", Me.Listtecode.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@location", DDLstate.SelectedItem.Text)
        'cmd.Parameters.AddWithValue("@sitecode", Me.DDLstate.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@allocation", Txttotal1.Text)
        cmd.Parameters.AddWithValue("@startjob", CDate(Me.Txtstart.Text))
        cmd.Parameters.AddWithValue("@endjob", CDate(Me.Txtstart.Text).AddDays(Val(Txtnday.Text)).Date)
        cmd.Parameters.AddWithValue("@techlevel", Me.Txttechlvl.Text)
        cmd.Parameters.AddWithValue("@jobtype", "survey")
        'cmd.Parameters.AddWithValue("@region", ssite.ToString)
        cmd.Parameters.AddWithValue("@clienttown", Txtstown.Text)
        cmd.Parameters.AddWithValue("@R_alloctn", Txttrav2.Text)


        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox(Me.Listtecode.SelectedItem.Text & " has been appointed to a technician", MsgBoxStyle.Information, "INLAKS COMPUTERS")
                clear()
                moretech()
            Else
                MsgBox("An Error has occurred", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If
        End Try
        clear()

    End Sub
    Sub genregion()

        Dim cmd As SqlCommand = New SqlCommand("select region from stateinfo where state= @state", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@state"
        param.Value = Me.Txtsstate.Text

        cmd.Parameters.Add(param)

        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read = True)


                    ssite = (rdr("region"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If

        End Try
    End Sub
    Sub moretech()
        Listsiteadd.Items.Remove(Listsiteadd.SelectedItem.Text)
        Me.Txttrav1.Text = ""
        Me.Txttrav2.Text = ""
        Me.Txttotal1.Text = ""
        Me.Txttechlvl.Text = ""
        Me.Txtreturn.Text = ""
        Me.Txtname1.Text = ""
        Me.Txtfeed1.Text = ""
        Me.Txtlastjob.Text = ""
        Me.Txtaccom1.Text = ""
        Me.Txtltran1.Text = ""
        Me.DDLexcept1.SelectedIndex = 0
    End Sub
    Sub clear()
        Listtecode.Items.Clear()
        DDLproject.SelectedIndex = 0
        DDLstate.Items.Remove(Me.DDLstate.SelectedItem.Text)
        DDLstate.SelectedIndex = 0
        Me.Txtsstate.Text = ""
        Me.Txtstart.Text = ""
        Me.Txtnday.Text = ""


    End Sub




    Protected Sub DDLstate_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLstate.SelectedIndexChanged

        Dim cmd As SqlCommand = New SqlCommand("select clientaddress  from siteinfo where clientstate = @clientstate and projectname =@projectname and sitestatus = @sitestatus", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@clientstate"
        param.Value = DDLstate.SelectedItem.Text
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproject.SelectedItem.Text

        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@sitestatus"
        param2.Value = "r"

        cmd.Parameters.Add(param2)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader

            If rdr.HasRows Then
                Me.Listsiteadd.Items.Clear()

                While rdr.Read = True


                    Me.Listsiteadd.Items.Add(rdr("clientaddress"))


                End While
            Else
                MsgBox("No data yet into the database for selected location ", MsgBoxStyle.Exclamation, "Inlaks Computer")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If
        End Try
    End Sub


    Protected Sub Listsiteadd_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Listsiteadd.SelectedIndexChanged
        LOADSTATE()
    End Sub
End Class
