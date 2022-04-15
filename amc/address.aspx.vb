
Partial Class address
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
    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init

        Dim strconn As String = GetSql()
        Dim strsql As String

        strsql = "Select * From Up_namestation Where (Status = 1) ORDER BY Id ASC "

        Dim myconn As New SqlConnection(strconn)
        Dim mydata As New SqlDataAdapter(strsql, myconn)
        Dim ds As New DataSet()
        mydata.Fill(ds, "Up_namestation")
        DropDownList1.DataSource = ds.Tables("Up_namestation")
        DropDownList1.DataBind()

        myconn.Close()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strconn As String = GetSql()
        Dim strsql As String

        strsql = "Select * From NameStation Where (Id <> 1) And (Up_name like '%" & DropDownList1.Text & "%')  And (roleID =1)"

        Dim myconn As New SqlConnection(strconn)
        Dim mydata As New SqlDataAdapter(strsql, myconn)
        Dim ds As New DataSet()
        mydata.Fill(ds, "NameStation")
        GridView1.DataSource = ds.Tables("NameStation")
        GridView1.DataBind()

        myconn.Close()
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        Dim strconn As String = GetSql()
        Dim strsql As String

        strsql = "Select * From NameStation Where (Id <> 1) And (Up_name like '%" & DropDownList1.Text & "%') And (roleID =1)"

        Dim myconn As New SqlConnection(strconn)
        Dim mydata As New SqlDataAdapter(strsql, myconn)
        Dim ds As New DataSet()
        mydata.Fill(ds, "NameStation")
        GridView1.DataSource = ds.Tables("NameStation")
        GridView1.DataBind()

        myconn.Close()

    End Sub
End Class
