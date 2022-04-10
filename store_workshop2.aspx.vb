Imports System.Data.SqlClient

Partial Class store_workshop
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim replaced As String
    Dim thepart As String
    Dim urole As String
    
    Structure group

        Dim coll As String
    End Structure
    Sub equipmov()

        Dim cmd As SqlCommand = New SqlCommand("insert into wtosite ( equipno , eqname , sitecode ,date , purpose , mdirectn )" & _
        " values ( @equipno , @eqname , @sitecode ,@date , @purpose , @mdirectn ) ", conn)

        cmd.Parameters.AddWithValue("@equipno", Me.Txtequipno.Text)
        cmd.Parameters.AddWithValue("@eqname", Me.Txtdesc.Text)
        cmd.Parameters.AddWithValue("@sitecode", Me.DDLsite.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@date", Date.Now)
        cmd.Parameters.AddWithValue("@purpose", Me.Txtpurps.Text)
        cmd.Parameters.AddWithValue("@mdirectn", Me.DDLdirect.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@refno", Me.DDLsite.SelectedItem.Text & "\" & Date.Now.ToShortDateString.ToString)

        Try
            conn.Open()

            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("Workshop Reference N0:" & Me.DDLsite.SelectedItem.Text & "/" & Date.Now.ToShortDateString.ToString, MsgBoxStyle.Information, "Inlaks Computers")
                MsgBox("Information about the movement of" & Me.Txtdesc.Text & _
                Me.DDLdirect.SelectedItem.Text & " has been collected", MsgBoxStyle.Information, "Inlaks Computers")

            Else
                MsgBox("An error has occurred. Please check your inputs", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If
        End Try

    End Sub
    Sub loadsite()
        'between @f_Re_date -5  and
        Dim cmd As SqlCommand = New SqlCommand("select sitecode from support where f_Re_date is null ", conn)

        'Dim param As SqlParameter = New SqlParameter
        'param.ParameterName = "@f_Re_date"
        'param.Value = Date.Today
        'cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.DDLsite.Items.Add(rdr("sitecode"))
                End While
            Else
                MsgBox("There has been no support call in past five days. Hence the site code available", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()

            End If
        End Try
    End Sub
    Sub clequip()
        Me.DDLsite.Items.Remove(Me.DDLsite.SelectedItem.Text)
        Me.DDLsite.SelectedItem.Text = ""
        Me.Txtequipno.Text = ""
        Me.Txtdesc.Text = ""
        Me.Txtpurps.Text = ""
        Me.DDLdirect.SelectedIndex = 0

    End Sub

    Protected Sub Btnmove_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnmove.Click
        If Not Me.DDLsite.SelectedIndex = 0 Then


            equipmov()
            clequip()

            loadmachine2()
            loadmachin()

        End If



    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            inputitem()
            loadmachin()
            sitecode()
            loadmachine2()
            loadsite()
            loadpages()
            
        End If
    End Sub

    Protected Sub Btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnadd.Click
        If Me.Txticno.Text = "" Or Me.Txtitem.Text = "" Or Me.Txtqty.Text = "" Then
            MsgBox(" One of the parameter for invetory is empty", MsgBoxStyle.Exclamation, "Inlaks Computers")

        Else

            additem()
            Me.Txticno.Text = ""
            Me.Txtitem.Text = ""
            Me.Txtqty.Text = ""
            inputitem()
        End If

    End Sub
    Sub additem()
        Dim cmd As SqlCommand = New SqlCommand("insert into wkstock (itemno, items, qty) values (@itemno ,@items ,@qty)", conn)

        cmd.Parameters.AddWithValue("@itemno", Me.Txticno.Text)
        cmd.Parameters.AddWithValue("@items", Me.Txtitem.Text)
        cmd.Parameters.AddWithValue("@qty", Val(Me.Txtqty.Text))

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The Item has Enrolled", MsgBoxStyle.Information, "INLAKS COMPUTERS")
            Else
                MsgBox("An error has occurred. Try again! ", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub


    Protected Sub Btneqused_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btneqused.Click
        'input the repair part information

        enterstatus()
        updstock()

        Dim cmd As SqlCommand = New SqlCommand("insert into repair (eqno , replacemt , workreport) values ( @eqno ,  @replacemt , @workreport) ", conn)

        cmd.Parameters.AddWithValue("@eqno", Me.Txtitem.Text)
        'cmd.Parameters.AddWithValue("@itemno", Me.DDLwkshpn.Text)
        cmd.Parameters.AddWithValue("@replacemt", replaced)
        cmd.Parameters.AddWithValue("@workreport", Me.Txtrepair.Text)

        Try
            conn.Open()

            If cmd.ExecuteNonQuery > 0 Then
                'MsgBox("Workshop Reference N0:" & Me.DDLsite.SelectedItem.Text & "/" & Date.Now.ToShortDateString.ToString, MsgBoxStyle.Information, "Inlaks Computers")
                MsgBox("Information about the equipment used for the repair of" & Me.Txtequipno.Text & _
                " has been collected", MsgBoxStyle.Information, "Inlaks Computers")

            Else
                MsgBox("An error has occurred. Please check your inputs", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If
        End Try

        clearepr()
        replaced = ""


    End Sub
    Sub clearepr()
        Me.DDLitem.SelectedIndex = 0
        Me.DDLwkshpn.SelectedIndex = 0
        Me.Txtmdesc.Text = ""
        Me.Txtrepair.Text = ""
        Me.DDLqtyreq.SelectedIndex = 0

    End Sub
    Sub enterstatus()


        Dim cmd As SqlCommand = New SqlCommand(" update wtosite set status = @status where refno = @original_refno", conn)

        cmd.Parameters.AddWithValue("@original_refno", Me.DDLwkshpn.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@status", "Ready")

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then

                MsgBox("The machine with reference N0." & Me.DDLwkshpn.SelectedItem.Text, MsgBoxStyle.Information, "Inlaks Computers")

            Else
                MsgBox("Machine status has not been update", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If

        Catch ex As Exception
            MsgBox(ex.Message)

        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try
    End Sub
    Sub inputitem()
        'input the items in the dropdown for part selection
        Me.DDLitem.Items.Clear()
        Me.DDLitem.Items.Add("Select...")

        Dim cmd As SqlCommand = New SqlCommand("select items from wkstock", conn)
        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.DDLitem.Items.Add(rdr("items"))
                End While
            Else
                MsgBox("No record of workshop items", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub
    Sub loadmachin()

        Me.DDLwkshpn.Items.Clear()
        Me.DDLwkshpn.Items.Add("Select...")

        Dim cmd As SqlCommand = New SqlCommand("select refno from wtosite where  mdirectn = @mdirectn and  status IS NULL ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@mdirectn"
        param.Value = "From Site To Workshop"
        cmd.Parameters.Add(param)



        ' Dim param1 As SqlParameter = New SqlParameter
        'param1.ParameterName = "@status"
        'param1.Value = "Ready"
        'cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows = True Then
                While rdr.Read = True

                    Me.DDLwkshpn.Items.Add(rdr("refno"))

                End While
            Else
                'MsgBox("No record of workshop items", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Sub selectqty()
        'select the quantity available for the item selected

        Dim itemqty As Integer

        Dim cmd As SqlCommand = New SqlCommand("select qty from wkstock where items = @items ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@items"
        param.Value = Me.DDLitem.SelectedItem.Text
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    itemqty = (rdr("qty"))
                    itemqty = itemqty - Me.DDLqtyreq.SelectedIndex
                End While
            Else
                MsgBox("No record", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub DDLwkshpn_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLwkshpn.SelectedIndexChanged




        Dim cmd As SqlCommand = New SqlCommand("select eqname from wtosite where  refno = @refno ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@refno"
        param.Value = Me.DDLwkshpn.SelectedItem.Text
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.Txtmdesc.Text = (rdr("eqname"))
                End While
            Else
                MsgBox("No record of workshop items", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try



        Me.Txtrepair.Focus()

    End Sub

    Sub updstock()

        Dim dqty As Int16 = Val(Me.Txtrqty.Text) - Val(Me.DDLqtyreq.SelectedItem.Text)
        Dim cmd As SqlCommand = New SqlCommand("update  wkstock set qty = @qty where items = @original_items ", conn)


        cmd.Parameters.AddWithValue("@original_items", Me.DDLitem.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@qty", dqty)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The Item has Enrolled", MsgBoxStyle.Information, "INLAKS COMPUTERS")
            Else
                MsgBox("An error has occurred. Try again! ", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub DDLqtyreq_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLqtyreq.SelectedIndexChanged

        selectqty()

        Dim replace As String = Me.DDLitem.SelectedItem.Text & "-" & Me.DDLqtyreq.SelectedIndex.ToString & ","


        If replaced = "" Then
            replaced = replace
        Else
            replaced = replaced & replace
        End If
        MsgBox("To add other equipment required for the repairs of the Machine," & vbCrLf & " Click 'YES' otherwise 'NO' ", MsgBoxStyle.YesNo, "INLAKS COMPUTERS")

        If Microsoft.VisualBasic.MsgBoxResult.Yes Then

            Me.DDLitem.Items.Remove(Me.DDLitem.SelectedItem.Text)
            Me.DDLitem.SelectedIndex = 0
            Me.DDLqtyreq.SelectedIndex = 0

        End If
        Me.DDLitem.Focus()

    End Sub

    Protected Sub Btnv_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnv.Click

        Me.Listreparts.SelectedIndex = 0

        Dim i As Int16

        Me.Listreparts.SelectedIndex = i

        i += 1

    End Sub


    Protected Sub Btnapprove_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnapprove.Click
        If Me.Listreparts.SelectedIndex < 0 Then
            MsgBox("Select the equipment", MsgBoxStyle.Critical, "Inlaks Computers")

        Else
            For i As Int16 = 0 To Me.Listreparts.Items.Count - 1
                Me.Listreparts.SelectedIndex = i
                Me.Listgraparts.Items.Add(Me.Listreparts.SelectedItem.Text)
            Next
        End If

    End Sub

    Protected Sub Btnx_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnx.Click
        If Me.Listreparts.SelectedIndex < 0 Then
            MsgBox("Select the equipment", MsgBoxStyle.Critical, "Inlaks Computers")

        Else
            Me.Listreparts.Items.Remove(Me.Listreparts.SelectedItem.Text)

        End If

    End Sub

    Protected Sub DDLsitecode_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLsitecode.SelectedIndexChanged
        Me.Listreparts.Focus()
        'Dim x As Int16
        Dim itembreak As String
        Dim brokenitem As String()

        Dim cmd As SqlCommand = New SqlCommand("select parts from support where  sitecode = @sitecode and f_Re_date is null ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@sitecode"
        param.Value = Me.DDLsitecode.SelectedItem.Text
        cmd.Parameters.Add(param)

        Try

            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read


                    itembreak = rdr("parts")

                    brokenitem = (Microsoft.VisualBasic.Split(itembreak.ToString, ","))
                    For i As Int64 = 1 To brokenitem.Length - 1
                        Me.Listreparts.Items.Add(brokenitem(i))
                    Next

                End While
            Else
                MsgBox("No record of workshop items", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try



    End Sub
    Sub sitecode()

        'enter the sitecode from support for the request part for support task
        Dim cmd As SqlCommand = New SqlCommand("select sitecode from support where  f_Re_date is null ", conn)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.DDLsitecode.Items.Add(rdr("sitecode"))
                End While
            Else
                MsgBox("No record of complaint in the database ", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub Btnxx_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnxx.Click
        If Me.Listgraparts.SelectedIndex < 0 Then
            MsgBox("Select the item to be removed", MsgBoxStyle.Critical, "Inlaks Computers")
        Else
            Me.Listgraparts.Items.Remove(Me.Listgraparts.SelectedItem.Text)

        End If

    End Sub

    Protected Sub Btnsubapv_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsubapv.Click

        partlist()

        'update the parts required after approval

        Dim cmd As SqlCommand = New SqlCommand(" update support set parts = @parts where sitecode = @original_sitecode ", conn)

        cmd.Parameters.AddWithValue("@original_sitecode", Me.DDLsitecode.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@parts", thepart)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The parts for the support task has been registered", MsgBoxStyle.Information, "Inlaks Computers")

            Else
                MsgBox("An error has occurred, try again", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If

        Catch ex As Exception
            MsgBox(ex.Message)

        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()

            End If

        End Try

        thepart = ""
        Me.DDLsitecode.Items.Remove(Me.DDLsite.SelectedItem.Text)
        Me.DDLsitecode.SelectedItem.Text = ""
        Me.Listreparts.Items.Clear()
        Me.Listgraparts.Items.Clear()

    End Sub
    Sub partlist()

        For i As Int16 = 0 To Me.Listgraparts.Items.Count - 1
            Dim litem(i) As group

            litem(i).coll = Me.Listgraparts.Items.Item(i).Text
            thepart = thepart & "," & litem(i).coll

        Next

    End Sub
    Sub loadmachine2()

        Me.DDLrefno.Items.Clear()
        Me.DDLrefno.Items.Add("Select...")

        Dim cmd As SqlCommand = New SqlCommand("select refno from wtosite where  mdirectn = @mdirectn and status is NULL  ", conn)
        'and NOT status = @status

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@mdirectn"
        param.Value = "From Site To Workshop"
        cmd.Parameters.Add(param)

        'Dim param1 As SqlParameter = New SqlParameter
        'param1.ParameterName = "@status"
        'param1.Value = "Ready"
        'cmd.Parameters.Add(param1)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.DDLrefno.Items.Add(rdr("refno"))
                End While
            Else
                ' MsgBox("No record of workshop items", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub Btnfsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnfsub.Click

        'insert the remove part in table remove

        Dim cmd As SqlCommand = New SqlCommand("insert into remove ( fault , itemno ,refno , items)" & _
      "values ( @fault , @itemno , @refno , @items) ", conn)

        cmd.Parameters.AddWithValue("@fault", Me.Txtfaulty.Text)
        cmd.Parameters.AddWithValue("@itemno", Me.Txtpartno.Text)
        cmd.Parameters.AddWithValue("@refno", Me.DDLrefno.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@items", Me.Txtfpart.Text)

        Try
            conn.Open()

            If cmd.ExecuteNonQuery > 0 Then
                'MsgBox("Workshop Reference N0:" & Me.DDLsite.SelectedItem.Text & "/" & Date.Now.ToShortDateString.ToString, MsgBoxStyle.Information, "Inlaks Computers")
                MsgBox("Information about the equipment removed from the machine tagged" & Me.DDLrefno.Text & _
                " has been collected", MsgBoxStyle.Information, "Inlaks Computers")

            Else
                MsgBox("An error has occurred. Please check your inputs", MsgBoxStyle.Exclamation, "Inlaks Computers")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conn.State = Data.ConnectionState.Open Then
                conn.Close()
            End If
        End Try

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

    Sub faultymacx()

        Dim cmd As SqlCommand = New SqlCommand("select eqname from wtosite where  refno = @refno ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@refno"
        param.Value = Me.DDLrefno.SelectedItem.Text
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.Txtfmdesc.Text = (rdr("eqname"))
                End While
            Else
                MsgBox("No record of workshop items", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try





    End Sub

    Protected Sub DDLrefno_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLrefno.SelectedIndexChanged
        faultymacx()
        Me.Txtfmdesc.Focus()
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

    Protected Sub DDLitem_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLitem.SelectedIndexChanged
        partmat()
        
    End Sub
    Sub partmat()
        Dim cmd As SqlCommand = New SqlCommand("select qty from wkstock where  items = @items ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@items"
        param.Value = Me.DDLitem.SelectedItem.Text
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.Txtrqty.Text = (rdr("qty"))
                End While
            Else
                MsgBox("No record of workshop items", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub
   

    Protected Sub Listgraparts_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Listgraparts.SelectedIndexChanged
        Dim itemArray() As String = Split(Me.Listgraparts.SelectedItem.Text, "+", 2)


        Dim cmd As SqlCommand = New SqlCommand("select qty from wkstock where  items = @items ", conn)

        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@items"
        param.Value = itemArray(0)
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.Txtitems.Text = (rdr("qty"))
                End While
            Else
                MsgBox("No record of workshop items", MsgBoxStyle.Exclamation, "Inlaks Computers")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

        Me.Txtitems.Text = Val(Me.Txtitems.Text) - Val(itemArray(0))
        updstoc()

    End Sub
    Sub updstoc()

        Dim cmd As SqlCommand = New SqlCommand("update  wkstock set qty = @qty where items = @original_items ", conn)


        cmd.Parameters.AddWithValue("@original_items", Me.DDLitem.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@qty", Me.Txtitems.Text)

        Try
            conn.Open()
            If cmd.ExecuteNonQuery > 0 Then
                MsgBox("The Item has Enrolled", MsgBoxStyle.Information, "INLAKS COMPUTERS")
            Else
                MsgBox("An error has occurred. Try again! ", MsgBoxStyle.Exclamation, "INLAKS COMPUTERS")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub
End Class
