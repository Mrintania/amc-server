
Partial Class setupadmin
    Inherits System.Web.UI.Page


    Protected Sub cmdfine_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdfine.Click
        Response.Redirect("setupadmin.aspx?txtfind=" & txtfind.Text & "&DropDownList1=" & DropDownList1.Text & "")
    End Sub

    Protected Sub setupadmin_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        DropDownList1.SelectedIndex = 1
    End Sub

End Class
