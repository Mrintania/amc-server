<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

<head>

<title>����¹������</title>

</head>

<body>

<center>





<%
   Set Conn=Server.CreateObject("ADODB.Connection")
   Conn.Open ("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.Mappath("edi_out.mdb"))
   sql="select * from div6send"
   Set rs=Conn.Execute(SQL)
 %>

<FONT FACE="MS Sans SERIF" SIZE=2 color=#0000ff><B>����¹���͡���</B></FONT>
<br>
<center>
<table width=95% border=0 bgcolor=#0000ff>
<TR>
<TD ALIGN = CENTER BGCOLOR="#cccccc">
<FONT FACE="MS Sans SERIF" SIZE=1 color=#0000ff><B>�.�.�.</B></FONT>
</TD>

<TD ALIGN = CENTER BGCOLOR="#cccccc">
<FONT FACE="MS Sans SERIF" SIZE=1 color=#0000ff><B>����ͧ</B></FONT>
</TD>

<TD ALIGN = CENTER BGCOLOR="#cccccc">
<FONT FACE="MS Sans SERIF" SIZE=1 color=#0000ff><B>���������Ṻ��</B></FONT>
</TD>

<TD ALIGN = CENTER BGCOLOR="#cccccc">
<FONT FACE="MS Sans SERIF" SIZE=1 color=#0000ff><B>����Ѻ</B></FONT>
</TD>

</TR>

<%Rs.MOVEFIRST%>
<%Do While Not RS.EOF %>
   <TR>
   <TD bgcolor=#ffffff width=20%>&nbsp;&nbsp;<FONT FACE="MS Sans SERIF" COLOR="blue" size=1><%=RS("start_date")%></FONT></TD>
   <TD bgcolor=#ffffff width=50%>&nbsp;&nbsp;<FONT FACE="MS Sans SERIF" COLOR="blue" size=1><%=RS("Qsubject1")%></FONT></TD>
   <TD bgcolor=#ffffff width=15%>&nbsp;&nbsp;<FONT FACE="MS Sans SERIF" COLOR="blue" size=1><%=RS("Qpicture")%></FONT></TD>
   <TD bgcolor=#ffffff width=15%>&nbsp;&nbsp;<FONT FACE="MS Sans SERIF" COLOR="blue" size=1><%=RS("Qto")%></FONT></TD>
   </TR>

   <%
   RS.MoveNext
   Loop%>
</table>
</center>
</body>
</html>