Imports System.Web.Security
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page
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
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'If FormsAuthentication.Authenticate(txtUser.Text, txtPass.Text) Then
        '    FormsAuthentication.RedirectFromLoginPage(txtUser.Text, True)

        Call login()
        'Else
        'Response.Redirect("DontPass.aspx")
        'End If

    End Sub

    Protected Sub login()

        Dim strconn As String = GetSql()
        Dim strsql As String = "Select * From UserTable Where Username = '" & LCase(Trim(txtUser.Text)) & "' And Userpwd = '" & LCase(Trim(txtPass.Text)) & "'"
        Dim myconn As New SqlConnection(strconn)
        Dim mydata As New SqlDataAdapter(strsql, myconn)
        Dim ds As New DataSet()
        mydata.Fill(ds, "UserTable")

        If ds.Tables("UserTable").Rows.Count = 0 Then
            Response.Redirect("DontPass.aspx")
        Else
            If (Trim(ds.Tables("UserTable").Rows(0).Item("Username")) = "admin") Then
                Call addlogin(ds.Tables("UserTable").Rows(0).Item("Namestation"))
                myconn.Close()
                Response.Redirect("setupadmin.aspx")
            Else
                Session("namestation") = ds.Tables("UserTable").Rows(0).Item("Namestation")
                Call addlogin(ds.Tables("UserTable").Rows(0).Item("Namestation"))

                'แยกกรรมการ
                Dim aad As Integer = ds.Tables("UserTable").Rows(0).Item("Id")
                'Dim aad1 As String
                Dim valsec As Integer
                'Dim cryptoHelper As New CryptographyHelper
                valsec = RandomNum(1, 90)
                'aad1 = cryptoHelper.Encrypt(aad.ToString, valsec.ToString)
                'aad1 = aad1


                'TextBox1.Text = aad1
                'TextBox1.Text = aad1.Remove(0, 1)
                'TextBox2.Text = aad1

                'If Trim(ds.Tables("UserTable").Rows(0).Item("Namestation")) = "ทภ.2 (กรรมการ)" Then
                '    myconn.Close()
                '    Response.Redirect("inbox.aspx?Pd=" & valsec.ToString & "&nid=" & aad1)
                If Trim(ds.Tables("UserTable").Rows(0).Item("CheckLevel")) = "0" Then
                    myconn.Close()
                    Response.Redirect("setupadmin.aspx")
                ElseIf Trim(ds.Tables("UserTable").Rows(0).Item("CheckLevel")) = "0.1" Then
                    Session("namestation") = ds.Tables("UserTable").Rows(0).Item("Namestation")
                    Response.Redirect("outbox1.aspx?Pd=" & valsec.ToString & "&nid=" & aad)
                    myconn.Close()
                ElseIf Trim(ds.Tables("UserTable").Rows(0).Item("CheckLevel")) = "2" Then
                    Session("namestation") = ds.Tables("UserTable").Rows(0).Item("Namestation")
                    Response.Redirect("inbox2.aspx?Pd=" & valsec.ToString & "&nid=" & aad)
                    myconn.Close()
                ElseIf Trim(ds.Tables("UserTable").Rows(0).Item("CheckLevel")) = "3" Then
                    Session("namestation") = ds.Tables("UserTable").Rows(0).Item("Namestation")
                    myconn.Close()
                    Response.Redirect("inbox.aspx?Pd=" & valsec.ToString & "&nid=" & aad)
                ElseIf Trim(ds.Tables("UserTable").Rows(0).Item("CheckLevel")) = "4" Then
                    Session("namestation") = ds.Tables("UserTable").Rows(0).Item("Namestation")
                    myconn.Close()
                    Response.Redirect("inbox4.aspx?Pd=" & valsec.ToString & "&nid=" & aad)
                ElseIf Trim(ds.Tables("UserTable").Rows(0).Item("CheckLevel")) = "5" Then
                    Session("namestation") = ds.Tables("UserTable").Rows(0).Item("Namestation")
                    myconn.Close()
                    Response.Redirect("inbox5.aspx?Pd=" & valsec.ToString & "&nid=" & aad)

                    'Dim aad As Integer = ds.Tables("UserTable").Rows(0).Item("Id")
                    'myconn.Close()
                    'Response.Redirect("inbox.aspx?nid=" & aad)
                End If

            End If
        End If
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
    Private Sub addlogin(ByVal X As String)

        'TextBox1.Text = Request.QueryString("postid")
        Dim strsql As String
        Dim strA As String
        strA = Trim(X)

        Dim myconn As New SqlConnection(GetSql())
        myconn.Open()
        strsql = "INSERT INTO Login ( Unit  ) VALUES ('" & strA & "')"
        Dim mycommand1 As New SqlCommand(strsql, myconn)
        mycommand1.ExecuteScalar()
        myconn.Close()


    End Sub


    '   Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) _
    'Handles MyBase.Load
    '       Session.Abandon()
    '       FormsAuthentication.SignOut()
    '   End Sub

    Function RandomNum(ByVal intLowerBound As Integer, ByVal intUpperBound As Integer) As Integer
        Dim intRangeSize As Integer ' ตัวแปรคำนวณหาค่าช่วงระหว่างค่าต่ำสุด และ ค่าสูงสุด
        Dim sngRandomValue As Integer ' สุ่มตัวเลขจาก 0 ถึงช่วงระหว่างค่าต่ำสุด และ ค่าสูงสุด
        Dim intRandomInteger As Integer ' เก็บค่าที่ได้จากการสุ่มเรียบร้อย

        ' เป็นการสลับค่ากันของตัวแปร 2 ตัว (Swap - อ่านว่าสว็อป มิใช่ สะแว็ป เด้อพี่น้อง) หากค่าสูงสุดที่กำหนดมา ดันทะลึ่งมีค่าน้อยกว่าค่าต่ำสุด
        ' เช่น intLowerBound = 20
        ' แต่ intUpperBound = 1
        ' ดังนั้นผมจะสลับค่าที่อยู่ในตัวแปรทั้งสอง นั่นคือ intLowerBound จะมีค่าเป็น 1 ส่วน intUpperBound จะมีค่าเป็น 20 แทน
        If intLowerBound > intUpperBound Then
            Dim iTemp As Integer ' สร้างตัวแปรไว้เก็บค่าชั่วคราว
            iTemp = intLowerBound ' เอาค่าต่ำสุด (อันที่จริงค่านี้คือ 20) ไปพักไว้ตัวแปรชั่วคราวก่อน ดังนั้น iTemp = 20
            intLowerBound = intUpperBound ' เอาค่าสูงสุด (อันที่จริงคือ 1) มาเก็บไว้ในตัวแปร intLowerBound นั่นคือตัวแปรตัวนี้จะมีค่า = 1
            intUpperBound = iTemp ' เอาค่าที่อยู่ในตัวแปรชั่วคราว (20) มาใส่เข้าไปในตัวแปร intUpperBound นั่นคือตัวแปรตัวนี้จะมีค่า = 20
        End If
        ' วิธีการนี้ก็จะทำให้เกิดการสลับค่าระหว่างตัวแปรได้แล้วครับ
        ' หากใครเรียนการเขียนโปรแกรมคอมพิวเตอร์มา หากไม่ได้เขียนโปรแกรม SWAP แบบนี้มา ถือว่าเชยระเบิดจริงๆ
        ' ที่ผมอธิบายเอาไว้ก็เพราะเผื่อสำหรับคนที่เข้ามาอ่าน แต่ไม่ได้เรียนคอมฯมาโดยตรงจะได้พอเข้าใจบ้างไงครับ ... พี่น้อง

        ' ใช้ฟังค์ชั่นในการสุ่มจากนาฬิกาของระบบก่อนครับ
        Randomize()

        ' ====================================================
        ' คำนวณหาช่วงระยะห่าง (Range) โดย ... ค่าสูงสุด - ค่าต่ำสุด + 1 เช่น 20 - 1 + 1 = 20
        intRangeSize = intUpperBound - intLowerBound + 1 ' บวกไปอีก 1 เพื่อไม่ให้เกิดค่าในการคำนวณ (จะนำไปสุ่ม) เป็น 0 เช่น 2 - 2 + 1 = 1

        ' สุ่มตัวเลขจาก 0 ถึง ระยะห่าง (จากตัวอย่าง นั่นคือ 0 - 20)
        ' หากเราใช้ฟังค์ชั่น Rnd() อย่างเดียวมันจะไม่ Work ครับเพราะคำสั่งนี้ (หรือฟังค์ชั่น) มันจะคืนค่ากลับมาระหว่าง 0 <= ค่าที่ได้ < 1
        sngRandomValue = intRangeSize * Rnd()

        sngRandomValue = sngRandomValue + intLowerBound

        ' เปลี่ยนค่าที่ได้จากเลขทศนิยมให้กลายเลขจำนวนเต็ม เท่านี้ก็ได้คำตอบแล้วขอรับ
        intRandomInteger = Int(sngRandomValue)
        ' ====================================================

        ' จาก 4 บรรทัดคำสั่งด้านบน เขียนโค้ดให้สั้นๆ กระชับหน่อย ก็จะเหลือแค่นี้ครับ
        ' intRandomInteger = Int((intUpperBound - intLowerBound + 1) * Rnd + intLowerBound)
        ' พิจารณาลำดับความสำคัญ (Priority) ด้วยน่ะครับ มันเริ่มทำงานจากนิพจน์วงเล็บในสุดก่อน
        ' ผลที่ได้จึงนำมาคูณกับ Rnd เพราะการคูณ มีความความสำคัญสูงกว่า การบวก
        ' อย่าเพียงแต่ Copy Code ไปเฉยๆ ต้องศึกษาการทำงานใ้ห้ละเอียดถี่ถ้วนด้วย ...
        ' *** มิเช่นนั้นอาจเกิด Logical Error ได้ ***

        ' จัดแจงแสดงผลเลยครับ โดยการคืนค่ากลับมาของฟังค์ชั่นนั่นแหละ ... พี่น้อง
        Return intRandomInteger
    End Function

End Class
