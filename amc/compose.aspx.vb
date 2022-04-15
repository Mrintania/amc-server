
Partial Class compose1
    Inherits System.Web.UI.Page
    Public Function select_name(ByVal X As Integer) As String

        Dim strconn As String = GetSql()
        Dim strsql As String = "Select * From UserTable Where Id=" & X & ""
        Dim myconn As New SqlConnection(strconn)
        Dim mydata As New SqlDataAdapter(strsql, myconn)
        Dim ds As New DataSet()
        mydata.Fill(ds, "UserTable")
        Dim strpic As String

        If ds.Tables("UserTable").Rows.Count <> 0 Then

            strpic = ds.Tables("UserTable").Rows(0).Item("Namestation")
        End If

        myconn.Close()
        Return strpic

    End Function
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Label8.Text = Request.QueryString("nid")

        txtform.Text = select_name(CInt(Label8.Text))
        txtsendstation.Text = select_name(CInt(Label8.Text))

        If Trim(txtform.Text) = "" Then
            Response.Redirect("LongTime.aspx")
        End If

    End Sub
    Public Function GetSql() As String

        Dim FILENAME As String = Server.MapPath("sqlname.txt")

        'Get a StreamReader class that can be used to read the file
        Dim objStreamReader As StreamReader
        objStreamReader = File.OpenText(FILENAME)

        'Now, read the entire file into a string
        Dim contents As String = objStreamReader.ReadToEnd()

        Return Trim(contents)

    End Function
    Public Sub UserMsgBox(ByVal sMsg As String)

        Dim sb As New StringBuilder
        Dim oFormObject As System.Web.UI.Control

        sMsg = sMsg.Replace("'", "\'")
        sMsg = sMsg.Replace(Chr(34), "\" & Chr(34))
        sMsg = sMsg.Replace(vbCrLf, "\n")
        sMsg = "<script language=javascript>alert(""" & sMsg & """)</script>"
        sb = New StringBuilder
        sb.Append(sMsg)
        For Each oFormObject In Me.Controls
            If TypeOf oFormObject Is HtmlForm Then
                Exit For
            End If
        Next
        composeform.Controls.AddAt(composeform.Controls.Count, New LiteralControl(sb.ToString()))

    End Sub
    Sub UploadFile(ByVal Fileupload As Object)
        Dim FileFullName As String = Fileupload.PostedFile.FileName
        Dim FileNameInfo As String = Path.GetFileName(FileFullName)
        Dim temppath As String = Server.MapPath("DataUpload")

        If FileNameInfo <> "" Then Fileupload.PostedFile.SaveAs(temppath & "\" & FileNameInfo)
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        If dd1.Text = "เลือกความเร่งด่วน" Then
            UserMsgBox("กรุณาเลือก ความเร่งด่วน.....!")
        ElseIf dd2.Text = "เลือกความเร่งด่วน" Then
            UserMsgBox("กรุณาเลือก ความเร่งด่วน.....!")
        ElseIf demo1.Value = "" Then
            UserMsgBox("กรุณาเลือก หมู่วันเวลา.....!")
        ElseIf dd3.Text = "เลือกประเภท" Then
            UserMsgBox("กรุณาเลือก ประเภทเอกสาร .....!")
        ElseIf txtform.Text = "" Then
            UserMsgBox("กรุณาเลือก จาก ..ถ้าไม่ต้องการใส่ให้เครื่องหมาย ( - ) ที่ช่องกรอกข้อความ จะว่างไม่ได้..!")
        ElseIf txtadd.Text = "" Then
            UserMsgBox("กรุณาเลือก ที่ของข่าว..ถ้าไม่ต้องการใส่ให้เครื่องหมาย ( - ) ที่ช่องกรอกข้อความ จะว่างไม่ได้..!")
        ElseIf gtomake.Value = "" Then
            UserMsgBox("กรุณาเลือก ผู้รับปฏิบัติ..ถ้าไม่ต้องการใส่ให้เครื่องหมาย ( - ) ที่ช่องกรอกข้อความ จะว่างไม่ได้..!")
        ElseIf gtook.Value = "" Then
            UserMsgBox("กรุณาเลือก ผู้รับทราบ..ถ้าไม่ต้องการใส่ให้เครื่องหมาย ( - ) ที่ช่องกรอกข้อความ จะว่างไม่ได้..!")
        ElseIf txtstory.Text = "" Then
            UserMsgBox("กรุณาเลือก เนื้อข่าว..ถ้าไม่ต้องการใส่ให้เครื่องหมาย ( - ) ที่ช่องกรอกข้อความ จะว่างไม่ได้..!")
        ElseIf txtsendman.Text = "" Then
            UserMsgBox("กรุณาเลือก ชื่อผู้เขียนข่าว..ถ้าไม่ต้องการใส่ให้เครื่องหมาย ( - ) ที่ช่องกรอกข้อความ จะว่างไม่ได้..!")
        ElseIf txtsendstation.Text = "" Then
            UserMsgBox("กรุณาเลือก หน่วย..ถ้าไม่ต้องการใส่ให้เครื่องหมาย ( - ) ที่ช่องกรอกข้อความ จะว่างไม่ได้..!")
        ElseIf txtsendtel.Text = "" Then
            UserMsgBox("กรุณาเลือก เบอร์โทรศัพท์..ถ้าไม่ต้องการใส่ให้เครื่องหมาย ( - ) ที่ช่องกรอกข้อความ จะว่างไม่ได้..!")
        ElseIf txtsendboss.Text = "" Then
            UserMsgBox("กรุณาเลือก นายทหารอนุมัติข่าว..ถ้าไม่ต้องการใส่ให้เครื่องหมาย ( - ) ที่ช่องกรอกข้อความ จะว่างไม่ได้..!")
        Else

            Dim d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14 As String
            d1 = dd1.Text
            d2 = dd2.Text
            d3 = txtcode.Text
            d4 = demo1.Value
            d5 = dd3.Text
            d6 = Trim(txtform.Text)
            d7 = txtadd.Text
            d8 = "," & Trim(gtomake.Value)
            d9 = "," & Trim(gtook.Value)
            d10 = txtstory.Text
            d11 = txtsendman.Text
            d12 = txtsendstation.Text
            d13 = txtsendtel.Text
            d14 = txtsendboss.Text
            If txtcode.Text = "" Then
                d3 = "-"
            End If

            Dim FileFullName As String = FileUpload1.PostedFile.FileName


            Dim Sql As String
            If (FileFullName = "") Or (FileFullName = "-") Then

                Dim FileNameInfo As String = "-"
                Dim FileSize As String = "-"
                Sql = "INSERT INTO DataNews (  Express1 , Express2  , Datetime ,Typenews , From1  , Add1 ,  Tomake , Took ,  Story ,  Sendman ,  Sendstation , Sendtel , Sendboss , Filename , Filesize ,  code1  ) VALUES ('" & d1 & "','"
                Sql = Sql & d2 & "','"
                Sql = Sql & d4 & "','"
                Sql = Sql & d5 & "','"
                Sql = Sql & d6 & "','"
                Sql = Sql & d7 & "','"
                Sql = Sql & d8 & "','"
                Sql = Sql & d9 & "','"
                Sql = Sql & d10 & "','"
                Sql = Sql & d11 & "','"
                Sql = Sql & d12 & "','"
                Sql = Sql & d13 & "','"
                Sql = Sql & d14 & "','"
                Sql = Sql & FileNameInfo & "','"
                Sql = Sql & FileSize & "','"
                Sql = Sql & d3 & "')"

            Else
                Dim FileNameInfo As String = Path.GetFileName(FileFullName)
                Dim FileSize As String = FileUpload1.PostedFile.ContentLength

                UploadFile(FileUpload1)
                Sql = "INSERT INTO DataNews (  Express1 , Express2  , Datetime ,Typenews , From1  , Add1 ,  Tomake , Took ,  Story ,  Sendman ,  Sendstation , Sendtel , Sendboss , Filename , Filesize , code1  ) VALUES ('" & d1 & "','"
                Sql = Sql & d2 & "','"
                Sql = Sql & d4 & "','"
                Sql = Sql & d5 & "','"
                Sql = Sql & d6 & "','"
                Sql = Sql & d7 & "','"
                Sql = Sql & d8 & "','"
                Sql = Sql & d9 & "','"
                Sql = Sql & d10 & "','"
                Sql = Sql & d11 & "','"
                Sql = Sql & d12 & "','"
                Sql = Sql & d13 & "','"
                Sql = Sql & d14 & "','"
                Sql = Sql & FileNameInfo & "','"
                Sql = Sql & FileSize & "','"
                Sql = Sql & d3 & "')"

            End If
            Dim myconn As New SqlConnection(GetSql())
            myconn.Open()
            Dim mycommand As New SqlCommand(Sql, myconn)
            mycommand.ExecuteScalar()
            myconn.Close()
            Response.Redirect("savenews.aspx")

        End If


    End Sub

End Class
