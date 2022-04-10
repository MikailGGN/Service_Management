Imports System.Data.SqlClient
Partial Class feedback
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim techs() As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack = True Then
            loadsup()
        End If
    End Sub
    Sub loadsup()

        Dim cmd As SqlCommand = New SqlCommand("select distinct techid from qcontrol where endjob between @endjob - 60 and @endjob", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@endjob"
        param.Value = Date.Now
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader

            If rdr.HasRows = True Then
                While rdr.Read = True

                    Me.DDlsupvsr.Items.Add(rdr("techid"))

                End While
            Else
                MsgBox("no record of technician on quality assurance", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()

            End If
        End Try
    End Sub


    'get the list of the visited sites
    Sub sitelist()
        Dim cmd As SqlCommand = New SqlCommand("select sitecodes  from qcontrol where techid = @techid", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techid"
        param.Value = Me.DDlsupvsr.SelectedItem.Text
        cmd.Parameters.Add(param)

        Try
            conn.Open()

            rdr = cmd.ExecuteReader

            If rdr.HasRows = True Then
                While rdr.Read = True
                    Dim itembreak As String = rdr("sitecodes")
                    Dim brokenitem() As String

                    brokenitem = (Microsoft.VisualBasic.Split(itembreak.ToString, ","))
                    For i As Int64 = 1 To brokenitem.Length - 1
                        Me.Listcode.Items.Add(brokenitem(i))
                    Next


                End While
            Else
                MsgBox("No record on sites certified okay", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally

            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()

            End If
        End Try
    End Sub

    'list the technicians
    Sub techload()



        Dim cmd As SqlCommand = New SqlCommand(" select techid from techjob where jobtype = @jobtype and sitecode = @sitecode", conn)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@jobtype"
        param1.Value = "implementation"
        cmd.Parameters.Add(param1)

        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@sitecode"
        param2.Value = Me.Listcode.SelectedItem.Text
        cmd.Parameters.Add(param2)

        Try
            conn.Open()

            rdr = cmd.ExecuteReader

            If rdr.HasRows = True Then

                While rdr.Read = True

                    techs = rdr("techid")
                    Me.Label1.Text = "This site was implemented by " & techs(0) & " , " & techs(1)

                End While

            Else
                MsgBox(" No record of Technician on the provided sitecode", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)

        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()

            End If
        End Try

    End Sub

    'add remark to the site
    Sub addmark()
        For x As Int16 = 0 To Me.techs.Length - 1
            Dim cmd As SqlCommand = New SqlCommand("insert into feedback techid, sitecode , remark , cdate values @techid, @sitecode , @remark , @cdate", conn)

            cmd.Parameters.AddWithValue("@techid", techs(x))
            cmd.Parameters.AddWithValue("@sitecode", Me.Listcode.SelectedItem.Text)
            cmd.Parameters.AddWithValue("@remark", Me.DDLrmk.SelectedItem.Text)
            cmd.Parameters.AddWithValue("@cdate", Date.Now)

            Try
                conn.Open()
                If cmd.ExecuteNonQuery > 0 Then

                    MsgBox(techs(x) & " job Assurance information has been collected", MsgBoxStyle.Information, "Inlaks Computers")
                Else
                    MsgBox("An error has occured, Please try again", MsgBoxStyle.Exclamation, "Inlaks Computers")

                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                If Not conn.State = Data.ConnectionState.Closed Then
                    conn.Close()
                End If
            End Try

        Next

        Me.DDlsupvsr.ClearSelection()
        Me.Listcode.Items.Remove(Me.Listcode.SelectedItem.Text)
        Me.Label1.Text = ""
        Me.DDLrmk.SelectedIndex = 0

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Me.DDlsupvsr.SelectedIndex = 0
        Me.Listcode.Items.Clear()
        Me.Label1.Text = ""
        Me.DDLrmk.SelectedIndex = 0

    End Sub

    Protected Sub DDlsupvsr_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDlsupvsr.SelectedIndexChanged

        sitelist()
    End Sub

    Protected Sub Listcode_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Listcode.SelectedIndexChanged

        techload()
    End Sub

    Protected Sub DDLrmk_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLrmk.SelectedIndexChanged

        addmark()

    End Sub
End Class
