Imports System.Data.SqlClient


Partial Class Survey_assign
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim siteregion As String
    Dim tlvl, stown As String
    Dim rtrans As Decimal
    Dim allocatn, comall, trans, transbk As Decimal
    Dim rdr As SqlDataReader
    Dim urole As String

    Function glevel(ByVal lvl As String) As String
        Dim rdr As SqlDataReader
        Dim cmd As SqlCommand = New SqlCommand("select techlevel from techinfo where techid = @techid", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techid"
        param.Value = Me.ddltech.SelectedItem.Text
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True
                lvl = rdr("techlevel")

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
        Return lvl

    End Function

    Protected Sub ddlpname_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlpname.SelectedIndexChanged

        'display the project description
        Dim cmd As SqlCommand = New SqlCommand("select projectdesc from regpro where projectname = @projectname ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.ddlpname.SelectedItem.Text

        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                Me.Txtdesc.Text = (rdr("projectdesc").ToString)


            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try


    End Sub

   
    Protected Sub ddltech_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddltech.SelectedIndexChanged


        Me.Txtplocatn.Text = ""
        Me.Txtcdate.Text = ""

        'selecting the technician's present location
        'AND ( endjob  BETWEEN @endjob AND @endjob +1 )
        Dim cmd As SqlCommand = New SqlCommand("select location ,endjob  from techjob WHERE techid = @techid ", conn)




        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techid"
        param.Value = Me.ddltech.SelectedItem.Text

        cmd.Parameters.Add(param)


        ' Dim param1 As SqlParameter = New SqlParameter
        'param1.ParameterName = "@endjob"
        'param1.Value = Date.Now

        'cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While rdr.Read() = True


                    Me.Txtplocatn.Text = rdr("location")

                    Me.Txtplocatn.ToolTip = rdr("endjob")
                    Me.Txtcdate.Text = rdr("endjob")

                End While
            Else
                ' MsgBox("No job at hand", MsgBoxStyle.Information, "Inlaks Computers")

                'Me.Txtplocatn.Text = "Lagos"

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
   
    Sub trec()
        'read the last return fare
        Dim rdr As SqlDataReader


        Dim cmd As SqlCommand = New SqlCommand("select  R_alloctn  from techjob where techid = @techid and location = @location and endjob between @endjob and @endjob +1 ", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techid"
        param.Value = Me.ddltech.SelectedItem.Text

        cmd.Parameters.Add(param)


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@location"
        param1.Value = Me.Txtplocatn.Text

        cmd.Parameters.Add(param1)



        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = CDate(Me.Txtcdate.Text)

        cmd.Parameters.Add(param2)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While rdr.Read() = True


                    Me.rtrans = rdr("R_alloctn")
                    ' MsgBox(rdr("clientaddress"), MsgBoxStyle.Information, "Inlaks computers")

                End While
            Else
               

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub pickstate()

        'select the region from state 

        Dim rdr As SqlDataReader

        Dim cmd As SqlCommand = New SqlCommand("select region from stateinfo where state=@state ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@state"
        param.Value = Me.Txtplocatn.Text

        cmd.Parameters.Add(param)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader

            While (rdr.Read = True)
                siteregion = rdr("region")
                ' Me.Txtaddress.Text = siteregion

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If
        End Try
        'End If
    End Sub
    Sub thestate()
        pickstate()
        'select the state in the region

        Dim rdr As SqlDataReader

        Dim cmd As SqlCommand = New SqlCommand("select state from stateinfo where region= @region", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@region"
        param.Value = siteregion.ToString

        cmd.Parameters.Add(param)

        Try
            Dim x As Int16
            'Dim j As Int16
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read = True)

                    'sitestate(x) = rdr("state").ToString
                    'sitestate(i) = sitestate(j)
                    Me.Listsite.Items.Add(rdr("state"))

                    x += 1

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


    Protected Sub Btnallocate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnstate.Click
        If Not Me.Txtcdate.Text = "" Then


            Me.Listsite.Items.Clear()
            thestate()
        Else
            MsgBox("select a technician", MsgBoxStyle.Exclamation, "Inlaks Computers")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then

            loadpro()
            loadtech()
            loadpages()

            checkrole()
            pages()
        End If
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
    Sub loadpro()

        'load the projectname


        Dim rdr As SqlDataReader

        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro where completed = @completed", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@completed"
        param.Value = "r"

        cmd.Parameters.Add(param)

        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read)

                    Me.ddlpname.Items.Add(rdr("projectname"))


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
    Sub loadtech()

        'load the projectname


        Dim rdr As SqlDataReader

        Dim cmd As SqlCommand = New SqlCommand("select techid from techinfo ", conn)



        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read)

                    Me.ddltech.Items.Add(rdr("techid").ToString)


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

    Protected Sub Listsite_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Listsite.SelectedIndexChanged
        Dim rdr As SqlDataReader

        Dim cmd As SqlCommand = New SqlCommand("select clientaddress  from siteinfo where clientstate = @clientstate and projectname =@projectname and sitestatus = @sitestatus", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@clientstate"
        param.Value = Me.Listsite.SelectedItem.Text
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.ddlpname.SelectedItem.Text

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

        routedist()
    End Sub

    Protected Sub Btnallocat_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnallocat.Click

        alloc()
        udpsite()
        CLEAR()
    End Sub
    Sub alloc()

        pickstate()
        sitetown()
        rcheck()
        Dim cmd As SqlCommand = New SqlCommand("insert into techjob ( clientaddress,techid , startjob, endjob, allocation,jobtype,location ,region , clienttown , R_alloctn)" & _
                " values(@clientaddress ,@techid, @startjob,@endjob, @allocation,@jobtype,@location , @region ,@clienttown ,@R_alloctn)", conn)

        cmd.Parameters.AddWithValue("@clientaddress", Me.Listsiteadd.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@startjob", CDate(Me.Txtjobstart.Text))
        cmd.Parameters.AddWithValue("@techid", Me.ddltech.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@endjob", CDate(Me.Txtjobstart.Text).AddDays(Val(Me.Txtnday.Text)))
        cmd.Parameters.AddWithValue("@allocation", allocatn)
        cmd.Parameters.AddWithValue("@jobtype", "survey")
        cmd.Parameters.AddWithValue("@location", Me.Listsite.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@region", siteregion)
        cmd.Parameters.AddWithValue("@clienttown", stown)
        cmd.Parameters.AddWithValue("@R_alloctn", transbk)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The Allocation as been made " & Me.ddltech.SelectedItem.Text, MsgBoxStyle.Information, "INLAKS COMPUTERS")

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
    '  Sub addnu()


    ' MsgBox("To assign another survey assignment to this technician click Yes", MsgBoxStyle.YesNo, "INLAKS COMPUTERS")


    'If Microsoft.VisualBasic.MsgBoxStyle.OkOnly = MsgBoxResult.Yes Then
    '  calrtun()
    ' Else
    '    genfirst()
    '   allowance()
    '  allocatn = comall + trans + transbk

    'clear the technician from the queue
    'Me.ddltech.Items.Remove(Me.ddltech.SelectedItem.Text)
    'Me.Listsiteadd.Items.Clear()
    'Me.Listsite.Items.Clear()
    'Me.Txtdist.Text = ""
    'Me.Txtnday.Text = ""
    'Me.Txtjobstart.Text = ""


    'End If

    'End Sub

    Sub calrtun()
        'calculate the returning fare


        Dim cmd As SqlCommand = New SqlCommand("select (total) from transportcost where arrival = @arrival and departure = @departure ", conn)

        Dim param1 As SqlParameter = New SqlParameter()
        param1.ParameterName = "@arrival"
        param1.Value = "lagos"
        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter()
        param2.ParameterName = "@departure"
        param2.Value = Me.Listsite.SelectedItem.Text
        cmd.Parameters.Add(param2)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True
                Me.transbk = rdr("total")

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try


    End Sub
    Sub rcheck()
        trec()
        genfirst()
        allowance()
        calrtun()

        Dim dif As Decimal
        If (Me.Txtplocatn.Text).ToLower = "lagos" Then
            allocatn = (comall + trans) + transbk
        Else
            If Me.rtrans < Me.transbk Then
                dif = transbk - rtrans
                allocatn = (comall + trans) + dif

            ElseIf Me.rtrans = Me.transbk Then
                allocatn = comall + trans

            ElseIf Me.rtrans > Me.transbk Then
                dif = transbk - rtrans
                allocatn = (comall + trans) - dif
            End If

        End If

    End Sub
    Sub genfirst()

        Dim rdr As SqlDataReader

        Dim cmd As SqlCommand = New SqlCommand("select (total) from transportcost where arrival = @arrival and departure = @departure ", conn)

        Dim param1 As SqlParameter = New SqlParameter()
        param1.ParameterName = "@arrival"
        param1.Value = Me.Listsite.SelectedItem.Text
        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter()
        param2.ParameterName = "@departure"
        param2.Value = Me.Txtplocatn.Text

        cmd.Parameters.Add(param2)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True
                Me.trans = rdr("total")

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub allowance()

        Dim rdr As SqlDataReader
        Dim allwnx, accom, allown As Decimal
        Dim cmd As SqlCommand = New SqlCommand("select tallowance , accomodation from allowancecost where techlevel = @techlevel", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techlevel"
        param.Value = glevel(tlvl)

        cmd.Parameters.Add(param)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                allown = rdr("tallowance")
                accom = rdr("accomodation")
                allwnx = allown - accom
                Me.comall = (allwnx * Val(Me.Txtnday.Text)) - (accom * Val(Me.Txtnday.Text) - 1)

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub


    Protected Sub Btndate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btndate.Click
        Me.Calendar1.Visible = True
        Me.Txtdist.Focus()

    End Sub

    Sub routedist()


        Dim rdr As SqlDataReader
        'determining the  distance route
        Dim cmd As SqlCommand = New SqlCommand("select distance from transportcost where departure = @departure and arrival =@arrival", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@arrival"
        param.Value = Me.Listsite.SelectedItem.Text

        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@departure"
        param1.Value = Me.Txtplocatn.Text

        cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True
                Me.Txtdist.Text = ""
                Me.Txtdist.Text = (rdr("distance"))

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub udpsite()
        'flag the siteinfo table
        Dim cmd As SqlCommand = New SqlCommand(" update  siteinfo SET  sitestatus = @sitestatus  WHERE ( clientaddress = @Original_clientaddress ) AND ( projectname = @Original_projectname )", conn)

        cmd.Parameters.AddWithValue("@Original_projectname", Me.ddlpname.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@Original_clientaddress", Me.Listsiteadd.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@sitestatus", "survey")

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The site information has been updated", MsgBoxStyle.Information, "Inlaks Computers")
            Else
                MsgBox("An error has occured", MsgBoxStyle.Information, "Inlaks Computers")


            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()

            End If
        End Try

    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        Me.Txtjobstart.Text = (Me.Calendar1.SelectedDate)

        Me.Calendar1.Visible = False
        Me.Calendar1.SelectedDate = Today
        Me.Txtnday.Focus()
    End Sub
    Sub CLEAR()

        'clear site address and flag site as survey


        Me.Listsiteadd.Items.Remove(Me.Listsiteadd.SelectedItem.Text)
        Me.Listsiteadd.Items.Clear()
        Me.ddltech.SelectedIndex = 0
        Me.Txtdist.Text = ""
        Me.Txtnday.Text = ""
        Me.Txtjobstart.Text = ""
        Me.Listsite.Items.Clear()
        Me.Txtplocatn.Text = ""
        Me.Txtcdate.Text = ""

    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Me.ddltech.SelectedIndex = 0
        Me.Listsiteadd.SelectedIndex = 0
        Me.Listsite.SelectedIndex = 0
        Me.Txtdist.Text = ""
        Me.Txtnday.Text = ""
        Me.Txtjobstart.Text = ""

    End Sub


    Sub sitetown()

        Dim rdr As SqlDataReader

        Dim cmd As SqlCommand = New SqlCommand("select  clienttown  from siteinfo where projectname = @projectname and clientaddress = @clientaddress ", conn)
        '
        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@clientaddress"
        param.Value = Me.Listsiteadd.SelectedItem.Text
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.ddlpname.SelectedItem.Text
        cmd.Parameters.Add(param1)

        'Dim param2 As SqlParameter = New SqlParameter
        'param2.ParameterName = "@sitestatus"
        'param2.Value = "r"
        'cmd.Parameters.Add(param2)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader

            If rdr.HasRows Then


                While rdr.Read = True


                    Me.stown = (rdr("clienttown"))


                End While
            Else
                MsgBox("The town is not stored in the site information", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If
        End Try
    End Sub

    '   Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
    'Dim constrg As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\supplement\App_Data\Datasecure.mdf;Integrated Security=True;User Instance=True"
    'Dim conn As New SqlConnection(constrg)
    'Dim rd As SqlDataReader


    'dim cd as SqlCommand = new SqlCommand ("select newpage from 
    '  Me.Menu1.SelectedItem.Text = "Quality Assurance"
    'me.Menu1 .SelectedItem .NavigateUrl

    'End Sub

    
    Sub pages()
        getrole()
        If Not urole = "implementation" Then
            Me.Menu2.Items.Item(0).ChildItems.Clear()
        End If
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
End Class
