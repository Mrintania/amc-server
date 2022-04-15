
Partial Class inbox
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        labelHide.Text = Request.QueryString("nid")
        labname.Text = select_name(CInt(labelHide.Text))
        'labname.Text = "กอ.รส.ทภ.2"
        If Trim(labname.Text) = "" Then
            Response.Redirect("LongTime.aspx")
        End If
        'ข่าวเข้าทั้งหมด
        Dim readall As Integer = count_read(1)
        labtotal.Text = readall

        If labname.Text = "ทบ.(กรรมการ)" Then
            labname.Text = "กรรมการ"
        End If


        Dim strconn As String = GetSql()
        Dim strsql As String

        If Request.QueryString("para1") = "" Then
            strsql = "Select * From DataNews Where From1 Like '%" & Trim(labname.Text) & "%'  ORDER BY Id DESC "
        Else
            strsql = "Select * from DataNews  WHERE  "
            strsql = strsql & " (From1 Like '%" & Trim(labname.Text) & "%') AND (Add1 LIKE '%" & Request.QueryString("para1") & "%')"
            strsql = strsql & " ORDER BY Id DESC"
        End If

        Dim myconn As New SqlConnection(strconn)
        Dim mydata As New SqlDataAdapter(strsql, myconn)
        Dim ds As New DataSet()
        mydata.Fill(ds, "DataNews")
        GridView1.DataSource = ds.Tables("DataNews")
        GridView1.DataBind()


        myconn.Close()

    End Sub
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

    Public Function DecryptString128Bit(ByVal vstrStringToBeDecrypted As String, ByVal vstrDecryptionKey As String) As String

        Dim bytDataToBeDecrypted() As Byte
        Dim bytTemp() As Byte
        Dim bytIV() As Byte = {121, 241, 10, 1, 132, 74, 11, 39, 255, 91, 45, 78, 14, 211, 22, 62}
        Dim objRijndaelManaged As New RijndaelManaged()
        Dim objMemoryStream As MemoryStream
        Dim objCryptoStream As CryptoStream
        Dim bytDecryptionKey() As Byte

        Dim intLength As Integer
        Dim intRemaining As Integer
        Dim intCtr As Integer
        Dim strReturnString As String = String.Empty
        Dim achrCharacterArray() As Char
        Dim intIndex As Integer

        '   *****************************************************************
        '   ******   Convert base64 encrypted value to byte array      ******
        '   *****************************************************************

        bytDataToBeDecrypted = Convert.FromBase64String(vstrStringToBeDecrypted)

        '   ********************************************************************
        '   ******   Encryption Key must be 256 bits long (32 bytes)      ******
        '   ******   If it is longer than 32 bytes it will be truncated.  ******
        '   ******   If it is shorter than 32 bytes it will be padded     ******
        '   ******   with upper-case Xs.                                  ****** 
        '   ********************************************************************

        intLength = Len(vstrDecryptionKey)

        If intLength >= 32 Then
            vstrDecryptionKey = Strings.Left(vstrDecryptionKey, 32)
        Else
            intLength = Len(vstrDecryptionKey)
            intRemaining = 32 - intLength
            vstrDecryptionKey = vstrDecryptionKey & Strings.StrDup(intRemaining, "X")
        End If

        bytDecryptionKey = Encoding.ASCII.GetBytes(vstrDecryptionKey.ToCharArray)

        ReDim bytTemp(bytDataToBeDecrypted.Length)

        objMemoryStream = New MemoryStream(bytDataToBeDecrypted)

        '   ***********************************************************************
        '   ******  Create the decryptor and write value to it after it is   ******
        '   ******  converted into a byte array                              ******
        '   ***********************************************************************

        Try

            objCryptoStream = New CryptoStream(objMemoryStream, _
               objRijndaelManaged.CreateDecryptor(bytDecryptionKey, bytIV), _
               CryptoStreamMode.Read)

            objCryptoStream.Read(bytTemp, 0, bytTemp.Length)

            objCryptoStream.FlushFinalBlock()
            objMemoryStream.Close()
            objCryptoStream.Close()

        Catch

        End Try

        '   *****************************************
        '   ******   Return decypted value     ******
        '   *****************************************

        Return StripNullCharacters(Encoding.ASCII.GetString(bytTemp))

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
    Public Function FileGet(ByVal Y As String) As String

        If Trim(Y) <> "-" Then
            Return "<img src='images\pic\clip.gif' style='width: 9px; height: 18px'>"
        End If

    End Function
    Public Function encodeGet(ByVal X As String, ByVal Y As String) As String

        If Trim(Y) <> "-" Then
            Return EncryptString128Bit(X, Y)
        Else
            Return X
        End If

    End Function
    Public Function lockGet(ByVal X As String) As String

        If Trim(X) <> "-" Then
            Return "<img src='images\pic\lock.gif' style='width: 12px; height: 17px'>"
        End If

    End Function
    Public Function ResiveGet(ByVal X As String) As String
        Dim i As Integer
        Dim strcount As String
        Dim strconn As String = GetSql()
        Dim strsql As String = "Select * From ConfirmTable Where ConfirmID =" & X & ""
        Dim myconn As New SqlConnection(strconn)
        Dim mydata As New SqlDataAdapter(strsql, myconn)
        Dim ds As New DataSet()
        mydata.Fill(ds, "ConfirmTable")

        Dim count1 As Integer = ds.Tables("ConfirmTable").Rows.Count
        For i = 0 To count1 - 1
            If i = 0 Then
                strcount = ds.Tables("ConfirmTable").Rows(i).Item("ConfirmStation")
            Else
                strcount += " , " + ds.Tables("ConfirmTable").Rows(i).Item("ConfirmStation")
            End If

        Next

        myconn.Close()
        Return strcount

    End Function
    Public Function GetSql() As String

        Dim FILENAME As String = Server.MapPath("sqlname.txt")

        'Get a StreamReader class that can be used to read the file
        Dim objStreamReader As StreamReader
        objStreamReader = File.OpenText(FILENAME)

        'Now, read the entire file into a string
        Dim contents As String = objStreamReader.ReadToEnd()

        Return Trim(contents)

    End Function
    Public Function ImagesGet(ByVal X As Integer) As String
        'เช็คค่าเมลว่าเปิดอ่านหรือยัง
        Dim strsql As String = "Select count(*) From ConfirmTable Where ConfirmID =" & X & " and ConfirmStation ='" & Trim(labname.Text) & "'"
        Dim myconn As New SqlConnection(GetSql())
        myconn.Open()
        Dim mycommand As New SqlCommand(strsql, myconn)
        Dim countrec As Integer = mycommand.ExecuteScalar

        If countrec = 0 Then
            Return "<img src='images\pic\mailclose.jpg' style='width: 21px; height: 15px'>"
        Else
            Return "<img src='images\pic\mailopen.gif' style='width: 36px; height: 25px'>"
        End If
        myconn.Close()
    End Function
    Public Function count_read(ByVal X As Integer) As Integer
        Dim strsql As String

        If X = 1 Then
            strsql = "select COUNT(*) from DataNews  WHERE (From1 LIKE '%" & Trim(labname.Text) & "%')"
        End If
        

        Dim myconn As New SqlConnection(GetSql())
        myconn.Open()
        Dim mycommand As New SqlCommand(strsql, myconn)
        Dim countrec As Integer = mycommand.ExecuteScalar


        myconn.Close()
        Return countrec

    End Function

    Protected Sub cmdfine_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdfine.Click
        Response.Redirect("outbox.aspx?para1=" & Trim(txtfind.Text) & "&nid=" & Request.QueryString("nid"))
    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        GridView1.DataBind()
    End Sub

   


End Class
