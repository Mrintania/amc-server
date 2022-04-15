
Partial Class LoinList
    Inherits System.Web.UI.Page

    Protected Sub cmdfine_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdfine.Click
        Response.Redirect("LoinList.aspx?txtfind=" & txtfind.Text & "")
    End Sub
End Class
