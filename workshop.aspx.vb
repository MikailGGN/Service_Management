Imports System.Data.SqlClient
Partial Class workshop
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Protected Sub Btnmove_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnmove.Click
        INTOWOKS()
    End Sub
    Sub INTOWOKS()
        Dim code As String = Me.DDLsite.SelectedItem.Text & Left(Date.Now.DayOfWeek.ToString, 2)

        Dim CMD As SqlCommand = New SqlCommand("INSERT INTO wtosite (sitecode, equipno , eqname ,purpose ,mdirectn ,date , refno ) values" & _
       "(@sitecode, @equipno , @eqname ,@purpose ,@mdirectn ,@date , @refno )", conn)

        CMD.Parameters.AddWithValue("@sitecode", Me.DDLsite.SelectedItem.Text)
        CMD.Parameters.AddWithValue("@equipno", Me.Txtequipno.Text)
        CMD.Parameters.AddWithValue("@eqname", Me.Txtdesc.Text)
        CMD.Parameters.AddWithValue("@purpose", Me.Txtpurps.Text)
        CMD.Parameters.AddWithValue("@mdirectn", Me.DDLdirect.SelectedItem.Text)
        CMD.Parameters.AddWithValue("@date", Date.Now)
        CMD.Parameters.AddWithValue("@refno", code)

        Try
            conn.Open()
            If CMD.ExecuteNonQuery > 0 Then
                MsgBox("Equipment information has been collected", MsgBoxStyle.Information, "Inlaks Computers")
                ' el()
            End If
        Catch ex As Exception

        End Try

    End Sub
End Class
