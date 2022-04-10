Imports System.Data.SqlClient
Imports System.Drawing.Printing
Imports System.Threading
Partial Class requsition
    Inherits System.Web.UI.Page

    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim sstate, saddress, stown As String
    Dim itembreak As String
    Dim brokenitem As String()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            loadsite()
        End If
    End Sub
    Sub loadsite()
        Dim cmd As SqlCommand = New SqlCommand("select sitecode from materials where dstatus = @dstatus ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@dstatus"
        param.Value = "request"

        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True
                Me.DDLsiteid.Items.Add(rdr("sitecode"))


            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub
    Sub loadmaterial()

        'load address
        Dim cmd As SqlCommand = New SqlCommand("select items from materials where dstatus= @dstatus and sitecode =@sitecode ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitecode"
        param.Value = Me.DDLsiteid.SelectedItem.Text

        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@dstatus"
        param1.Value = "request"

        cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True

                Me.itembreak = rdr("items")

                brokenitem = (Microsoft.VisualBasic.Split(Me.itembreak.ToString, ","))
                For i As Int64 = 1 To Me.brokenitem.Length - 1
                    Me.BulletedList1.Items.Add(Me.brokenitem(i))

                Next
            End While

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub DDLsiteid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLsiteid.SelectedIndexChanged
        loadmaterial()
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
         Me.HyperLink1.Visible = True

    End Sub
End Class
