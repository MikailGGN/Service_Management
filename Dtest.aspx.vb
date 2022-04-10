
Partial Class Dtest
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub Btnrgn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnrgn.Click

        If DDLregion.SelectedItem.Text.ToLower = "sw" Then
            'Me.Txtsw = Me.Txtrate.Text

        ElseIf DDLregion.SelectedItem.Text.ToLower = "ss" Then
            'Me.Txtss = Me.Txtrate.Text

        ElseIf DDLregion.SelectedItem.Text.ToLower = "se" Then
            'Me.Txtse = Me.Txtrate.Text

        ElseIf DDLregion.SelectedItem.Text.ToLower = "nc" Then
            ' Me.Txtnc = Me.Txtrate.Text

        ElseIf DDLregion.SelectedItem.Text.ToLower = "ne" Then
            '  Me.Txtne = Me.Txtrate.Text

        ElseIf DDLregion.SelectedItem.Text.ToLower = "nw" Then
            '   Me.Txtnw = Me.Txtrate.Text

        End If
    End Sub

    Sub xzat()


        'Dim cmd As SqlCommand = New SqlCommand("select state , region from stateinfo", conn)

        Try
            'conn.Open()
            'rdr = cmd.ExecuteReader

            'While rdr.Read = True
            '  std.Add(rdr("state"))
            '   rgn.Add(rdr("region"))
            'End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            'If conn.State = Data.ConnectionState.Open Then
            '   conn.Close()

            'End If
        End Try
        'For i As Int16 = 0 To std.Count - 1
        'str.Add(std(i).ToString)
        'Next

    End Sub
    Sub genit()

        'For i As Integer = 0 To str.Count - 1
        'For j As Integer = 0 To std.Count - 1
        'Me.TextBox2.Text = Me.str(i).ToString
        'Me.TextBox1.Text = Me.std(j).ToString


        'Thread.CurrentThread.Abort()

        ' MsgBox(Me.Txtncost.Text & "+" & Me.TextBox2.Text & "+" & Me.TextBox1.Text)


        'Next

        'Next
    End Sub


    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click

        'THREAD1.Start()

        'THREAD1.Priority = ThreadPriority.Highest


        ' THREAD2.Priority = ThreadPriority.Lowest

    End Sub


    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click



    End Sub

End Class
