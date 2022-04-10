Option Strict Off

Imports System.Data.SqlClient
Imports System.Array

Partial Class siteregistration
    Inherits System.Web.UI.Page

    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim i As Integer
    Dim sitecount As Integer
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            loadpro()
            loadpages()
        End If
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

    Sub loadcount()
        'collecting and incrementing the site serial no by the state
        Dim cmd As SqlCommand = New SqlCommand("select sitenum from siteinfo where clientstate = @clientstate and projectname = @projectname ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@clientstate"
        param.Value = Me.ddlstate.SelectedItem.Text
        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.ddlpname.SelectedItem.Text
        cmd.Parameters.Add(param1)

        ' creating an array cnt to collect the sitenum information
        Dim x As Integer
        Dim cnt(x) As Integer

        Dim j As Int16

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then

                While rdr.Read() = True

                    cnt(x) = (rdr(x))
                    j += 1

                    'MsgBox(j.ToString)


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

        sitecount = j + 1
        '  MsgBox("this is sitecount" & sitecount.ToString)
        'MsgBox(j.ToString )

    End Sub
   

    Sub loadpro()
        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro ", conn)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                Me.ddlpname.Items.Add(rdr("projectname"))


            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub loadstate()
        Dim cmd As SqlCommand = New SqlCommand("select state from stateinfo ", conn)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read() = True

                Me.ddlstate.Items.Add(rdr("state"))


            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub
    Protected Sub ddlpname_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlpname.SelectedIndexChanged
        Me.ddlstate.ClearSelection()
        Me.Txtprodesc.Visible = True
        loaddesc()
        loadstate()


    End Sub
    Sub loaddesc()



        Dim cmd As SqlCommand = New SqlCommand("select projectdesc from regpro  where projectname = @projectname", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@projectname"
        param.Value = Me.ddlpname.SelectedItem.Text

        cmd.Parameters.Add(param)

        Try
            conn.Open()

            rdr = cmd.ExecuteReader

            While (rdr.Read() = True)

                Me.Txtprodesc.Text = rdr("projectdesc").ToString

            End While
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally

            If Not (conn Is Nothing) Then
                conn.Close()
            End If

        End Try

    End Sub

    Sub siteinfo()
        Dim cmd As SqlCommand = New SqlCommand("insert into siteinfo ( clientstate,clientaddress, clienttown,projectname,contact1,contactno1,contactno2,contact2, contactn1, contactn2,  sitestatus, sitenum )" & _
               " values( @clientstate,@clientaddress, @clienttown,@projectname,@contact1,@contactno1,@contactno2,@contact2, @contactn1, @contactn2, @sitestatus, @sitenum)", conn)

       
        cmd.Parameters.AddWithValue("@clientstate", Me.DDLstate.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@clientaddress", Me.Txtsiteadd.Text)
        cmd.Parameters.AddWithValue("@clienttown", Me.Txttown.Text)
        cmd.Parameters.AddWithValue("@projectname", Me.ddlpname.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@contact1", Me.Txtcontname.Text)
        cmd.Parameters.AddWithValue("@contactno1", Me.Txtcontfone.Text)
        cmd.Parameters.AddWithValue("@contactno2", Me.Txtcontfone2.Text)
        cmd.Parameters.AddWithValue("@contact2", Me.Txtcontname2.Text)
        cmd.Parameters.AddWithValue("@contactn1", Me.Txtcfone1.Text)
        cmd.Parameters.AddWithValue("@contactn2", Me.Txtcfone2.Text)
        cmd.Parameters.AddWithValue("@sitestatus", "r")
        cmd.Parameters.AddWithValue("@sitenum", sitecount)
        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then

                MsgBox("This site has been successfully registered" & _
                                "Click 'YES' to add more sites to this project." & _
                "Click 'NO' to refresh page for another project ", MsgBoxStyle.YesNo, "INLAKS COMPUTERS")
                If Microsoft.VisualBasic.MsgBoxResult.Yes Then
                    entermore()
                    Me.ddlstate.Focus()


                    Me.Label2.Text = Val(Me.Label2.Text) + 1

                    Me.Label1.Text = "N0. of registratered sites :" & Me.Label2.Text

                ElseIf Microsoft.VisualBasic.MsgBoxResult.No Then
                    '   Me.DDLproname.Focus()
                    '  Me.DDLproname.SelectedItem.Text = ""
                    Me.Txtprodesc.Text = ""
                    Me.Label1.Text = ""
                    entermore()
                    Me.ddlpname.ClearSelection()
                    Me.ddlstate.ClearSelection()
                    Me.Txtprodesc.Text = ""
                End If
            Else
                MsgBox("An error has occured site serial N0. was not generated", MsgBoxStyle.Information, "Inlaks Computers")


            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub


   
    Sub entermore()
        Me.ddlstate.ClearSelection()
        Me.Txtsiteadd.Text = ""
        Me.Txttown.Text = ""
        Me.Txtcontname.Text = ""
        Me.Txtcontfone.Text = ""
        Me.Txtcontfone2.Text = ""
        Me.Txtcontname2.Text = ""
        Me.Txtcfone1.Text = ""
        Me.Txtcfone2.Text = ""

    End Sub

    Protected Sub Btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsub.Click

        loadcount()
        '  MsgBox("this is sitecount" & sitecount.ToString)

        siteinfo()

    End Sub

    
End Class
