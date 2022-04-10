Imports System.Data.SqlClient
Partial Class qc_assign
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim i As Int16
    Dim dstate, astate As New StringCollection
    Dim ttal As Double
    Dim rgn As String
    Dim scode As String
    Dim concatst As String
    Dim urole As String
    Sub genregion()

        Dim cmd As SqlCommand = New SqlCommand("select region from stateinfo where region= @region", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@region"
        param.Value = Me.DDLregion.SelectedItem.Text

        cmd.Parameters.Add(param)

        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read = True)

                    'sitestate(x) = rdr("state").ToString
                    'sitestate(i) = sitestate(j)
                    rgn = (rdr("region"))


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
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            loadpages()
            deperson()
        End If
    End Sub
    Sub deperson()

        Dim cmd As SqlCommand = New SqlCommand("select techid  from techinfo  ", conn)

        'where techlevel= @techlevel
        'Dim param As SqlParameter = New SqlParameter
        'param.ParameterName = "@techlevel"
        'param.Value = ""

        'cmd.Parameters.Add(param)

        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read = True)
                    Me.DDlperson.Items.Add(rdr("techid"))


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
    Protected Sub DDLregion_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLregion.SelectedIndexChanged

        Dim cmd As SqlCommand = New SqlCommand(" SELECT sitecode FROM siteinfo where clientstate = ( select location from techjob where endjob BETWEEN @endjob - 180 AND @endjob and jobtype = @jobtype  and region = @region ) ", conn)


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@endjob"
        param1.Value = Date.Now
        cmd.Parameters.Add(param1)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@region"
        param2.Value = Me.DDLregion.SelectedItem.Text
        cmd.Parameters.Add(param2)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While rdr.Read

                    Me.Listsite.Items.Add(rdr("sitecode").ToString)
                    Me.Listsite.Items.Remove("")

                End While
            Else


                MsgBox("There are no implemented sites in the past six months", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)

        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()

            End If
        End Try

    End Sub




    Protected Sub Btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnadd.Click
        '   Me.Listsite.SelectedIndex = 0



        If Me.RBtnr.Checked = True Then


            For i As Int16 = 1 To Val(Me.txtno.Text)
                Dim j(i) As Int16

                j(i) = Rnd(i)
                'Me.Listsite.SelectedIndex = i
                Me.Listselected.Items.Add(Me.Listsite.Items.Item(j(i)).Text)
                Me.Listsite.Items.Remove(Me.Listsite.Items.Item(j(i)).Text)

            Next
        ElseIf Me.RBtnM.Checked = True Then
            If Not Me.Listsite.SelectedIndex < 0 Then
                Me.Listselected.Items.Add(Me.Listsite.SelectedItem.Text)

            Else
                MsgBox("Please select the sitecode", MsgBoxStyle.Critical, "Inlaks Computers")
            End If
        End If

    End Sub

    Protected Sub Btnremove_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnremove.Click
        If Not Me.Listselected.SelectedIndex < 0 Then

            Me.Listsite.Items.Add(Me.Listselected.SelectedItem.Text)
            Me.Listselected.Items.Remove(Me.Listselected.SelectedItem.Text)
        Else
            MsgBox("Please select the sitecode", MsgBoxStyle.Critical, "Inlaks Computers")
        End If
    End Sub

    Protected Sub Btnassign_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnassign.Click
        destate()
        trans()
        therunningcost()
        inqc()
    End Sub
    Sub destate()

        'the present location of the personnel

        Dim cmd As SqlCommand = New SqlCommand("select location from techjob where techid= @techid and endjob between @endjob -5 and @endjob", conn)


        Dim paramt As SqlParameter = New SqlParameter
        paramt.ParameterName = "@techid"
        paramt.Value = Me.DDlperson.SelectedItem.Text

        cmd.Parameters.Add(paramt)


        Dim paramm As SqlParameter = New SqlParameter
        paramm.ParameterName = "@endjob"
        paramm.Value = Date.Today

        cmd.Parameters.Add(paramm)

        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read = True)

                    dstate.Add(rdr("location"))


                End While
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If

        End Try

        'Dim x As Int16
        'state of the sites to be visited
        For x As Integer = 0 To Me.Listselected.Items.Count - 1 Step +1

            Me.Listselected.SelectedIndex = x


            Dim cmd1 As SqlCommand = New SqlCommand("select clientstate from siteinfo where sitecode= @sitecode ", conn)


            Dim param As SqlParameter = New SqlParameter
            param.ParameterName = "@sitecode"
            param.Value = Me.Listselected.SelectedItem.Text

            cmd1.Parameters.Add(param)

            Try

                conn.Open()
                rdr = cmd1.ExecuteReader
                If rdr.HasRows Then


                    While (rdr.Read = True)

                        astate.Add(rdr("clientstate"))
                        dstate.Add(astate.Item(x).ToString)
                        '  MsgBox(x.ToString)
                        ' MsgBox(dstate.Item(x).ToString)
                        ' x += 1
                    End While
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                If conn.State = Data.ConnectionState.Open Then
                    conn.Close()
                End If

            End Try


        Next

    End Sub

    Sub trans()
        For x As Integer = 0 To Me.Listselected.Items.Count - 1
            Dim cmdx As SqlCommand = New SqlCommand("select (total) from transportcost where arrival = @arrival and departure = @departure ", conn)

            Dim param1 As SqlParameter = New SqlParameter()
            param1.ParameterName = "@arrival"
            param1.Value = Me.astate.Item(x).ToString
            cmdx.Parameters.Add(param1)
            Dim param2 As SqlParameter = New SqlParameter()
            param2.ParameterName = "@departure"
            param2.Value = Me.dstate.Item(x).ToString
            cmdx.Parameters.Add(param2)
            Try
                conn.Open()
                rdr = cmdx.ExecuteReader
                While rdr.Read() = True
                    Me.Txttrans1.Text = rdr("total")
                    Me.Txttrans1.Text = Val(Me.Txttrans1.Text) + Val(Me.Txttrans1.Text)

                End While
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                If Not conn.State = Data.ConnectionState.Closed Then
                    conn.Close()
                End If
            End Try
        Next
    End Sub
    Sub therunningcost()

        Dim accom, feed, ltrans As Double
        Dim cmd As SqlCommand = New SqlCommand("select accomodation, feeding, localtrans from allowancecost where techlevel = @techlevel", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techlevel"
        param.Value = "T1"

        cmd.Parameters.Add(param)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                accom = rdr("accomodation")
                feed = rdr("feeding")
                ltrans = rdr("localtrans")

                ttal = ((feed + ltrans) * Val(Me.Txtnday.Text)) + (accom * (Val(Me.Txtnday.Text) - 1))

                Me.Txttrans1.Text = Val(Me.Txttrans1.Text) + ttal

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub qcsite()

        For x As Integer = 0 To Me.Listselected.Items.Count - 1
            Me.Listselected.SelectedIndex = x
            If scode = "" Then
                scode = Me.Listselected.SelectedItem.Text
            Else

                scode = scode & "," & Me.Listselected.SelectedItem.Text
                ' MsgBox(scode)
            End If
        Next
    End Sub

    Sub inqc()

        qcsite()
        Dim endd As Date = Date.Now.AddDays(Val(Me.Txtnday.Text))
        Dim cmd As SqlCommand = New SqlCommand("INSERT INTO qcontrol  (techid, startjob, endjob, region, sitecodes, allocation ) " & _
        " VALUES    ( @techid , @startjob , @endjob , @region , @sitecodes,  @allocation )", conn)


        cmd.Parameters.AddWithValue("@techid", Me.DDlperson.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@startjob", Date.Now)
        cmd.Parameters.AddWithValue("@endjob", endd)
        cmd.Parameters.AddWithValue("region", Me.DDLregion.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@sitecodes", scode)
        cmd.Parameters.AddWithValue("@allocation", Val(Me.Txttrans1.Text))


        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then

                MsgBox(Me.DDlperson.SelectedItem.Text & " is Assigned Quality Assurance  exercise in the" & rgn.ToString & "region", MsgBoxStyle.Information, "INLAKS COMPUTERS")
                Me.Listselected.ClearSelection()
            Else
                MsgBox("An Error has occurred", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
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

    Protected Sub txtno_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtno.TextChanged

        Me.Btnadd.Focus()
    End Sub

    Protected Sub RBtnr_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RBtnr.CheckedChanged
        Me.txtno.Focus()
    End Sub

    Protected Sub RBtnM_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RBtnM.CheckedChanged
        Me.txtno.Focus()
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

End Class
