
Partial Class view
    Inherits System.Web.UI.Page
    Dim ano As String
    Dim code1 As String
    Public Function EncryptString128Bit(ByVal vstrTextToBeEncrypted As String, ByVal vstrEncryptionKey As String) As String

        Dim bytValue() As Byte
        Dim bytKey() As Byte
        Dim bytEncoded() As Byte
        Dim bytIV() As Byte = {121, 241, 10, 1, 132, 74, 11, 39, 255, 91, 45, 78, 14, 211, 22, 62}
        Dim intLength As Integer
        Dim intRemaining As Integer
        Dim objMemoryStream As New MemoryStream()
        Dim objCryptoStream As CryptoStream
        Dim objRijndaelManaged As RijndaelManaged


        '   **********************************************************************
        '   ******  Strip any null character from string to be encrypted    ******
        '   **********************************************************************

        vstrTextToBeEncrypted = StripNullCharacters(vstrTextToBeEncrypted)

        '   **********************************************************************
        '   ******  Value must be within ASCII range (i.e., no DBCS chars)  ******
        '   **********************************************************************

        bytValue = Encoding.ASCII.GetBytes(vstrTextToBeEncrypted.ToCharArray)

        intLength = Len(vstrEncryptionKey)

        '   ********************************************************************
        '   ******   Encryption Key must be 256 bits long (32 bytes)      ******
        '   ******   If it is longer than 32 bytes it will be truncated.  ******
        '   ******   If it is shorter than 32 bytes it will be padded     ******
        '   ******   with upper-case Xs.                                  ****** 
        '   ********************************************************************

        If intLength >= 32 Then
            vstrEncryptionKey = Strings.Left(vstrEncryptionKey, 32)
        Else
            intLength = Len(vstrEncryptionKey)
            intRemaining = 32 - intLength
            vstrEncryptionKey = vstrEncryptionKey & Strings.StrDup(intRemaining, "X")
        End If

        bytKey = Encoding.ASCII.GetBytes(vstrEncryptionKey.ToCharArray)

        objRijndaelManaged = New RijndaelManaged()

        '   ***********************************************************************
        '   ******  Create the encryptor and write value to it after it is   ******
        '   ******  converted into a byte array                              ******
        '   ***********************************************************************

        Try

            objCryptoStream = New CryptoStream(objMemoryStream, _
              objRijndaelManaged.CreateEncryptor(bytKey, bytIV), _
              CryptoStreamMode.Write)
            objCryptoStream.Write(bytValue, 0, bytValue.Length)

            objCryptoStream.FlushFinalBlock()

            bytEncoded = objMemoryStream.ToArray
            objMemoryStream.Close()
            objCryptoStream.Close()
        Catch



        End Try

        '   ***********************************************************************
        '   ******   Return encryptes value (converted from  byte Array to   ******
        '   ******   a base64 string).  Base64 is MIME encoding)             ******
        '   ***********************************************************************

        Return Convert.ToBase64String(bytEncoded)

    End Function
    Public Function StripNullCharacters(ByVal vstrStringWithNulls As String) As String

        Dim intPosition As Integer
        Dim strStringWithOutNulls As String

        intPosition = 1
        strStringWithOutNulls = vstrStringWithNulls

        Do While intPosition > 0
            intPosition = InStr(intPosition, vstrStringWithNulls, vbNullChar)

            If intPosition > 0 Then
                strStringWithOutNulls = Left$(strStringWithOutNulls, intPosition - 1) & _
                                  Right$(strStringWithOutNulls, Len(strStringWithOutNulls) - intPosition)
            End If

            If intPosition > strStringWithOutNulls.Length Then
                Exit Do
            End If
        Loop

        Return strStringWithOutNulls

    End Function


 
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim strconn As String = GetSql()
        Dim strsql As String = "Select * From DataNews Where Id =" & Convert.ToInt32(Request.QueryString("gid")) & ""
        Dim myconn As New SqlConnection(strconn)
        Dim mydata As New SqlDataAdapter(strsql, myconn)
        Dim ds As New DataSet()
        mydata.Fill(ds, "DataNews")

        sExpress1.Text = ds.Tables("DataNews").Rows(0).Item("Express1")
        sExpress2.Text = ds.Tables("DataNews").Rows(0).Item("Express2")
        sDatetime.Text = ds.Tables("DataNews").Rows(0).Item("Datetime")
        sTypenews.Text = ds.Tables("DataNews").Rows(0).Item("Typenews")
        sFromTo.Text = ds.Tables("DataNews").Rows(0).Item("From1")
        sAddTo.Text = ds.Tables("DataNews").Rows(0).Item("Add1")
        sTomake.Text = ds.Tables("DataNews").Rows(0).Item("Tomake")
        sTook.Text = ds.Tables("DataNews").Rows(0).Item("Took")
        ano = ds.Tables("DataNews").Rows(0).Item("Story")
        ano = Replace(ano, "<", "&lt;")
        ano = Replace(ano, " ", "&nbsp;")
        ano = Replace(ano, Chr(13), "<br>")
        code1 = Trim(ds.Tables("DataNews").Rows(0).Item("code1"))



        If Trim(ds.Tables("DataNews").Rows(0).Item("Filename")) = "-" Then
            Label10.Text = "-"
        Else
            Label10.Text = "<b><font face='MS Sans Serif, Microsoft Sans Serif' size='2'><font color='#303498'><a href='DataUpload\" + Trim(ds.Tables("DataNews").Rows(0).Item("Filename")) + "'>" + Trim(ds.Tables("DataNews").Rows(0).Item("Filename")) + "</a></font></font></b>"
        End If

        If Trim(ds.Tables("DataNews").Rows(0).Item("code1")) = "-" Then

            sstory.Text = ano
            Label2.Text = ""
            Label1.Visible = False
            TextBox1.Visible = False
            Button15.Visible = False
        Else
            Dim sstr As String
            sstr = EncryptString128Bit(ds.Tables("DataNews").Rows(0).Item("Story"), Trim(ds.Tables("DataNews").Rows(0).Item("code1")))
            sstr = Replace(sstr, "V", "<br>")
            sstr = Replace(sstr, "A", "<br>")
            'sstr = Replace(sstr, "Q", "<br>")
            sstory.Text = sstr
            Label2.Text = " ข่าวนี้ถูกเข้ารหัส ไม่สามารถมองเห็นเนื้อข่าว,ไฟล์ที่แนบมา และไม่สามารถแก้ไขข่าวได้ กรุณาถอดรหัส ก่อน....! "
            Label10.Visible = False
            bb1.Visible = False
        End If


        sman.Text = ds.Tables("DataNews").Rows(0).Item("Sendman")
        sstation.Text = ds.Tables("DataNews").Rows(0).Item("Sendstation")
        stel.Text = ds.Tables("DataNews").Rows(0).Item("Sendtel")
        sboss.Text = ds.Tables("DataNews").Rows(0).Item("Sendboss")

        myconn.Close()
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

    Protected Sub Button15_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button15.Click
        If TextBox1.Text = "" Then
            UserMsgBox(" กรุณาใส่ Key ในการถอดรหัส ! ")
        ElseIf TextBox1.Text <> code1 Then
            UserMsgBox(" Key ในการถอดรหัส  ไม่ถูกต้อง! ")
        Else
            sstory.Text = ano
            Label2.Text = ""
            Label10.Visible = True
            bb1.Visible = True
        End If
    End Sub
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
        oFormObject.Controls.AddAt(oFormObject.Controls.Count, New LiteralControl(sb.ToString()))

    End Sub


    Protected Sub bb1_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles bb1.ServerClick
        Response.Redirect("editnews.aspx?gid=" & Convert.ToInt32(Request.QueryString("gid")) & "&nid=" & Request.QueryString("nid"))
    End Sub
End Class
