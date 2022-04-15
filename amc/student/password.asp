<% 
Dim Conn, cStr, sql, RS, userid , username, userpwd
userid = Request.Form("userid")
username = Request.Form("username")
userpwd = Request.Form("userpwd")
Set Conn = Server.CreateObject("ADODB.Connection")
cStr = "DRIVER={Microsoft Access Driver (*.mdb)};"
cStr = cStr & "DBQ=" & Server.MapPath("DataStudent.mdb") & ";"
Conn.Open(cStr)
sql = "select * from Student where userid = '" & userid & "'"
Set RS = Conn.Execute(sql)
If RS.BOF And RS.EOF Then
    Response.Redirect "signin2.asp"
Else
    Response.Redirect "liststudent.asp?nid=" & userid
End If
%>