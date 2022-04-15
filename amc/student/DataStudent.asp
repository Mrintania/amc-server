<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<title>รายชื่อนักเรียน</title>
<style type="text/css">
<!--
body {
	background-image: url(pic/logonew2.jpg);
}
.style5 {
	font-size: 16px;
	font-weight: bold;
	color: #0000FF;
}
-->
</style>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
</head>

<body>
<p>
<%
Set Conn=Server.CreateObject("ADODB.Connection")
Conn.Open ("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.Mappath("news.mdb"))
Sql="SELECT Count([IDStudent]) AS read FROM QListStudent;"
Set rs=Conn.Execute(SQL)
%>
<font face="ms Sans Serif" size="2" color=#ffffff><b>จำนวนคนที่ เข้ามาใช้งานทั้งหมด</b></font>&nbsp;&nbsp;
<font face="ms Sans Serif" size="2" color=#ff0000><b><%= RS("read")%></b></font>&nbsp;&nbsp;
  <%
 		page=request.querystring("page")
		if page="" then page=1
		page=cint(page)
			Set Conn=Server.CreateObject("ADODB.Connection")
			Conn.Open ("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.Mappath("DataStudent.mdb"))
			Sql="Select * from QListStudent order by IDlogin; "
			Set RS =Server.CreateObject("ADODB.Recordset")
			RS.open Sql,Conn, 1, 3
						
 		 On Error Resume Next
	 	gtotal=rs.RecordCount
		RS.pagesize=20
		ttpage=rs.pagecount
		rs.absolutepage=page
 %>
</p>
<table width="66%" align="center" bordercolor="#000000">
  <tr bordercolor="#000000" bgcolor="#0099FF">
    <td align = CENTER><font face="MS Sans SERIF" size=2 color=#FFFFCC><b>ลำดับ</b></font></td>
	 <td width="14%" align = CENTER><font face="MS Sans SERIF" size=2 color=#FFFFCC><b>รหัส</b></font></td>
    <td width="25%" align = CENTER><font face="MS Sans SERIF" size=2 color=#FFFFCC><b>ชื่อ</b></font></td>
    <td width="25%" align = CENTER><font face="MS Sans SERIF" size=2 color=#FFFFCC><b>นามสกุล</b></font></td>   
	<td width="14%" align = CENTER><font face="MS Sans SERIF" size=2 color=#FFFFCC><b>เวลา</b></font></td>
  </tr>
 
  <%
  count=1
   Do while Not RS.EOF and count <= 20
   if bg="#f6f6de" then bg="ffffff" else bg="#dddddd"    
 %>
  <tr bordercolor="#000000" bgcolor="#E5F8B8">
    <td width=10% height="25">&nbsp;&nbsp;<font face="MS Sans SERIF" color="blue" size=2><b><%=i%></b></font></td>
    <td>&nbsp;&nbsp;<font face="MS Sans SERIF" color="blue" size=2><b><%=RS("IDStudent")%></b></font></td>
    <td>&nbsp;&nbsp;<font face="MS Sans SERIF" color="blue" size=2><b><%=RS("Name")%></b></font></td>
    <td>&nbsp;&nbsp;<font face="MS Sans SERIF" color="blue" size=2><b><%=RS("Sername")%></b></font></td>
    <td>&nbsp;&nbsp;<font face="MS Sans SERIF" color="blue" size=2><b><%=RS("DateTimeNow")%></b></font></td>
  </tr>
  <%rs.MoveNext
     count=count+1
     loop
     rs.Close
     conn.close
     response.write  "</table><br>"
     response.write "<table border='0' cellspacing='0' width='100%'><tr><td bgcolor=#999999><font face='ms Sans Serif' size=2 color='ffffff'>"
     response.write "หน้า " & page & "/" & ttpage & " จากทั้งหมด &nbsp;"
     if page=1 then
        response.write "<a href=DataStudent.asp?page=1>[Prev]</a>&nbsp;&nbsp;" 
     else
        response.write "<a href=DataStudent.asp?page=" & page1 & ">[Prev]</a>&nbsp;&nbsp;" 
     end if 
     for i = 1 to cint(ttpage)
        response.write "<a href=DataStudent.asp?page=" & i &  ">" & i & "</a>&nbsp;&nbsp;"
     next
     if cint(page)=cint(ttpage) then
        response.write "<a href=DataStudent.asp?page=" & ttpage & ">[Next]</a>" 
     else
       response.write "<a href=DataStudent.asp?page=" & page+1 & ">[Next]</a>" 
     end if 
     %>
</table> </p>
</body>
</html>
