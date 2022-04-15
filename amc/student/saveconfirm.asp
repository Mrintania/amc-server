<html>
<head>
<META HTTP-EQUIV="REFRESH" content="3;URL=DataStudent.asp">
<TITLE>confirm</title>
</head>
<body>

<%
   idstudent=Request.QueryString("nid")
   Set Conn=Server.CreateObject("ADODB.Connection")
   Conn.Open ("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.Mappath("DataStudent.mdb"))
   sql="Insert Into DataLogin ( IDStudent ) Values ('" & idstudent & "')"
   Set rs=Conn.Execute(SQL)
 %>

</body>
</html>

