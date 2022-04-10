Imports System.Data.SqlClient
Partial Class Deployment
    Inherits System.Web.UI.Page

    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim sstate, saddress, stown As String
    Dim itembreak As String
    Dim brokenitem As String()

    Structure group

        Dim coll As String
    End Structure
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            readpro()
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
    Sub readpro()
        'load the project from material table

        Dim cmd As SqlCommand = New SqlCommand("select projectname from regpro where completed =@completed", conn)

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

    Sub inputdata()
        'insert the material into the database

        Dim cmd As SqlCommand = New SqlCommand("update materials set items=@items, ddate=@ddate, dstatus=@dstatus " & _
        " where (projectname=@original_projectname) and ( sitecode=@original_sitecode)", conn)


        cmd.Parameters.AddWithValue("@original_projectname", Me.DDLproname.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@original_sitecode", Me.DDLsiteid.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@items", Me.Txtitems.Text)
        cmd.Parameters.AddWithValue("@ddate", Date.Now)
        cmd.Parameters.AddWithValue("@dstatus", "deployed")

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The materials has been released for Deployment", MsgBoxStyle.Information, " INLAKS COMPUTERS")
                    clear()

            Else
            MsgBox("AN ERROR AS OCCURED," & _
            "PLEASE CHECK THE INFORMATION AND TRY AGAIN", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub DDLsiteid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLsiteid.SelectedIndexChanged
        laddress()
        loadmaterial()
    End Sub
    Sub loadmaterial()

        'load items
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
                    Me.Listrequest.Items.Add(Me.brokenitem(i))
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
    Sub laddress()

        'load address
        Dim cmd As SqlCommand = New SqlCommand("select clientaddress, clienttown, clientstate from siteinfo where sitecode= @sitecode", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitecode"
        param.Value = Me.DDLsiteid.SelectedItem.Text

        cmd.Parameters.Add(param)


        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            While rdr.Read = True

                Me.saddress = rdr("clientaddress")
                Me.stown = rdr("clienttown")
                Me.sstate = rdr("clientstate")

                Me.Txtadd.Text = Me.saddress & vbCrLf & Me.stown & vbCrLf & Me.sstate

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

        Dim cmd As SqlCommand = New SqlCommand("select sitecode from materials where dstatus = @dstatus intersect select sitecode from survey where projectname = @projectname ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@dstatus"
        param.Value = "request"

        cmd.Parameters.Add(param)

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@projectname"
        param1.Value = Me.DDLproname.SelectedItem.Text

        cmd.Parameters.Add(param1)


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

    Protected Sub Btnpass_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnpass.Click
        Me.Listrequest.SelectedIndex = 0
        If Not Me.Listrequest.SelectedItem.Text = "" Then

            Me.Listdeployed.Items.Add(Me.Listrequest.SelectedItem.Text)
            Me.Listrequest.Items.Remove(Me.Listrequest.SelectedItem.Text)
        End If
        Me.Listdeployed.SelectedIndex = 0
    End Sub

    Protected Sub Btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnadd.Click

        'Me.txtdeployed.Text = Me.Txtother.Text
        Dim otherm As String() = Split(Me.Txtother.Text, ",")
        For x As Integer = 0 To otherm.Length - 1
            Me.Listdeployed.Items.Add(otherm(x))
        Next

    End Sub

    Protected Sub Btnremove_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnremove.Click

        If Me.Listdeployed.SelectedIndex = 0 Then
            MsgBox("The first item on the list is will be removed", MsgBoxStyle.Exclamation, "Inlaks Computers")
            Me.Listdeployed.Items.Remove(Me.Listdeployed.SelectedItem.Text)
        Else
            Me.Listdeployed.Items.Remove(Me.Listdeployed.SelectedItem.Text)
        End If

    End Sub

    Protected Sub Btndeploy_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btndeploy.Click
        deploy()
        inputdata()
        Me.DDLsiteid.Items.Remove(Me.DDLsiteid.SelectedItem.Text)
        Me.DDLsiteid.SelectedIndex = 0
        Me.DDLproname.SelectedIndex = 0
        Me.Listdeployed.Items.Clear()

    End Sub
    Sub deploy()
        For i As Int16 = 0 To Me.Listdeployed.Items.Count - 1
            Dim litem(i) As group

            litem(i).coll = Me.Listdeployed.Items.Item(i).Text
            Me.Txtitems.Text = Me.Txtitems.Text & "," & litem(i).coll

        Next

    End Sub
    Sub clear()
        Me.DDLsiteid.ClearSelection()
        Me.Txtadd.Text = ""
        Me.Listrequest.ClearSelection()
        Me.Listdeployed.ClearSelection()
        Me.Txtother.Text = ""
    End Sub

    Protected Sub Btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnreset.Click
        clear()
    End Sub

   
   
End Class
