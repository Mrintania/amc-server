<% 
Dim Conn, cStr, sql, RS, username, userpwd
username = Request.Form("username")
userpwd = Request.Form("userpwd")
Set Conn = Server.CreateObject("ADODB.Connection")
cStr = "DRIVER={Microsoft Access Driver (*.mdb)};"
cStr = cStr & "DBQ=" & Server.MapPath("password.mdb") & ";"
Conn.Open(cStr)
sql = "select username from UserTable  where username = '" & LCase(username) & "'"
sql = sql & " and userpwd = '" & LCase(userpwd) & "'"
Set RS = Conn.Execute(sql)
If RS.BOF And RS.EOF Then
Response.Redirect  "notpass.asp"
Else
    Session("UserLoggedIn") = "true"
    Response.Redirect  ""& username &".asp"
End If
%>


