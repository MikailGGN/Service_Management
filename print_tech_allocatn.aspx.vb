Imports System.Drawing.Printing
Imports System.Data.SqlClient
Imports System.Threading
Imports System.IO
Imports System.Drawing


Partial Class print_tech_allocatn
    Inherits System.Web.UI.Page

    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim projet As String

    Private printFont As Font
    Private streamToPrint As StreamReader
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
        address()
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
        Dim cmd As SqlCommand = New SqlCommand("select clientaddress from techjob where jobtype = @jobtype and comment is Null ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "survey"
        cmd.Parameters.Add(param)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True
                Me.ddlsite.Items.Add(rdr("clientaddress"))


            End While
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
        tecname()
        
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
    Sub address()

        Dim cmd As SqlCommand = New SqlCommand("select clientaddress,clienttown,location  from techjob where clientaddress = @clientaddress and techid = @techid ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@clientaddress"
        param.Value = Me.ddlsite.SelectedItem.Text.Trim

        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@techid"
        param1.Value = Me.ddltech.SelectedItem.Text.Trim

        cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True
                Me.Txtaddress.Text = rdr("clientaddress")
                Me.Txttown.Text = (rdr("clienttown") & ", " & rdr("location"))
                 Me.Txtpurpose.Text = "Survey"

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
        'address()
        'and  clienttown= @clienttown 
        Dim cmd As SqlCommand = New SqlCommand("select projectname , contactno,contact  from siteinfo where clientaddress = @clientaddress  and sitestatus = @sitestatus ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@clientaddress"
        param.Value = Me.ddlsite.SelectedItem.Text

        cmd.Parameters.Add(param)

        ' Dim param1 As SqlParameter = New SqlParameter
        'param1.ParameterName = "@clienttown"
        'param1.Value = Me.Txttown.Text

        'cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@sitestatus"
        param2.Value = "survey"

        cmd.Parameters.Add(param2)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True
                 Me.Txtcontactname.Text = rdr("contact")
                Me.Txtphone.Text = rdr("contactno")
                projet = rdr("projectname")

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try


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
        'Btnprint.Visible = False
        'Me.Label1.Visible = False
        'Me.ddltech.Visible = False
        'Me.ddlsite.Visible = False
        'Me.Label2.Visible = False
        'Me.HyperLink1.Visible = False


        printFont = New Font("Arial", 10)
        Dim pd As PrintDocument = New PrintDocument


        pd.DocumentName = "Survey Site"
        streamToPrint = New StreamReader("")
        Try
            AddHandler (pd.PrintPage), AddressOf Me.pd_PrintPage
            pd.Print()


        Catch ex As Exception
            MsgBox("An error occurred while printing", _
                ex.ToString())
        End Try

    End Sub

    Private Sub pd_PrintPage(ByVal sender As Object, ByVal ev As PrintPageEventArgs)
        Dim linesPerPage As Single = 0
        Dim yPos As Single = 0
        Dim count As Integer = 0
        Dim leftMargin As Single = ev.MarginBounds.Left
        Dim topMargin As Single = ev.MarginBounds.Top
        Dim line As String = Nothing

        ' Calculate the number of lines per page.
        linesPerPage = ev.MarginBounds.Height / printFont.GetHeight(ev.Graphics)

        ' Print each line of the file.
        While count < linesPerPage
            line = streamToPrint.ReadLine()
            If line Is Nothing Then
                Exit While
            End If
            yPos = topMargin + count * printFont.GetHeight(ev.Graphics)
            ev.Graphics.DrawString(line, printFont, Brushes.Black, leftMargin, yPos, New StringFormat())
            count += 1
        End While

        ' If more lines exist, print another page.
        If (line IsNot Nothing) Then
            ev.HasMorePages = True
        Else
            ev.HasMorePages = False
        End If
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
