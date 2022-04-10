
Imports System.Net.Mail.SmtpClient

Imports System.Net.Mail
Imports System.Data.SqlClient
Partial Class Sup_bill_mail
    Inherits System.Web.UI.Page
    'Inherits System.Web.UI.WebControls.MailMessageEventArgs
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\datasecure.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)

    Dim urole As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            loadpages()
            checkrole()
            pages()
            loadpro()
        End If
    End Sub
    Sub loadpro()
        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro ", conn)

        Dim rdr As SqlDataReader
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                Me.DDLclient.Items.Add(rdr("projectname"))


            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub mailclient()
        'to mail the client
        Dim dr As String = Me.FILEATTACH.FileName

        Dim m As MailMessage = New MailMessage()
        If Me.Txtcc.Text = "" And dr = "" Then
            m.From = New MailAddress("Customerservice@inlakscomputers.com", "INLAKS COMPUTERS ")
            m.To.Add(New MailAddress(Me.Txtto.Text, Me.DDLclient.SelectedItem.Text))
            m.Subject = Me.TxtSUB.Text
            m.Body = Me.TXTmbody.Text

        ElseIf Me.Txtcc.Text = "" Then

            m.From = New MailAddress("Customerservice@inlakscomputers.com", "INLAKS COMPUTERS ")
            m.To.Add(New MailAddress(Me.Txtto.Text, Me.DDLclient.SelectedItem.Text))
            m.Subject = Me.TxtSUB.Text
            m.Body = Me.TXTmbody.Text

            m.Attachments.Add(New Attachment(dr))
        Else
            m.From = New MailAddress("Customerservice@inlakscomputers.com", "INLAKS COMPUTERS ")
            m.To.Add(New MailAddress(Me.Txtto.Text, Me.DDLclient.SelectedItem.Text))
            m.To.Add(New MailAddress(Me.Txtcc.Text))

            m.Subject = Me.TxtSUB.Text
            m.Body = Me.TXTmbody.Text
            m.Attachments.Add(New Attachment(dr))


        End If
        Dim client As SmtpClient = New SmtpClient("smtp.inlakscomputers.com")
        client.Send(m)
        If m.DeliveryNotificationOptions = DeliveryNotificationOptions.OnSuccess Then

            MsgBox("Your mail has been delivered", MsgBoxStyle.Information, "Inlaks Computers")
        Else
            MsgBox("Your mail is still pending ", MsgBoxStyle.Critical, "Inlaks Computers")

        End If

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        'MsgBox(Me.FILEATTACH.FileName.ToString)
        mailclient()
        Me.Txtcc.Text = ""
        Me.TXTmbody.Text = ""
        Me.TxtSUB.Text = ""
        Me.Txtto.Text = ""


    End Sub
    Sub loadpages()
        Dim addpage As String

        Dim constrg As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\datasecure.mdf;Integrated Security=True;User Instance=True"
        Dim con As New SqlConnection(constrg)
        Dim rd As SqlDataReader


        Dim cmd As SqlCommand = New SqlCommand("select newpage from otheraccess where username =@username ", con)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@username"
        param.Value = CType(Session.Item("username"), String)
        cmd.Parameters.Add(param)



        Try
            con.Open()
            rd = cmd.ExecuteReader





            While rd.Read = True
                addpage = (rd("newpage"))
                If addpage.ToLower = "nopages," Then

                    Me.Menu1.Items.Item(0).ChildItems.Clear()
                Else


                    Dim dpage As String() = (Split(addpage, ","))
                    For x As Int16 = 0 To Me.Menu1.Items.Item(0).ChildItems.Count - 1



                        If Not Me.Menu1.Items.Item(0).ChildItems.Item(x).Text = dpage(x) Then

                            Me.Menu1.Items.Item(0).ChildItems.Item(x).Text = ""

                        End If
                    Next
                End If



            End While


        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not con.State = Data.ConnectionState.Closed Then
                con.Close()
            End If
        End Try

    End Sub
    Sub checkrole()

        Dim drole As String

        Dim constrg As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\datasecure.mdf;Integrated Security=True;User Instance=True"
        Dim con As New SqlConnection(constrg)
        Dim rd As SqlDataReader


        Dim cmd As SqlCommand = New SqlCommand("select role from [user] where username =@username ", con)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@username"
        param.Value = CType(Session.Item("username"), String)
        cmd.Parameters.Add(param)
        Try
            con.Open()
            rd = cmd.ExecuteReader

            While rd.Read = True

                drole = rd("role")
                'MsgBox(drole)
                If drole = "support" Then

                    Me.ImageButton1.Enabled = False
                    Me.ImageButton3.Enabled = False

                    Me.ImageButton2.Enabled = False
                    Me.ImageButton5.Enabled = False

                End If
            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not con.State = Data.ConnectionState.Closed Then
                con.Close()
            End If
        End Try
    End Sub
    Sub pages()
        getrole()
        If Not urole = "support" Then
            Me.Menu3.Items.Item(0).ChildItems.Clear()
        End If
    End Sub
    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        getrole()
        'to return to defualt home page
        If urole = "Administrator" Then

            Me.LinkButton1.PostBackUrl = "~/admin.aspx"


        ElseIf urole = "implementation" Then


            Me.LinkButton1.PostBackUrl = "~/implementation.aspx"

        ElseIf urole = "support" Then

            Me.LinkButton1.PostBackUrl = "~/support_home.aspx"

        ElseIf urole = "workshop" Then
            Me.LinkButton1.PostBackUrl = "~/store_workshop.aspx"


        ElseIf urole = "Equipment Handling" Then
            Me.LinkButton1.PostBackUrl = "~/materials.aspx"


        ElseIf urole = "General Operations" Then

            Me.LinkButton1.PostBackUrl = "~\qc_assign.aspx"
        Else
            MsgBox("This user role is not provided " & vbCrLf & "Contact the administrator", MsgBoxStyle.Exclamation, "Inlaks Computers")
        End If

    End Sub

    Sub getrole()
        'to get user's role to load menu pages
        Dim constrg As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\datasecure.mdf;Integrated Security=True;User Instance=True"
        Dim con As New SqlConnection(constrg)
        Dim rd As SqlDataReader



        Dim cmd As SqlCommand = New SqlCommand("select role from [user] where username =@username ", con)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@username"
        param.Value = CType(Session.Item("username"), String)
        cmd.Parameters.Add(param)



        Try
            con.Open()
            rd = cmd.ExecuteReader





            While rd.Read = True
                urole = (rd("role"))


            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not con.State = Data.ConnectionState.Closed Then
                con.Close()
            End If
        End Try

    End Sub
End Class
