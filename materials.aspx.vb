Imports System.Data.SqlClient
Partial Class materials
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

        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro where completed = @completed ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@completed"
        param.Value = "r"

        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True


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
    Sub loadpro1()

        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro where completed = @completed ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@completed"
        param.Value = "r"

        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True


                Me.DropDownList2.Items.Add(rdr("projectname"))


            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try



    End Sub



  



    Protected Sub DDLproname_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLproname.SelectedIndexChanged
        counta()

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        counta()
    End Sub
    Sub counta()
        Dim cmd As SqlCommand = New SqlCommand("select count(*) as expr1 from materials where dstatus = @dstatus and projectname = @projectname ", conn)
        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@dstatus"
        param.Value = Me.DropDownList1.SelectedItem.Text


        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproname.SelectedItem.Text


        cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True


                Me.Label2.Text = (rdr("expr1")).ToString



            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
End Class
