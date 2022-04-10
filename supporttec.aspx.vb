Imports System.Data.SqlClient

Partial Class supporttech
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Public saddress, stown, sstate, ssite As String
    Dim tlvl As String
    Dim allocatn, comall, trans As Decimal
    Dim rtn As Decimal
    Protected Sub Listsite_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Listsite.SelectedIndexChanged
        loadadd()
        loadcompt()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then

            loadpages()
            loadsite()
            checkrole()
        End If
    End Sub
    Sub loadpages()
        Dim addpage As String

        Dim constrg As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\datasecure.mdf;Integrated Security=True;User Instance=True"
        Dim con As New SqlConnection(constrg)
        Dim rd As SqlDataReader


        Dim cmd As SqlCommand = New SqlCommand("select newpage from otheraccess where username = @username ", con)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@username"
        param.Value = CType(Session.Item("username"), String)
        cmd.Parameters.Add(param)



        Try
            con.Open()
            rd = cmd.ExecuteReader





            While rd.Read = True
                addpage = (rd("newpage"))
                If addpage = "nopages," Then

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
        'load the site code 
        'and techid = @techid 
        Dim cmd As SqlCommand = New SqlCommand(" select sitecode from support where  ( datereported < = @datereported ) and  f_Re_date  is Null and techid is Null  ", conn)


        '
        'and ( f_Re_date = @f_Re_date  )
        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@datereported"
        param1.Value = Date.Now
        cmd.Parameters.Add(param1)

        'Dim param2 As SqlParameter = New SqlParameter
        'param2.ParameterName = "@techid"
        'param2.Value = Me.DDLtech.SelectedItem.Text
        'cmd.Parameters.Add(param2)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read = True)

                    Me.Listsite.Items.Add(rdr("sitecode"))

                End While
            Else
                MsgBox("No Record in the database", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try

    End Sub
    Sub loadadd()
        ' load the site address

        Dim cmd As SqlCommand = New SqlCommand("select clientaddress, clienttown, clientstate from siteinfo where sitecode= @sitecode", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitecode"
        param.Value = Me.Listsite.SelectedItem.Text

        cmd.Parameters.Add(param)


        Try
            conn.Open()

            rdr = cmd.ExecuteReader()

            While (rdr.Read() = True)


                saddress = rdr("clientaddress")
                stown = rdr("clienttown")
                sstate = rdr("clientstate")


                Me.Txtaddress.Text = saddress.ToString & "," & vbCrLf & stown.ToString & "," & vbCrLf & sstate.ToString & "."

            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try


    End Sub
    Sub loadcompt()
        Dim cmd As SqlCommand = New SqlCommand("select complaint from support where  ( sitecode = @sitecode ) and f_Re_date  is Null ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitecode"
        param.Value = Me.Listsite.SelectedItem.Text

        cmd.Parameters.Add(param)

       
        Try
            conn.Open()

            rdr = cmd.ExecuteReader()

            While (rdr.Read() = True)


                Me.Txtcomplaint.Text = rdr("complaint")

               
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
        Me.Calendar1.Visible = True

    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        Me.Txtserstart.Text = Me.Calendar1.SelectedDate

        loadtech()
        Me.Calendar1.Visible = False
        Me.Calendar1.SelectedDate = Today

    End Sub
    Sub loadtech()
        ' MsgBox("any technician that completed ajob in thelast 3days")
        'load technician
        Dim cmd As SqlCommand = New SqlCommand(" select distinct  techid  from  techinfo ", conn)
        ' techjob where   endjob between @endjob-3 and @endjob
        '( techlevel= @techlevel ) and
        ' Dim param As SqlParameter = New SqlParameter
        'param.ParameterName = "@techlevel"
        'param.Value = "T1"

        'cmd.Parameters.Add(param)

        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = CDate(Me.Txtserstart.Text)
        cmd.Parameters.Add(param2)

        Try
            conn.Open()

            rdr = cmd.ExecuteReader()

            While (rdr.Read())


                Me.DDLtech.Items.Add(rdr("techid"))


            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

        ' For x As Int16 = 0 To Me.DDLtech.Items.Count - 1
        'If Me.DDLtech.Items(x + 1).Text = Me.DDLtech.Items(x).Text Then
        'Me.DDLtech.Items.RemoveAt(x + 1)
        'End If
        'Next
    End Sub

    Sub distancetvl()

        loadadd()
        ' the distance travel
        Dim cmd As SqlCommand = New SqlCommand("select distance from transportcost where departure = @departure and arrival =@arrival", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@departure"
        param.Value = sstate

        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@arrival"
        param1.Value = Me.lbllocatn.Text

        cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader

            If rdr.HasRows Then


                While rdr.Read() = True

                    Me.Lbldist.Text = (rdr("distance"))

                End While
            Else
                Me.Lbldist.Text = ""
                MsgBox("No record on this distance in the database", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub loctntec()
        'the location of the technician
        Dim cmd As SqlCommand = New SqlCommand("select location from techjob where techid = @techid and  endjob < = @endjob ", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techid"
        param.Value = Me.DDLtech.SelectedItem.Text

        cmd.Parameters.Add(param)



        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Now

        cmd.Parameters.Add(param2)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                Me.lbllocatn.Text = rdr("location").ToString

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub rfare()
        Dim cmd As SqlCommand = New SqlCommand("select R_alloctn from techjob where techid = @techid and  endjob < = @endjob ", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techid"
        param.Value = Me.DDLtech.SelectedItem.Text

        cmd.Parameters.Add(param)



        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Now

        cmd.Parameters.Add(param2)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                rtn = rdr("R_alloctn")

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Protected Sub DDLtech_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLtech.SelectedIndexChanged
        loctntec()
        distancetvl()
        '.MsgBox(sstate.ToString)

    End Sub
    Function glevel(ByVal lvl As String) As String
        Dim rdr As SqlDataReader
        Dim cmd As SqlCommand = New SqlCommand("select techlevel from techinfo where techid = @techid", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techid"
        param.Value = Me.DDLtech.SelectedItem.Text
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
    Sub genregion()

        Dim cmd As SqlCommand = New SqlCommand("select region from stateinfo where state= @state", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@state"
        param.Value = sstate.ToString

        cmd.Parameters.Add(param)

        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read = True)

                    'sitestate(x) = rdr("state").ToString
                    'sitestate(i) = sitestate(j)
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
    Sub insupport()


        Dim cmd As SqlCommand = New SqlCommand("update support  set techid = @techid where sitecode = @original_sitecode", conn)

        cmd.Parameters.AddWithValue("@original_sitecode", Me.Listsite.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@techid", Me.DDLtech.SelectedItem.Text)

        Try

            conn.Open()

            If cmd.ExecuteNonQuery > 0 Then

                MsgBox("Support information has been updated", MsgBoxStyle.Information, "Inlaks Computers")
                

            Else
                MsgBox("An error occured, Therefore support information was not updated", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then

                conn.Close()
            End If
        End Try

    End Sub
    Sub alloc()
        genregion()


        Dim cmd As SqlCommand = New SqlCommand("insert into techjob ( clientaddress,techid , startjob, endjob, allocation,jobtype,location ,region , clienttown , R_alloctn , sitecode )" & _
                " values(@clientaddress ,@techid, @startjob,@endjob, @allocation,@jobtype,@location,@region , @clienttown , @R_alloctn , @sitecode )", conn)

        cmd.Parameters.AddWithValue("@clientaddress", saddress)
        cmd.Parameters.AddWithValue("@startjob", CDate(Me.Txtserstart.Text))
        cmd.Parameters.AddWithValue("@techid", Me.DDLtech.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@endjob", CDate(Me.Txtserstart.Text).AddDays(Val(Me.Txtnday.Text)))
        cmd.Parameters.AddWithValue("@allocation", allocatn)
        cmd.Parameters.AddWithValue("@jobtype", "support")
        cmd.Parameters.AddWithValue("@location", sstate)
        cmd.Parameters.AddWithValue("@region", ssite)
        cmd.Parameters.AddWithValue("@clienttown", stown.ToString)
        cmd.Parameters.AddWithValue("@R_alloctn", rtn)
        cmd.Parameters.AddWithValue("@sitecode", Me.Listsite.SelectedItem.Text)

        Try

            conn.Open()

            If cmd.ExecuteNonQuery > 0 Then

                MsgBox("The " & Trim(Me.Listsite.SelectedItem.Text) & " as been allocated to " & Me.DDLtech.SelectedItem.Text & _
                vbCrLf & "To Allocate more  to this same technician , Click Ok. ", MsgBoxStyle.OkCancel, "INLAKS COMPUTERS")

                If Microsoft.VisualBasic.MsgBoxStyle.OkOnly = MsgBoxResult.Ok Then

                    'clear site address and flag site as survey

                    Me.Listsite.Items.Remove(Me.Listsite.SelectedItem.Text)
                Else
                    'clear the technician from the queue
                    Me.DDLtech.Items.Remove(Me.DDLtech.SelectedItem.Text)
                    Me.Listsite.Items.Remove(Me.Listsite.SelectedItem.Text)
                    
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

    Sub genfirst()
        loadadd()
        Dim rdr As SqlDataReader

        Dim cmd As SqlCommand = New SqlCommand("select (total) from transportcost where arrival = @arrival and departure = @departure ", conn)

        Dim param1 As SqlParameter = New SqlParameter()
        param1.ParameterName = "@arrival"
        param1.Value = Me.sstate.ToString
        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter()
        param2.ParameterName = "@departure"
        param2.Value = Me.lbllocatn.Text

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
    Sub techall()
        'adding the allowances
        genfirst()
        allowance()
        rfare()
        If Me.lbllocatn.Text = sstate Then

            allocatn = comall + trans - rtn

        Else

            allocatn = comall + trans + rtn

        End If


    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        techall()
        insupport()
        alloc()
        'MsgBox(allocatn.ToString)

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
                If Not drole = "support" Then

                    Me.ImageButton1.Enabled = False
                    Me.ImageButton3.Enabled = False
                    'Me.ImageButton4.Enabled = False
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

End Class
