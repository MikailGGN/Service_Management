Imports System.Data.SqlClient
Imports System.Threading
Partial Class set_cost
    Inherits System.Web.UI.Page

    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim str As New StringCollection
    'Dim starri, stdept As New StringCollection
    'Dim Txtsw, Txtss, Txtse, Txtnw, Txtne, Txtnc As String

    Protected Sub BtnsubmitT_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnsubmitT.Click

        'adding the transport 
        Me.Txttotal.Text = Val(Me.Txtdistance.Text) * Val(Me.Txtcost.Text)



        'saving the transport cost

        Dim cmd As SqlCommand = New SqlCommand("insert into transportcost( departure ,arrival, distance,rate,total)" & _
               " values( @departure ,@arrival, @distance,@rate,@total)", conn)

        cmd.Parameters.AddWithValue("@departure", Me.ddldepart.selecteditem.Text)
        cmd.Parameters.AddWithValue("@arrival", Me.DDLstate.Text)
        cmd.Parameters.AddWithValue("@distance", Me.Txtdistance.Text)
        cmd.Parameters.AddWithValue("@rate", Me.Txtcost.Text)
        cmd.Parameters.AddWithValue("@total", Me.Txttotal.Text)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("Data has been collected  ", MsgBoxStyle.Information, "INLAKS COMPUTERS")


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

    Protected Sub Btnsuballow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsuballow.Click
        'adding the other cost
        Me.TxtTalllowance.Text = Val(Me.Txtltransport.Text) + Val(Me.Txtfeeding.Text) + Val(Me.Txtaccomodation.Text)

        'entering the other cost into database

        Dim cmd As SqlCommand = New SqlCommand("insert into allowancecost(techlevel ,accomodation , feeding ,localtrans ,tallowance ) " & _
                      " values  ( @techlevel ,@accomodation , @feeding ,@localtrans ,@tallowance )", conn)

        cmd.Parameters.AddWithValue("@techlevel", Me.DDLtechlevel.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@accomodation", Me.Txtaccomodation.Text)
        cmd.Parameters.AddWithValue("@feeding", Me.Txtfeeding.Text)
        cmd.Parameters.AddWithValue("@localtrans", Me.Txtltransport.Text)
        cmd.Parameters.AddWithValue("@tallowance", Me.TxtTalllowance.Text)

        Try
            conn.Open()

            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("Data has been collected  ", MsgBoxStyle.Information, "INLAKS COMPUTERS")


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

    Protected Sub Btnupt_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnupt.Click


        'adding the transport cost

        Me.Txttotal.Text = Val(Me.Txtdistance.Text) * Val(Me.Txtcost.Text)

        'updating the transport cost


        Dim cmd As SqlCommand = New SqlCommand("update transportcost set (distance=@distance,rate = @rate,total =@total) where (arrival=@original_arrival ) and (departure = @original_depature) ", conn)
        cmd.Parameters.AddWithValue("@original_arrival", Me.DDLstate.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@original_departure", Me.ddldepart.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@distance", Me.Txtdistance.Text)
        cmd.Parameters.AddWithValue("@rate", Me.Txtcost.Text)
        cmd.Parameters.AddWithValue("@total", Me.Txttotal.Text)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The transport rate has been updated", MsgBoxStyle.Information, "Inlaks Computers")
            Else
                MsgBox("An error has occured", MsgBoxStyle.Information, "Inlaks Computers")



            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub Btnupa_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnupa.Click

        'adding the other cost
        Me.TxtTalllowance.Text = Val(Me.Txtltransport.Text) + Val(Me.Txtfeeding.Text) + Val(Me.Txtaccomodation.Text)

        'update other cost

        Dim cmd As SqlCommand = New SqlCommand("update allowancecost set (localtrans=@localtrans,accomodation = @accomodation,tallowance =@tallowance,feeding=@feeding) where (techlevel=@original_techlevel )", conn)
        cmd.Parameters.AddWithValue("@original_techlevel", Me.DDLtechlevel.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@accomdation", Me.Txtaccomodation.Text)
        cmd.Parameters.AddWithValue("@feeding", Me.Txtfeeding.Text)
        cmd.Parameters.AddWithValue("@localtrans", Me.Txtltransport.Text)
        cmd.Parameters.AddWithValue("@tallowance", Me.TxtTalllowance.Text)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("New allowance rate has been implemented", MsgBoxStyle.Information, "Inlaks Computers")
            Else
                MsgBox("An error has occured", MsgBoxStyle.Information, "Inlaks Computers")



            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub Btnclear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnclear.Click
        Me.DDLregion.SelectedIndex = 0
        Me.Txtrate.Text = ""
        Me.Txttotal.Text = ""
        Me.TxtTalllowance.Text = ""
        Me.Txtfeeding.Text = ""
        Me.Txtdistance.Text = ""
        Me.Txtcost.Text = ""
        Me.Txtaccomodation.Text = ""
        Me.ddldepart.SelectedIndex = 0
        Me.DDLstate.SelectedIndex = 0
        Me.DDLtechlevel.SelectedIndex = 0
        Me.Txtltransport.Text = ""
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = True Then
            'readstate()


        End If
    End Sub

   
 
    Protected Sub Btnrgn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnrgn.Click


        Dim cmd As SqlCommand = New SqlCommand("insert into regrate( rate ,region)" & _
               " values(@rate,@region)", conn)

        cmd.Parameters.AddWithValue("@rate", Me.Txtcost.Text)
        cmd.Parameters.AddWithValue("@region", Me.Txttotal.Text)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("A new rate has been collected  ", MsgBoxStyle.Information, "INLAKS COMPUTERS")
                Me.DDLregion.SelectedIndex = 0
                Me.Txtrate.Text = ""

            Else
                MsgBox("AN ERROR AS OCCURED," & _
                "PLEASE CHECK THE INFORMATION AND TRY AGAIN", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
                Me.DDLregion.SelectedIndex = 0
                Me.Txtrate.Text = ""

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub Btnrupd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnrupd.Click

        Dim cmd As SqlCommand = New SqlCommand("update regrate set (rate = @rate) where (region=@original_region )  ", conn)
        cmd.Parameters.AddWithValue("@original_region", Me.DDLregion.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@rate", Me.Txtrate.Text)


        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("A rate has been updated", MsgBoxStyle.Information, "Inlaks Computers")
            Else
                MsgBox("An error has occured", MsgBoxStyle.Information, "Inlaks Computers")



            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub DDLstate_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLstate.SelectedIndexChanged

        Dim cmd As SqlCommand = New SqlCommand("SELECT rate FROM regrate where region = (select region from stateinfo where state =@state)", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@state"
        param.Value = Me.DDLstate.SelectedItem.Text
        cmd.Parameters.Add(param)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader

            If rdr.HasRows = True Then
                While rdr.Read = True
                    Me.Txtcost.Text = ""
                    Me.Txtcost.Text = rdr("rate")

                End While
            Else
                MsgBox("The rate for the selected state is not in the database", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If

        Catch ex As Exception

            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()

            End If

        End Try
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
     

        For i As Integer = 0 To Me.DDLstate.Items.Count - 1
            For j As Integer = 0 To Me.ddldepart.Items.Count - 1

                Dim cmd As SqlCommand = New SqlCommand("insert into transportcost (departure, arrival) values (@departure , @arrival) ", conn)


                cmd.Parameters.AddWithValue("@departure", ddldepart.Items.Item(j).Text)
                cmd.Parameters.AddWithValue("@arrival", DDLstate.Items.Item(i).Text)

                Try
                    conn.Open()
                    If cmd.ExecuteNonQuery > 0 Then
                        MsgBox("A new rate has been collected  ", MsgBoxStyle.Information, "INLAKS COMPUTERS")

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
            Next
        Next

    End Sub
End Class
