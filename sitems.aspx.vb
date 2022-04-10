Imports System.Data.SqlClient
Partial Class sitems
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim scde As New StringCollection
    ' Dim nscode, nsaddress, nstown As New StringCollection

    Structure group

        Dim coll As String
    End Structure

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then


            'loadaddress()
            sit()

        End If
    End Sub
   
    Sub sit()

        Dim cmd As SqlCommand = New SqlCommand("Select sitecode from support where f_Re_date is NULL  AND parts is NULL ", conn)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows = True Then
                While (rdr.Read = True)

                    Me.DDLsite.Items.Add(rdr("sitecode"))


                End While

            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
        

    End Sub
    Sub loadaddress()
        ' sit()
        ' Me.ListBox1.Items.Clear()
        For x As Integer = 0 To Me.DDLsite.Items.Count - 1


            Dim cmd As SqlCommand = New SqlCommand("Select  clientaddress , clienttown , clientstate from siteinfo where sitecode = @sitecode ", conn)

            Dim param As SqlParameter = New SqlParameter
            param.ParameterName = "@sitecode"
            param.Value = Me.DDLsite.SelectedItem.Text
            cmd.Parameters.Add(param)
            Try
                conn.Open()
                rdr = cmd.ExecuteReader
                If rdr.HasRows = True Then
                    While (rdr.Read = True)
                        'nscode = rdr("sitecode")
                        'nsaddress = rdr("clientaddress")
                        'nstown = rdr("clienttown")
                        Me.TextBox1.Text = (rdr("clientaddress") & "," & rdr("clienttown") & vbCrLf & rdr("clientstate"))

                        'nscode(x).ToString & ":" & vbCrLf &

                    End While

                End If

            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                If Not conn.State = Data.ConnectionState.Closed Then
                    conn.Close()
                End If
            End Try

        Next

    End Sub

    Protected Sub Btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnadd.Click
        Dim part As String
        part = Me.Txtupart.Text & "+" & Me.Txtuqty.Text
        Me.Listpart.Items.Add(part)
        Me.Txtupart.Text = ""
        Me.Txtuqty.Text = ""

    End Sub

    Protected Sub Btnrmove_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnrmove.Click
              If Me.Listpart.SelectedIndex >= 0 Then
            Me.Listpart.Items.Remove(Me.Listpart.SelectedItem.Text)
        Else
            MsgBox("Select the item to be removed", MsgBoxStyle.Exclamation, "Inlaks Computers")

        End If

    End Sub

    Protected Sub Btnrplace_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnrplace.Click
        If Me.Listpart.SelectedIndex >= 0 Then

            Dim arts As String = Me.Listpart.SelectedItem.Text
            Dim a() As String = Split(arts, "+", 2)
            Me.Txtupart.Text = a(0).ToString
            Me.Txtuqty.Text = a(1).ToString

            Me.Listpart.Items.Remove(Me.Listpart.SelectedItem.Text)

        Else
            MsgBox("Select the item to be removed", MsgBoxStyle.Exclamation, "Inlaks Computers")

        End If
    End Sub

    
   
    Sub gcomp()

        'Dim x As Integer = Me.ListBox1.Items.Count


        Dim cmd As SqlCommand = New SqlCommand("select complaint from support where sitecode = @sitecode ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitecode"
        param.Value = Me.DDLsite.SelectedItem.Text
        cmd.Parameters.Add(param)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows = True Then
                While (rdr.Read = True)

                    Me.Txtcompview.Text = (rdr("complaint"))

                End While
            Else
                MsgBox("No record in the database", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try
    End Sub

  

   

    Protected Sub DDLsite_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLsite.SelectedIndexChanged
        gcomp()
        loadaddress()
    End Sub

    Sub partlist()
        For i As Int16 = 0 To Me.Listpart.Items.Count - 1
            Dim litem(i) As Group

            litem(i).coll = Me.Listpart.Items.Item(i).Text
            Me.Txtitems.Text = Me.Txtitems.Text & "," & litem(i).coll

        Next
    End Sub
    Protected Sub Btnpart_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnpart.Click

        partlist()
        Dim cmd As SqlCommand = New SqlCommand(" update support set parts = @parts where sitecode = @original_sitecode  ", conn)

        cmd.Parameters.AddWithValue("@original_sitecode", Me.DDLsite.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@parts", Me.Txtitems.Text)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The parts request has been noted assign at technician for the task", MsgBoxStyle.Information, "INLAKS COMPUTERS")

                Me.DDLsite.Items.Remove(Me.DDLsite.SelectedItem.Text)
                Me.DDLsite.SelectedIndex = 0
                Me.Txtcompview.Text = ""
                Me.Txtupart.Text = ""
                Me.Txtuqty.Text = ""
                Me.Listpart.Items.Clear()


            Else
                MsgBox("An error as occurred check your data and try again", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

                Me.DDLsite.SelectedIndex = 0
                Me.Txtcompview.Text = ""
                Me.Txtupart.Text = ""
                Me.Txtuqty.Text = ""
                Me.Listpart.Items.Clear()

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

        Me.TextBox1.Text = ""

    End Sub
End Class
