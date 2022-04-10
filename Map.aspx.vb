
Imports System.Data.SqlClient

Partial Class map
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\databrain.mdf;Integrated Security=True;User Instance=True"
    Dim conn As New SqlConnection(constr)
    Dim rdr As SqlDataReader
    Dim i As Int16
    Dim imptech, impstate As New StringCollection
    Dim suptech, supstate As New StringCollection

    Sub tecsup()
        Dim cmd As SqlCommand = New SqlCommand("SELECT        location FROM techjob " & _
" WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype)  ", conn)
        ', clienttown, sitecode, techid
        'startjob  = @startjob or 

        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read


                    supstate.Add(rdr("location"))

                    

                    '  Me.suptech.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))
                    ' i += 1
                    '
                    'MsgBox(rdr("location"))
                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If

        End Try

    End Sub

    Sub tecimp()
        Dim cmd As SqlCommand = New SqlCommand("SELECT location  FROM techjob WHERE startjob < = @startjob and endjob > = @endjob AND jobtype = @jobtype ", conn)
        ', clienttown, sitecode, techid
        'startjob > = @startjob or


        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Now
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)

        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    imptech.Add(rdr("location"))
                    'impstate.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack = True Then


            disimpl()
            dissup()
        End If
    End Sub


    Sub disimpl()
        tecimp()
        For i As Integer = 0 To Me.imptech.Count - 1
            ' Me.impstate.Add((Me.imptech.Item(i).ToString))
            ' MsgBox(Me.impstate.Item(i).ToString & vbCrLf)
            If Left(imptech.Item(i).ToString, 3).ToLower = "abi" Then
                Me.biabi.ImageUrl = "~\images\imp.gif"
                ' Me.biabi.ToolTip = imptech.Item(i).ToString & vbCrLf
            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "ada" Then
                Me.biada.ImageUrl = "~\images\imp.gif"
                'Me.biada.ToolTip = imptech.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "akw" Then
                Me.biakw.ImageUrl = "~\images\imp.gif"
                'Me.biakw.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "ana" Then
                Me.biana.ImageUrl = "~\images\imp.gif"
                'Me.biana.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "bau" Then
                Me.bibau.ImageUrl = "~\images\imp.gif"
                'Me.bibau.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "bay" Then
                Me.bibay.ImageUrl = "~\images\imp.gif"
                'Me.bibay.ToolTip = impstate.Item(i).ToString & vbCrLf


            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "ben" Then
                Me.biben.ImageUrl = "~\images\imp.gif"
                'Me.biben.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "bor" Then
                Me.bibor.ImageUrl = "~\images\imp.gif"
                'Me.bibor.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "cro" Then
                Me.bicro.ImageUrl = "~\images\imp.gif"
                'Me.bicro.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "del" Then
                Me.bidel.ImageUrl = "~\images\imp.gif"
                'Me.bidel.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "ebo" Then
                Me.biebo.ImageUrl = "~\images\imp.gif"
                'Me.biebo.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "edo" Then
                Me.biedo.ImageUrl = "~\images\imp.gif"
                'Me.biedo.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "eki" Then
                Me.bieki.ImageUrl = "~\images\imp.gif"
                'Me.bieki.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "enu" Then
                Me.bienu.ImageUrl = "~\images\imp.gif"
                'Me.bienu.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "abu" Then
                Me.bifct.ImageUrl = "~\images\imp.gif"
                'Me.bifct.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "gom" Then
                Me.bigom.ImageUrl = "~\images\imp.gif"
                'Me.bigom.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "imo" Then
                Me.biimo.ImageUrl = "~\images\imp.gif"
                'Me.biimo.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "jig" Then
                Me.bijig.ImageUrl = "~\images\imp.gif"
                'Me.bijig.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "kad" Then
                Me.bikad.ImageUrl = "~\images\imp.gif"
                'Me.bikad.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "kan" Then
                Me.bikan.ImageUrl = "~\images\imp.gif"
                'Me.bikan.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "kat" Then
                Me.bikat.ImageUrl = "~\images\imp.gif"
                'Me.bikat.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "keb" Then
                Me.bikeb.ImageUrl = "~\images\imp.gif"
                'Me.bikeb.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "kog" Then
                Me.bikog.ImageUrl = "~\images\imp.gif"
                'Me.bikog.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "kwa" Then
                Me.bikwa.ImageUrl = "~\images\imp.gif"
                'Me.bikwa.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "lag" Then
                Me.bilag.ImageUrl = "~\images\imp.gif"
                'Me.bilag.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "nas" Then
                Me.binas.ImageUrl = "~\images\imp.gif"
                'Me.binas.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "nig" Then
                Me.binig.ImageUrl = "~\images\imp.gif"
                'Me.binig.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "ogu" Then
                Me.biogu.ImageUrl = "~\images\imp.gif"
                'Me.biogu.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "ond" Then
                Me.biond.ImageUrl = "~\images\imp.gif"
                'Me.biond.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "osu" Then
                Me.biosu.ImageUrl = "~\images\imp.gif"
                'Me.biosu.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "oyo" Then
                Me.bioyo.ImageUrl = "~\images\imp.gif"
                'Me.bioyo.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "pla" Then
                Me.bipla.ImageUrl = "~\images\imp.gif"
                'Me.bipla.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "riv" Then
                Me.biriv.ImageUrl = "~\images\imp.gif"
                'Me.biriv.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "sok" Then
                Me.bisok.ImageUrl = "~\images\imp.gif"
                'Me.bisok.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "tar" Then
                Me.bitar.ImageUrl = "~\images\imp.gif"
                'Me.bitar.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "yob" Then
                Me.biyob.ImageUrl = "~\images\imp.gif"
                'Me.biyob.ToolTip = impstate.Item(i).ToString & vbCrLf

            ElseIf Left(imptech.Item(i).ToString, 3).ToLower = "zam" Then
                Me.bizam.ImageUrl = "~\images\imp.gif"
                'Me.bizam.ToolTip = impstate.Item(i).ToString & vbCrLf

            End If
        Next

    End Sub
   
    
    Sub dissup()
        tecsup()
        For i As Int16 = 0 To Me.supstate.Count - 1

            '' Me.impstate.Add((Me.imptech.Item(i).ToString))
            '' MsgBox(Me.impstate.Item(i).ToString & vbCrLf)
            If Left(supstate.Item(i).ToString, 3).ToLower = "abi" Then
                Me.bsabi.ImageUrl = "~\images\sp.gif "
                'Me.bsabi.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "ada" Then
                Me.bsada.ImageUrl = "~\images\sp.gif"
                'Me.bsada.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "akw" Then
                Me.bsakw.ImageUrl = "~\images\sp.gif"
                'Me.bsakw.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "ana" Then
                Me.bsana.ImageUrl = "~\images\sp.gif"
                'Me.bsana.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "bau" Then
                Me.bsbau.ImageUrl = "~\images\sp.gif"
                'Me.bsbau.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "bay" Then
                Me.bsbay.ImageUrl = "~\images\sp.gif"
                'Me.bsbay.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "ben" Then
                Me.bsben.ImageUrl = "~\images\sp.gif"
                'Me.bsben.ToolTip = suptech.Item(i).ToString & vbCrLf


            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "bor" Then
                Me.bsbor.ImageUrl = "~\images\sp.gif"
                'Me.bsbor.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "cro" Then
                Me.bicro.ImageUrl = "~\images\sp.gif"
                'Me.bicro.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "del" Then
                Me.bsdel.ImageUrl = "~\images\sp.gif"
                'Me.bsdel.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "ebo" Then
                Me.bsebo.ImageUrl = "~\images\sp.gif"
                'Me.bsebo.ToolTip = imptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "edo" Then
                Me.bsedo.ImageUrl = "~\images\sp.gif"
                'Me.bsedo.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "eki" Then
                Me.bseki.ImageUrl = "~\images\sp.gif"
                'Me.bseki.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "enu" Then
                Me.bsenu.ImageUrl = "~\images\sp.gif"
                'Me.bsenu.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "abu" Then
                Me.bsfct.ImageUrl = "~\images\sp.gif"
                'Me.bsfct.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "gom" Then
                Me.bsgom.ImageUrl = "~\images\sp.gif"
                'Me.bsgom.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "imo" Then
                Me.bsimo.ImageUrl = "~\images\sp.gif"
                'Me.bsimo.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "jig" Then
                Me.bsjig.ImageUrl = "~\images\sp.gif"
                'Me.bsjig.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "kad" Then
                Me.bskad.ImageUrl = "~\images\sp.gif"
                'Me.bskad.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "kan" Then
                Me.bskan.ImageUrl = "~\images\sp.gif"
                'Me.bskan.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "kat" Then
                Me.bskat.ImageUrl = "~\images\sp.gif"
                'Me.bskat.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "keb" Then
                Me.bskeb.ImageUrl = "~\images\sp.gif"
                'Me.bskeb.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "kog" Then
                Me.bskog.ImageUrl = "~\images\sp.gif"
                'Me.bskog.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "kwa" Then
                Me.bskwa.ImageUrl = "~\images\sp.gif"
                'Me.bskwa.ToolTip = suptech.Item(i).ToString & vbCrLf


            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "lag" Then
                Me.bslag.ImageUrl = "~\images\sp.gif"
                'Me.bslag.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "nas" Then
                Me.bsnas.ImageUrl = "~\images\sp.gif"
                'Me.bsnas.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "nig" Then
                Me.bsnig.ImageUrl = "~\images\sp.gif"
                'Me.bsnig.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "ogu" Then
                Me.bsogu.ImageUrl = "~\images\sp.gif"
                'Me.bsogu.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "ond" Then
                Me.bsond.ImageUrl = "~\images\sp.gif"
                'Me.bsond.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "osu" Then
                Me.bsosu.ImageUrl = "~\images\sp.gif"
                'Me.bsosu.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "oyo" Then
                Me.bsoyo.ImageUrl = "~\images\sp.gif"
                'Me.bsoyo.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "pla" Then
                Me.bspla.ImageUrl = "~\images\sp.gif"
                'Me.bspla.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "riv" Then
                Me.bsriv.ImageUrl = "~\images\sp.gif"
                'Me.bsriv.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "sok" Then
                Me.bssok.ImageUrl = "~\images\sp.gif"
                'Me.bssok.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "tar" Then
                Me.bstar.ImageUrl = "~\images\sp.gif"
                ' Me.bstar.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf Left(supstate.Item(i).ToString, 3).ToLower = "yob" Then
                Me.bsyob.ImageUrl = "~\images\sp.gif"
                'Me.bsyob.ToolTip = suptech.Item(i).ToString & vbCrLf

            ElseIf (Left(supstate.Item(i).ToString, 3).ToLower) = "zam" Then
                Me.bszam.ImageUrl = "~\images\sp.gif"
                'Me.bszam.ToolTip = suptech.Item(i).ToString & vbCrLf

            End If
        Next


    End Sub
   
    
    Protected Sub bilag_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bilag.Click
        Me.ListBox1.Items.Clear()
        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
       " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "Lagos"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read

                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub biogu_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles biogu.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "ogun"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bioyo_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bioyo.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "oyo"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub biosu_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles biosu.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "osun"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bieki_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bieki.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "ekiti"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub biond_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles biond.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "ondo"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub biedo_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles biedo.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "edo"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub biana_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles biana.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "anambra"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bienu_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bienu.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "enugu"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub biebo_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles biebo.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "ebonyi"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub biabi_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles biabi.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "abia"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub biimo_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles biimo.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "imo"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bidel_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bidel.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "delta"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bibay_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bibay.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "bayelsa"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub biriv_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles biriv.Click


        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "rivers"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub biakw_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles biakw.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "akwa ibom"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bicro_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bicro.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "cross river"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub biben_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles biben.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "benue"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bipla_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bipla.Click


        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "plateau"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bikog_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bikog.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "kogi"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bikwa_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bikwa.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "kwara"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub binig_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles binig.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "niger"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bifct_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bifct.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "Abuja F.C.T"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub binas_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles binas.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "nassarawa"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bigom_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bigom.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "gombe"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bitar_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bitar.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "taraba"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub biada_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles biada.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "adamawa"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bibau_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bibau.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "bauchi"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub biyob_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles biyob.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "yobe"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bibor_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bibor.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "borno"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bijig_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bijig.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "jigawa"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bikan_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bikan.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "kano"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bikat_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bikat.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "katsina"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bizam_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bizam.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "zamfara"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bisok_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bisok.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "sokoto"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bikeb_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bikeb.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "kebbi"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bikad_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bikad.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "implementation"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "kaduna"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub

    Protected Sub bskad_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bskad.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
    " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "kaduna"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try

    End Sub


    Protected Sub bskeb_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bskeb.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "kebbi"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bssok_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bssok.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "sokoto"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bszam_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bszam.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "zamfara"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bskat_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bskat.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "katsina"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bskan_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bskan.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "kano"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsjig_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsjig.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "jigawa"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsbau_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsbau.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "bauchi"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsyob_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsyob.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "yobe"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsbor_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsbor.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "borno"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsada_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsada.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "adamawa"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bstar_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bstar.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "taraba"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bspla_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bspla.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "plateau"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsnas_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsnas.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "nassarawa"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsfct_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsfct.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "Abuja F.C.T"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsnig_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsnig.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "niger"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bskwa_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bskwa.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "kwara"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bskog_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bskog.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "kogi"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsben_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsben.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "benue"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsebo_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsebo.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "ebonyi"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub


    Protected Sub bscro_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bscro.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "cross river"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsabi_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsabi.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "abia"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsakw_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsakw.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
           " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "akwa ibom"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsriv_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsriv.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "rivers"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsbay_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsbay.Click


        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "bayelsa"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsdel_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsdel.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "delta"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsimo_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsimo.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "imo"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsana_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsana.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "anambra"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsenu_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsenu.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "enugu"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bseki_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bseki.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "ekiti"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsond_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsond.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "ondo"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bslag_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bslag.Click


        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "lagos"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsosu_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsosu.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "osun"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsoyo_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsoyo.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "oyo"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsogu_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsogu.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "ogun"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If Not conn.State = Data.ConnectionState.Closed Then
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub bsgom_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles bsgom.Click

        Me.ListBox1.Items.Clear()

        Dim cmd As SqlCommand = New SqlCommand("SELECT clienttown, sitecode, techid FROM techjob " & _
   " WHERE        (endjob > = @startjob) and startjob < = @startjob AND (jobtype = @jobtype) and location = @location  ", conn)



        Dim param1 As SqlParameter = New SqlParameter
        param1.ParameterName = "@startjob"
        param1.Value = Date.Today
        cmd.Parameters.Add(param1)


        Dim param2 As SqlParameter = New SqlParameter
        param2.ParameterName = "@endjob"
        param2.Value = Date.Today
        cmd.Parameters.Add(param2)


        Dim param As SqlParameter = New SqlParameter
        param.ParameterName = "@jobtype"
        param.Value = "support"
        cmd.Parameters.Add(param)


        Dim param0 As SqlParameter = New SqlParameter
        param0.ParameterName = "@location"
        param0.Value = "gombe"
        cmd.Parameters.Add(param0)




        Try
            conn.Open()
            rdr = cmd.ExecuteReader
            If rdr.HasRows Then
                While rdr.Read
                    Me.ListBox1.Items.Add(rdr("clienttown") & "++ " & rdr("sitecode") & "++" & rdr("techid"))


                End While
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
