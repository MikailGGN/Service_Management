Imports System.Data.SqlClient
Partial Class store_workshop1
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim thepart As String

    Structure group

        Dim coll As String
    End Structure
    Protected Sub Btnv_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnv.Click

        Me.Listreparts.SelectedIndex = 0

        Dim i As Int16

        Me.Listreparts.SelectedIndex = i

        i += 1
    End Sub

    Protected Sub Btnapprove_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnapprove.Click
        If Me.Listreparts.SelectedIndex < 0 Then
            MsgBox("Select the equipment", MsgBoxStyle.Critical, "Inlaks Computers")

        Else
            For i As Int16 = 0 To Me.Listreparts.Items.Count - 1
                Me.Listreparts.SelectedIndex = i
                Me.Listgraparts.Items.Add(Me.Listreparts.SelectedItem.Text)
            Next
        End If
    End Sub

    Protected Sub Btnx_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnx.Click
        If Me.Listreparts.SelectedIndex < 0 Then
            MsgBox("Select the equipment", MsgBoxStyle.Critical, "Inlaks Computers")

        Else
            Me.Listreparts.Items.Remove(Me.Listreparts.SelectedItem.Text)

        End If
    End Sub

    Protected Sub Btnsubapv_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsubapv.Click

    End Sub
    Sub nu()
        'update the parts required after approval

        Dim cmd As SqlCommand = New SqlCommand(" update support set parts = @parts where sitecode = @original_sitecode ", conn)

        cmd.Parameters.AddWithValue("@original_sitecode", Me.DDLsitecode.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@parts", thepart)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The parts for the support task has been registered", MsgBoxStyle.Information, "Inlaks Computers")

            Else
                MsgBox("An error has occurred, try again", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If

        Catch ex As Exception
            MsgBox(ex.Message)

        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()

            End If

        End Try

        thepart = ""
        Me.DDLsitecode.Items.Remove(Me.DDLsitecode.SelectedItem.Text)
        Me.DDLsitecode.SelectedItem.Text = ""
        Me.Listreparts.Items.Clear()
        Me.Listgraparts.Items.Clear()

    End Sub
    Sub partlist()

        For i As Int16 = 0 To Me.Listgraparts.Items.Count - 1
            Dim litem(i) As group

            litem(i).coll = Me.Listgraparts.Items.Item(i).Text
            thepart = thepart & "," & litem(i).coll

        Next

    End Sub

    Protected Sub DDLsitecode_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLsitecode.SelectedIndexChanged
        Me.Listreparts.Items.Clear()
        Me.Listreparts.Focus()
        'Dim x As Int16
        Dim itembreak As String
        Dim brokenitem As String()

        Dim cmd As SqlCommand = New SqlCommand("select parts from support where  sitecode = @sitecode and f_Re_date is null ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitecode"
        param.Value = Me.DDLsitecode.SelectedItem.Text
        cmd.Parameters.Add(param)

        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read


                    itembreak = rdr("parts")

                    brokenitem = (Microsoft.VisualBasic.Split(itembreak.ToString, ","))
                    For i As Int64 = 1 To brokenitem.Length - 1
                        Me.Listreparts.Items.Add(brokenitem(i))
                    Next

                End While
            Else
                MsgBox("No record of workshop items", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub sitecode()

        'enter the sitecode from support for the request part for support task
        Dim cmd As SqlCommand = New SqlCommand("select sitecode from support where  f_Re_date is null  And not parts is null ", conn)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.DDLsitecode.Items.Add(rdr("sitecode"))
                End While
            Else
                MsgBox("No record of complaint in the database ", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            sitecode()
        End If

    End Sub
End Class
