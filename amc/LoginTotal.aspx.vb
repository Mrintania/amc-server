
Partial Class NewTotal
    Inherits System.Web.UI.Page
    Dim countRE, countSENT As Double
    Public Function GetSql() As String

        Dim FILENAME As String = Server.MapPath("sqlname.txt")

        'Get a StreamReader class that can be used to read the file
        Dim objStreamReader As StreamReader
        objStreamReader = File.OpenText(FILENAME)

        'Now, read the entire file into a string
        Dim contents As String = objStreamReader.ReadToEnd()

        Return Trim(contents)

    End Function
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Text = Date.Now.ToString
        countRE = 0
        countSENT = 0
    End Sub
    Public Function ImagesGet(ByVal X As String) As String
        'เช็คค่าเมลว่าเปิดอ่านหรือยัง
        Dim strsql As String = "Select count(*) From Login Where Unit Like '%" & Trim(X) & "%' "
        Dim myconn As New SqlConnection(GetSql())
        myconn.Open()
        Dim mycommand As New SqlCommand(strsql, myconn)
        Dim countrec As Integer = mycommand.ExecuteScalar
        Dim strpic As String

        If countrec = 0 Then
            strpic = "0"
        Else
            strpic = Convert.ToString(countrec)
        End If

        countRE = countRE + countrec

        Label4.Text = Convert.ToString(countRE)
        Label8.Text = Convert.ToString(Convert.ToDouble(Label4.Text) + Convert.ToDouble(Label6.Text))

        myconn.Close()

        Return strpic

    End Function
    Public Function ImagesGet1(ByVal X As String) As String
        'เช็คค่าเมลว่าเปิดอ่านหรือยัง
        Dim strsql As String = "Select count(*) From Logout Where Unit Like '%" & Trim(X) & "%'"
        Dim myconn As New SqlConnection(GetSql())
        myconn.Open()
        Dim mycommand As New SqlCommand(strsql, myconn)
        Dim countrec As Integer = mycommand.ExecuteScalar
        Dim strpic As String

        If countrec = 0 Then
            strpic = "0"
        Else
            strpic = Convert.ToString(countrec)
        End If

        countSENT = countSENT + countrec

        Label6.Text = Convert.ToString(countSENT)
        Label8.Text = Convert.ToString(Convert.ToDouble(Label4.Text) + Convert.ToDouble(Label6.Text))

        myconn.Close()

        Return strpic

    End Function
End Class
