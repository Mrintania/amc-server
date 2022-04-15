
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

        If dd1.Text = "���͡������觴�ǹ" Then
            UserMsgBox("��س����͡ ������觴�ǹ.....!")
        ElseIf dd2.Text = "���͡������觴�ǹ" Then
            UserMsgBox("��س����͡ ������觴�ǹ.....!")
        ElseIf demo1.Value = "" Then
            UserMsgBox("��س����͡ �����ѹ����.....!")
        ElseIf dd3.Text = "���͡������" Then
            UserMsgBox("��س����͡ �������͡��� .....!")
        ElseIf txtform.Text = "" Then
            UserMsgBox("��س����͡ �ҡ ..�������ͧ�������������ͧ���� ( - ) ����ͧ��͡��ͤ��� ����ҧ�����..!")
        ElseIf txtadd.Text = "" Then
            UserMsgBox("��س����͡ ���ͧ����..�������ͧ�������������ͧ���� ( - ) ����ͧ��͡��ͤ��� ����ҧ�����..!")
        ElseIf gtomake.Value = "" Then
            UserMsgBox("��س����͡ ����Ѻ��Ժѵ�..�������ͧ�������������ͧ���� ( - ) ����ͧ��͡��ͤ��� ����ҧ�����..!")
        ElseIf gtook.Value = "" Then
            UserMsgBox("��س����͡ ����Ѻ��Һ..�������ͧ�������������ͧ���� ( - ) ����ͧ��͡��ͤ��� ����ҧ�����..!")
        ElseIf txtstory.Text = "" Then
            UserMsgBox("��س����͡ ���͢���..�������ͧ�������������ͧ���� ( - ) ����ͧ��͡��ͤ��� ����ҧ�����..!")
        ElseIf txtsendman.Text = "" Then
            UserMsgBox("��س����͡ ���ͼ����¹����..�������ͧ�������������ͧ���� ( - ) ����ͧ��͡��ͤ��� ����ҧ�����..!")
        ElseIf txtsendstation.Text = "" Then
            UserMsgBox("��س����͡ ˹���..�������ͧ�������������ͧ���� ( - ) ����ͧ��͡��ͤ��� ����ҧ�����..!")
        ElseIf txtsendtel.Text = "" Then
            UserMsgBox("��س����͡ �������Ѿ��..�������ͧ�������������ͧ���� ( - ) ����ͧ��͡��ͤ��� ����ҧ�����..!")
        ElseIf txtsendboss.Text = "" Then
            UserMsgBox("��س����͡ ��·���͹��ѵԢ���..�������ͧ�������������ͧ���� ( - ) ����ͧ��͡��ͤ��� ����ҧ�����..!")
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
