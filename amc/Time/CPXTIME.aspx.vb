
Partial Class _CPXTIME
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Response.Redirect("CPXTIME.aspx?IdDay=" & DropDownList1.SelectedValue)
    End Sub
End Class
