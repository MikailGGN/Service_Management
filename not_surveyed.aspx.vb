Imports System.Data.SqlClient
Partial Class not_surveyed
    Inherits System.Web.UI.Page

    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader

    Dim codename, cname As String
    Dim stname, stcode As String
    Dim sitype As Integer
    Dim sno As Integer
    Dim stype, sitno As String
    Sub slname()

        'using the site address to generate state
        Dim cmd As SqlCommand = New SqlCommand("select statecode from stateinfo where  state = @state ", conn)


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@state"
        param1.Value = Me.DDLstate.SelectedItem.Text
        cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While rdr.Read() = True

                    stname = rdr("statecode")
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
    Sub loadstate()

        'using the site address to generate state
        Dim cmd As SqlCommand = New SqlCommand("select state from stateinfo  ", conn)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While rdr.Read() = True

                    Me.DDLstate.Items.Add(rdr("state"))
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

    Sub serial()
        'generate the serial no of the site inthe state
        Dim cmd As SqlCommand = New SqlCommand("SELECT        sitenum "& _ 
        " FROM siteinfo WHERE        (clientstate = @clientstate) AND (Projectname = @projectname) AND (clientaddress = @clientaddress) ", conn)


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@clientstate"
        param1.Value = Me.DDLstate.SelectedItem.Text

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
    Protected Sub Btnsite_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsite.Click
        inputdata()
        insiteinfo()


        clear()
    End Sub

    Protected Sub DDLstate_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLstate.SelectedIndexChanged
        Me.Listaddress.Items.Clear()


        Dim cmd As SqlCommand = New SqlCommand("select clientaddress  from siteinfo where  clientstate = @clientstate and projectname = @projectname and sitecode is null ", conn)

        ', clienttown
        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@clientstate"
        param1.Value = Me.DDLstate.SelectedItem.Text
        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@projectname"
        param2.Value = Me.DDLproname.SelectedItem.Text
        cmd.Parameters.Add(param2)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True
                Me.Listaddress.Items.Add(rdr("clientaddress"))
                '& "," & rdr("clienttown")


            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try


    End Sub
    Sub clear()
        Me.DDLstate.SelectedIndex = 0
        Me.DDLsite.SelectedIndex = 0
        Me.DDLproname.SelectedIndex = 0

        Me.Txtissues.Text = ""
        Me.txtsitecode.Text = ""
        Me.Listaddress.Items.Remove(Me.Listaddress.SelectedItem.Text)
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            loadpro()
            loadstate()
            loadsitetype()
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
        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro  where completed =@completed", conn)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@completed"
        param1.Value = "r"
        cmd.Parameters.Add(param1)

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
    Sub loadsitetype()
        Dim cmd As SqlCommand = New SqlCommand("select sitetype from sitetypeinfo  ", conn)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                Me.DDLsite.Items.Add(rdr("sitetype"))


            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Sub entersiteno()

        Dim cmd As SqlCommand = New SqlCommand("select serialno from sitetypeinfo  where sitetype =@sitetype", conn)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@sitetype"
        param1.Value = Me.DDLsite.SelectedItem.Text
        cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                sitype = (rdr("serialno"))
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
    Sub code()
        sbkcode()
        slname()

        serial()

        entersiteno()
        Me.txtsitecode.Text = CStr(Trim(codename) & Trim(stname) & stype & sitno)

        ' MsgBox(Me.txtsitecode.Text)

    End Sub


    Protected Sub DDLsite_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLsite.SelectedIndexChanged
        entersiteno()
    End Sub
    Sub insiteinfo()
        code()
        ', input the site code in site info

        ' Dim daddress As String = Me.Listaddress.SelectedItem.Text
        'Dim dadd As String = Split(daddress, ",")
        Dim cmd As SqlCommand = New SqlCommand("update siteinfo set   sitecode = @sitecode , sitestatus = @sitestatus where  ( projectname = @original_projectname ) and ( clientaddress= @original_clientaddress )", conn)

        cmd.Parameters.AddWithValue("@original_projectname", Me.DDLproname.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@original_clientaddress", Me.Listaddress.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@sitecode", Me.txtsitecode.Text)
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
    Sub inputdata()
        code()
        'insert the survey into the database
        Dim cmd As SqlCommand = New SqlCommand("insert into survey (projectname  , tcomment , sitecode , date , siteready)" & _
        " values (@projectname  , @tcomment , @sitecode , @date , @siteready)", conn)


        '  cmd.Parameters.AddWithValue("@techid", Me.DDLtechid.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@projectname", Me.DDLproname.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@tcomment", Me.Txtissues.Text)
        cmd.Parameters.AddWithValue("@sitecode", Me.txtsitecode.Text)
        cmd.Parameters.AddWithValue("@date", Date.Now)
        cmd.Parameters.AddWithValue("@siteready", "yes")

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("Note : This site was not surveyed but requires urgent attention hence  the sitecode" & Me.txtsitecode.Text & _
                "has been to enable materials request", MsgBoxStyle.Information, " INLAKS COMPUTERS")
                
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

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Me.DDLstate.SelectedIndex = 0
        Me.DDLsite.SelectedIndex = 0
        Me.DDLproname.SelectedIndex = 0

        Me.Txtissues.Text = ""
        Me.txtsitecode.Text = ""
        Me.Listaddress.Items.Clear()

    End Sub
   
    
End Class
