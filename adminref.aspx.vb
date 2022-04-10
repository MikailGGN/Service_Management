Imports System.Data.SqlClient
Partial Class adminref
    Inherits System.Web.UI.Page

    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            loadpro()
            loadpro1()
        End If
    End Sub
    Sub loadpro()
        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro where completed = @completed", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@completed"
        param.Value = "r"

        cmd.Parameters.Add(param)

        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read)

                    Me.DDLproname.Items.Add(rdr("projectname"))
                    'Dim x As Int16
                    'Me.DDLpname.Items.Add(Me.DDLproname.Items.Item(x))
                    'x += 1
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
    Sub loadpro1()
        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro where completed = @completed", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@completed"
        param.Value = "r"

        cmd.Parameters.Add(param)

        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read)

                    Me.DDLpname.Items.Add(rdr("projectname"))
                    'Dim x As Int16
                    'Me.DDLpname.Items.Add(Me.DDLproname.Items.Item(x))
                    'x += 1
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
    Sub dsite()
        Dim cmd As SqlCommand = New SqlCommand("select sitecode from materials where projectname = @projectname and dstatus = @dstatus ", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.DDLproname.SelectedItem.Text

        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@dstatus"
        param1.Value = "delivered"

        cmd.Parameters.Add(param1)

        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then


                While (rdr.Read)

                    Me.DDLsite.Items.Add(rdr("sitecode"))


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

    Protected Sub DDLproname_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLproname.SelectedIndexChanged
        Me.DDLsite.Items.Clear()
        dsite()
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub
End Class
