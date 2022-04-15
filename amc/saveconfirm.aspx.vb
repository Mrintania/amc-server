
Partial Class saveconfirm
    Inherits System.Web.UI.Page
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
        Dim strsql As String
        Dim strA, strB As String

        strA = Trim(Request.QueryString("postid"))
        Label2.Text = Request.QueryString("nid")
        Label1.Text = select_name(CInt(Label2.Text))

        strB = Trim(Label1.Text)
        strsql = "select COUNT(*) FROM ConfirmTable  WHERE  (ConfirmID =" & strA & ") AND (ConfirmStation ='" & strB & "')"

            Dim myconn As New SqlConnection(GetSql())
            myconn.Open()
            Dim mycommand As New SqlCommand(strsql, myconn)
            Dim countrec As Integer = mycommand.ExecuteScalar

            myconn.Close()
            If countrec = 0 Then

                myconn.Open()
                strsql = "INSERT INTO ConfirmTable ( ConfirmID , ConfirmStation ) VALUES (" & strA & ",'"
                strsql = strsql & strB & "')"
                Dim mycommand1 As New SqlCommand(strsql, myconn)
                mycommand1.ExecuteScalar()
                myconn.Close()

            End If

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
End Class
