Imports System.Drawing.Printing
Imports System.Data.SqlClient
Imports System.Threading
Partial Class suprint
    Inherits System.Web.UI.Page

    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim projet As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then


            Dim cmd As SqlCommand = New SqlCommand("select techid from techinfo ", conn)

            Try
                conn.Open()
                rdr = cmd.ExecuteReader
                While rdr.Read() = True
                    Me.ddltech.Items.Add(rdr("techid"))

                End While
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                If Not conn.State = Data.ConnectionState.Closed Then
                    conn.Close()
                End If
            End Try
        End If
    End Sub
    Sub loadclient()
        ' address()
        contact()
        Dim cmd As SqlCommand = New SqlCommand("select client from regpro where projectname =@projectname ", conn)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = projet
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True
                Me.Txtclient.Text = (rdr("client"))

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub
    Sub loadsite()
        'and comment is Null "
        Dim cmd As SqlCommand = New SqlCommand(" select sitecode from support where f_Re_date is Null and techid = @techid ", conn)


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@techid"
        param1.Value = Me.ddltech.SelectedItem.Text
        cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader

            If rdr.HasRows = True Then


                While rdr.Read() = True
                    Me.ddlsite.Items.Add(rdr("sitecode").ToString)


                End While

            Else

                MsgBox("An error has occurred", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub ddlsite_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlsite.SelectedIndexChanged

        loadclient()

    End Sub

    Protected Sub ddltech_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddltech.SelectedIndexChanged
        clear()
        tecname()

        Me.ddlsite.Items.Clear()
        Me.ddlsite.Items.Add("")

        loadsite()

    End Sub
    Sub tecname()

        Dim cmd As SqlCommand = New SqlCommand("select sname,fname from techinfo where techid = @techid ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@techid"
        param.Value = Me.ddltech.SelectedItem.Text

        cmd.Parameters.Add(param)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True
                Me.Txtname.Text = (rdr("sname") & " " & rdr("fname"))


            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try


    End Sub

    Sub contact()

        'and  clienttown= @clienttown 
        Dim cmd As SqlCommand = New SqlCommand("select clientaddress , clienttown , clientstate , projectname , contactno , contact  from siteinfo where sitecode = @sitecode  and sitestatus = @sitestatus ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitecode"
        param.Value = Me.ddlsite.SelectedItem.Text

        cmd.Parameters.Add(param)

        ' Dim param1 As SqlParameter = New SqlParameter
        'param1.ParameterName = "@clienttown"
        'param1.Value = Me.Txttown.Text

        'cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@sitestatus"
        param2.Value = "approved"

        cmd.Parameters.Add(param2)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True
                Me.Txtcontactname.Text = rdr("contact")
                Me.Txtphone.Text = rdr("contactno")
                projet = rdr("projectname")
                Me.Txtaddress.Text = rdr("clientaddress")
                Me.Txttown.Text = (rdr("clienttown") & ", " & rdr("clientstate"))
                Me.Txtpurpose.Text = "Support"

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try


    End Sub
    Sub clear()
        Me.Txtcontactname.Text = ""
        Me.Txtphone.Text = ""
        projet = ""
        Me.Txtaddress.Text = ""
        Me.Txttown.Text = ""
        Me.Txtpurpose.Text = ""
    End Sub
    Protected Sub Btnprint_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnprint.Click

        Dim THREAD1 As New Thread(AddressOf pnt)
        THREAD1.Start()

        THREAD1.Priority = ThreadPriority.Highest

        Dim THREAD2 As New Thread(AddressOf showd)
        If THREAD1.ThreadState = ThreadState.Stopped Then

            THREAD2.Start()
            THREAD2.Priority = ThreadPriority.Lowest
        End If


    End Sub
    Sub pnt()
        Btnprint.Visible = False
        Me.Label1.Visible = False
        Me.ddltech.Visible = False
        Me.ddlsite.Visible = False
        Me.Label2.Visible = False
        Me.HyperLink1.Visible = False



        Dim pd As PrintDocument = New PrintDocument


        pd.DocumentName = "Technician Assigned To Survey Site"

        Try
            pd.Print()


        Catch ex As Exception
            MsgBox("An error occurred while printing", _
                ex.ToString())
        End Try

    End Sub
    Sub showd()

        Btnprint.Visible = True
        Me.Label1.Visible = True
        Me.ddltech.Visible = True
        Me.ddlsite.Visible = True
        Me.Label2.Visible = True
        Me.HyperLink1.Visible = True

    End Sub
End Class
