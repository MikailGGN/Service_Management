Imports System.Data.SqlClient
Partial Class surveyreport

    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim urole As String
    Dim codename, cname As String
    Dim stname, stcode As String
    Dim sitype As Integer
    Dim sno As Integer
    Dim stype, sitno As String

       Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            loadtech()
            loadpro()
            loadstype()
            loadpages()
            checkrole()
            pages()
        End If
    End Sub
    Sub loadpages()
        Dim addpage As String

        Dim constrg As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
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
    Sub loadstype()
        Dim cmd As SqlCommand = New SqlCommand("select sitetype from sitetypeinfo  ", conn)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                Me.DDlsitetype.Items.Add(rdr("sitetype"))
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

        Me.DDlsitetype.SelectedItem.Text = ""
        Me.DDLstatus.SelectedItem.Text = ""


        Dim cmd As SqlCommand = New SqlCommand("select techid from techinfo  ", conn)

        'where jobtype =@jobtype
        '       Dim param As SqlParameter = New SqlParameter
        '      param.ParameterName = "@jobtype"
        '     param.Value = "survey"
        '    cmd.Parameters.Add(param)
        ' Dim i As Int16

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                'If Not rdr.Then Then


                Me.DDLtechid.Items.Add(rdr("techid"))
                '  i += 1
                ' End If
            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

        'me.DDLtechid .Items .RemoveAt (i)=

    End Sub
    Sub sbank()
        'select the client from regpro
        'Dim cname As String
        Dim cmd As SqlCommand = New SqlCommand("select client from regpro where  Projectname = @projectname", conn)


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproname.SelectedItem.Text

        cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While rdr.Read() = True

                    cname = rdr("client")

                End While
            Else
                MsgBox("No record yet in the database", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub sbkcode()
        sbank()
        'collecting the client code from client info
        'Dim codename As String
        Dim cmd As SqlCommand = New SqlCommand("select clientcode from clientinfo where  clientname = @clientname ", conn)


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@clientname"
        param1.Value = cname

        cmd.Parameters.Add(param1)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While rdr.Read() = True

                    codename = rdr("clientcode")
                End While
            Else
                MsgBox("No record in the database ", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub slname()

        'using the site address to generate state
        Dim cmd As SqlCommand = New SqlCommand("select clientstate from siteinfo where  clientaddress = @clientaddress ", conn)


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@clientaddress"
        param1.Value = Me.Listaddress.SelectedItem.Text
        cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While rdr.Read() = True

                    stname = rdr("clientstate")
                End While
            Else
                MsgBox("No data yet in the database", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub slcode()
        slname()
        'generate state code
        Dim cmd As SqlCommand = New SqlCommand("select statecode from stateinfo where  state = @state ", conn)


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@state"
        param1.Value = stname

        cmd.Parameters.Add(param1)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While rdr.Read() = True

                    stcode = rdr("statecode")
                End While
            Else
                MsgBox("No record yet in the database", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

   
    Sub siteno()
        'generating the site type no
        Dim cmd As SqlCommand = New SqlCommand("select serialno from sitetypeinfo where  sitetype = @sitetype ", conn)


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@sitetype"
        param1.Value = Me.DDlsitetype.SelectedItem.Text

        cmd.Parameters.Add(param1)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                sitype = rdr("serialno")

                stype = Format(sitype, "00")

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try


    End Sub
    Sub serial()
        'generate the serial no of the site inthe state

        Dim cmd As SqlCommand = New SqlCommand("select sitenum from siteinfo where  clientstate = @clientstate and projectname = @projectname and clientaddress = @clientaddress ", conn)


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@clientstate"
        param1.Value = stname

        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@projectname"
        param2.Value = Me.DDLproname.SelectedItem.Text
        cmd.Parameters.Add(param2)


        Dim param3 As SqlParameter = New SqlParameter
        param3.ParameterName = "@clientaddress"
        param3.Value = Me.Listaddress.SelectedItem.Text
        cmd.Parameters.Add(param3)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                sno = rdr("sitenum")

                sitno = Format(sno, "000")


            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try


    End Sub



    Sub inputdata()
        'insert the survey into the database
        Dim cmd As SqlCommand = New SqlCommand("insert into survey (projectname , techid , tcomment , sitecode, invtbattery , invtpsource ,invtcrack , invtatm , earthbding , arrestor , earthrding ,loadcapcty, date , siteready)" & _
        " values (@projectname , @techid , @tcomment , @sitecode, @invtbattery , @invtpsource ,@invtcrack , @invtatm , @earthbding , @arrestor , @earthrding ,@loadcapcty,@date , @siteready)", conn)


        cmd.Parameters.AddWithValue("@techid", Me.DDLtechid.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@projectname", Me.DDLproname.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@tcomment", Me.Txtissues.Text)
        cmd.Parameters.AddWithValue("@sitecode", Me.Txtsitecode.Text)
        cmd.Parameters.AddWithValue("@invtbattery", Me.Txtbattery.Text)
        cmd.Parameters.AddWithValue("@invtpsource", Me.Txtpsource.Text)
        cmd.Parameters.AddWithValue("@invtcrack", Me.Txtcrack.Text)
        cmd.Parameters.AddWithValue("@invtatm", Me.Txtatm.Text)
        cmd.Parameters.AddWithValue("@earthbding", Me.Txtebonding.Text)
        cmd.Parameters.AddWithValue("@arrestor", Me.DDLarrestor.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@earthrding", Me.Txtereading.Text)
        cmd.Parameters.AddWithValue("@loadcapcty", Me.TxtTLC.Text)
        cmd.Parameters.AddWithValue("@date", Date.Now)
        cmd.Parameters.AddWithValue("@siteready", Me.DDLstatus.SelectedItem.Text)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The survey information has been collected and the sitecode" & Me.Txtsitecode.Text & _
                "Click 'Yes' to register other surveys on the same Project" & _
                "Otherwise Click No", MsgBoxStyle.YesNo, " INLAKS COMPUTERS")
                If MsgBoxResult.Yes Then
                    firstclear()
                Else
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
    End Sub
    



    Sub insiteinfo()
        ', input the site code in site info
        Dim cmd As SqlCommand = New SqlCommand("update siteinfo set   sitecode = @sitecode , sitestatus = @sitestatus where  ( projectname = @original_projectname ) and ( clientaddress = @original_clientaddress )", conn)

        cmd.Parameters.AddWithValue("@original_projectname", Me.DDLproname.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@original_clientaddress", Me.Listaddress.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@sitecode", Me.Txtsitecode.Text)
        cmd.Parameters.AddWithValue("@sitestatus", "surveyed")
        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("site code has been inputed in the site information ", MsgBoxStyle.Information, " INLAKS COMPUTERS")

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

    Sub intechjob()

        Dim cmd As SqlCommand = New SqlCommand("update techjob set   comment = @comment  where  ( techid = @original_techid ) and ( clientaddress = @original_clientaddress )", conn)

        cmd.Parameters.AddWithValue("@original_techid", Me.DDLtechid.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@original_clientaddress", Me.Listaddress.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@comment", "surveyed")

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("site code has been inputed in the site information ", MsgBoxStyle.Information, " INLAKS COMPUTERS")

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
    Sub codeno()

        sbkcode()
        slcode()
        siteno()
        serial()

        Me.Txtsitecode.Text = CStr(Trim(codename) & Trim(stcode) & stype & sitno)


    End Sub
    Sub firstclear()
        Me.Listaddress.Items.Remove(Me.Listaddress.SelectedItem.Text)
        Me.DDLstatus.SelectedIndex = 0
        Me.DDLarrestor.SelectedIndex = 0
        Me.Txtatm.Text = ""
        Me.Txtbattery.Text = ""
        Me.Txtcrack.Text = ""
        Me.Txtebonding.Text = ""
        Me.Txtissues.Text = ""
        Me.Txtpsource.Text = ""
        Me.TxtTLC.Text = ""


    End Sub
    Sub clear()
        Me.DDLtechid.SelectedIndex = 0
        Me.DDlsitetype.SelectedIndex = 0
        Me.DDLproname.SelectedIndex = 0
        Me.Listaddress.Items.Clear()
        Me.DDLstatus.SelectedIndex = 0
        Me.DDLarrestor.SelectedIndex = 0
        Me.Txtebonding.Text = ""
        Me.Txtatm.Text = ""
        Me.Txtbattery.Text = ""
        Me.Txtcrack.Text = ""
        Me.Txtebonding.Text = ""
        Me.Txtissues.Text = ""
        Me.Txtpsource.Text = ""
        Me.TxtTLC.Text = ""


    End Sub

    Sub loadpro()

        Dim cmd As SqlCommand = New SqlCommand("select Projectname from regpro where completed = @completed ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@completed"
        param.Value = "r"
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

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

    '  Protected Sub DDLproname_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLproname.SelectedIndexChanged
    ' sbkcode()
    '  Dim cmd As SqlCommand = New SqlCommand("select clientaddress from siteinfo where  projectname = @projectname and  sitestatus = @sitestatus ", conn)

    ' Dim param1 As SqlParameter = New SqlParameter
    '    param1.ParameterName = "@projectname"
    '   param1.Value = Me.DDLproname.SelectedItem.Text

    '  cmd.Parameters.Add(param1)

    ' Dim param2 As SqlParameter = New SqlParameter
    '    param2.ParameterName = "@sitestatus"
    '   param2.Value = "survey"

    '  cmd.Parameters.Add(param2)


    ' Try
    '    conn.Open()
    '   rdr = cmd.ExecuteReader
    '  While rdr.Read() = True

    '     Me.Listaddress.Items.Add(rdr("clientaddress"))

    '            End While
    '       Catch ex As Exception
    '          MsgBox(ex.Message)
    '     Finally
    '        If Not conn.State = Data.ConnectionState.Closed Then
    '           conn.Close()
    '      End If
    ' End Try


    'End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        clear()

    End Sub




    Protected Sub Btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsub.Click


        codeno()
        insiteinfo()
        inputdata()

        Me.DDLproname.SelectedIndex = 0
        Me.DDLtechid.SelectedIndex = 0
        Me.Txtereading.Text = ""

        ' MsgBox(codename.ToString)

        ' MsgBox(Me.Txtsitecode.Text)
    End Sub



    Protected Sub DDLproname_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLproname.SelectedIndexChanged
        Me.Listaddress.Items.Clear()
        Dim cmd As SqlCommand = New SqlCommand("select clientaddress from siteinfo where projectname = @projectname and sitecode is Null intersect select clientaddress from techjob where  techid = @techid and  jobtype = @jobtype and endjob < = endjob ", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.DDLproname.SelectedItem.Text

        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@techid"
        param1.Value = Me.DDLtechid.SelectedItem.Text

        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@jobtype"
        param2.Value = "survey"

        cmd.Parameters.Add(param2)

        Dim param3 As SqlParameter = New SqlParameter
        param3.ParameterName = "@endjob"
        param3.Value = Date.Now

        cmd.Parameters.Add(param3)



        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True


                Me.Listaddress.Items.Add(rdr("clientaddress"))

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
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
                If drole = "implementation" Then

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


End Class

