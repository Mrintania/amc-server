
Partial Class AddLogin
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

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        If TextBox1.Text = "" Then
            UserMsgBox("กรุณาเลือก UserName.....!")
        ElseIf NameTextBox.Text = "" Then
            UserMsgBox("กรุณาเลือก Password.....!")
        ElseIf TextBox3.Text = "" Then
            UserMsgBox("กรุณาเลือก หน่วย..!")
        ElseIf DropDownList1.Text = "กรุณาเลือก" Then
            UserMsgBox("กรุณาเลือก หน่วยเหนือ..!")
        Else

            Dim d1, d2, d3, d5 As String

            d1 = TextBox1.Text
            d2 = NameTextBox.Text
            d3 = TextBox3.Text
            d5 = DropDownList1.Text


            Dim Sql As String

            Sql = "INSERT INTO UserTable (  Username , Userpwd  , Namestation , Up_id ) VALUES ('" & d1 & "','"
            Sql = Sql & d2 & "','"
            Sql = Sql & d3 & "',"
            Sql = Sql & d5 & ")"

            Dim myconn As New SqlConnection(GetSql())
            myconn.Open()
            Dim mycommand As New SqlCommand(Sql, myconn)
            mycommand.ExecuteScalar()
            myconn.Close()

            Response.Redirect("SaveLogin.aspx")

        End If
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        Dim i As Integer
        Dim str, str1 As String


        Dim strconn As String = GetSql()
        Dim myconn As New SqlConnection(strconn)

        Dim strsql As String = "Select * From Up_namestation "
        Dim mydata As New SqlDataAdapter(strsql, myconn)
        Dim ds As New DataSet()
        mydata.Fill(ds, "DataNews")

        Dim countrec As Integer = ds.Tables("DataNews").Rows.Count
        DropDownList1.Items.Add("กรุณาเลือก")
        For i = 0 To countrec - 1
            str = ds.Tables("DataNews").Rows(i).Item("Up_name")
            str1 = ds.Tables("DataNews").Rows(i).Item("Id")
            DropDownList1.Items.Add(New ListItem(str, str1))
        Next
        myconn.Close()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("setuplogin.aspx")
    End Sub
End Class
