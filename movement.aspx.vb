Imports System.Data.SqlClient
Partial Class movement
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim saddress, Stown, sstate, ssite As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            readpro()
            loadtech()
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

    Protected Sub DDLproject_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLproject.SelectedIndexChanged
        Dim cmd As SqlCommand = New SqlCommand("select sitecode from materials where projectname= @projectname and dstatus =@dstatus intersect select sitecode from siteinfo where sitestatus = @sitestatus", conn)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproject.SelectedItem.Text
        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@dstatus"
        param2.Value = "delivered"
        cmd.Parameters.Add(param2)

        Dim param3 As SqlParameter = New SqlParameter
        param3.ParameterName = "@sitestatus"
        param3.Value = "delivered"
        cmd.Parameters.Add(param3)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True
                Me.DDLsitecode.Items.Clear()
                Me.DDLsitecode.Items.Add("Select....")
                Me.DDLsitecode.Items.Add(rdr("sitecode"))

            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub


    Protected Sub DDLsitecode_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLsitecode.SelectedIndexChanged
        LOADSTATE()

        Me.Txtaddress.Text = Me.saddress & ", " & vbCrLf & Txtstown.Text & "," & vbCrLf & Me.Txtsstate.Text & "."


    End Sub
    Sub LOADSTATE()
        'load address
        Dim cmd As SqlCommand = New SqlCommand("select clientaddress, clienttown, clientstate from siteinfo where sitecode= @sitecode", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitecode"
        param.Value = Me.DDLsitecode.SelectedItem.Text
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True

                Me.saddress = rdr("clientaddress")
                Txtstown.Text = rdr("clienttown")
                Me.Txtsstate.Text = rdr("clientstate")


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
            MsgBox("Select the date to commence the task", MsgBoxStyle.Exclamation, "InlaksComputers")
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

        Dim cmd As SqlCommand = New SqlCommand("insert into techjob ( techid, location , sitecode ,allocation ,startjob ,endjob, techlevel , jobtype , region , clienttown , R_alloctn )" & _
       " values  ( @techid, @location , @sitecode ,@allocation ,  @startjob , @endjob, @techlevel , @jobtype ,@region , @clienttown , @R_alloctn ) ", conn)

        cmd.Parameters.AddWithValue("@techid", Me.Listtecode.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@location", Me.Txtsstate.Text)
        cmd.Parameters.AddWithValue("@sitecode", Me.DDLsitecode.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@allocation", Txttotal1.Text)
        cmd.Parameters.AddWithValue("@startjob", CDate(Me.Txtstart.Text))
        cmd.Parameters.AddWithValue("@endjob", CDate(Me.Txtstart.Text).AddDays(Val(Txtnday.Text)).Date)
        cmd.Parameters.AddWithValue("@techlevel", Me.Txttechlvl.Text)
        cmd.Parameters.AddWithValue("@jobtype", "implementation")
        cmd.Parameters.AddWithValue("@region", ssite.ToString)
        cmd.Parameters.AddWithValue("@clienttown", Txtstown.Text)
        cmd.Parameters.AddWithValue("@R_alloctn", Txttrav2.Text)


        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox(Me.Listtecode.SelectedItem.Text & " has been appointed to a technician" & vbCrLf & _
" To assign more technicians to this site click Yes otherwise No ", MsgBoxStyle.YesNo, "INLAKS COMPUTERS")
                If MsgBoxStyle.YesNo = MsgBoxResult.Yes Then
                    Listtecode.Items.Remove(Listtecode.SelectedItem.Text)
                    moretech()
                ElseIf MsgBoxStyle.YesNo = MsgBoxResult.No Then
                    clear()
                    moretech()

                End If

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
        DDLsitecode.Items.Remove(Me.DDLsitecode.SelectedItem.Text)
        DDLsitecode.SelectedIndex = 0
        Me.Txtsstate.Text = ""
        Me.Txtstart.Text = ""
        Me.Txtnday.Text = ""

    End Sub
End Class
