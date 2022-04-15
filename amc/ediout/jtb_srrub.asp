<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

<head>

<title>ทะเบียนข่าวรับ</title>

</head>

<body>

<center>





<%
   Set Conn=Server.CreateObject("ADODB.Connection")
   Conn.Open ("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.Mappath("edi_out.mdb"))
   sql="select * from jtb_sr"
   Set rs=Conn.Execute(SQL)
 %>

<FONT FACE="MS Sans SERIF" SIZE=2 color=#0000ff><B>ทะเบียนรับเอกสาร</B></FONT>
<br>
<center>
<table width=95% border=0 bgcolor=#0000ff>
<TR>
<TD ALIGN = CENTER BGCOLOR="#cccccc">
<FONT FACE="MS Sans SERIF" SIZE=1 color=#0000ff><B>ว.ด.ป.</B></FONT>
</TD>

<TD ALIGN = CENTER BGCOLOR="#cccccc">
<FONT FACE="MS Sans SERIF" SIZE=1 color=#0000ff><B>เรื่อง</B></FONT>
</TD>

<TD ALIGN = CENTER BGCOLOR="#cccccc">
<FONT FACE="MS Sans SERIF" SIZE=1 color=#0000ff><B>จาก</B></FONT>
</TD>

<TD ALIGN = CENTER BGCOLOR="#cccccc">
<FONT FACE="MS Sans SERIF" SIZE=1 color=#0000ff><B>ชื่อไฟล์ที่แนบมา</B></FONT>
</TD>

</TR>

<%Rs.MOVEFIRST%>
<%Do While Not RS.EOF %>
   <TR>
   <TD bgcolor=#ffffff width=20%>&nbsp;&nbsp;<FONT FACE="MS Sans SERIF" COLOR="blue" size=1><%=RS("start_date")%></FONT></TD>
   <TD bgcolor=#ffffff width=50%>&nbsp;&nbsp;<FONT FACE="MS Sans SERIF" COLOR="blue" size=1><%=RS("Qsubject1")%></FONT></TD>
   <TD bgcolor=#ffffff width=15%>&nbsp;&nbsp;<FONT FACE="MS Sans SERIF" COLOR="blue" size=1><%=RS("Qfrom")%></FONT></TD>
   <TD bgcolor=#ffffff width=15%>&nbsp;&nbsp;<FONT FACE="MS Sans SERIF" COLOR="blue" size=1><%=RS("Qpicture")%></FONT></TD>
   </TR>

   <%
   RS.MoveNext
   Loop%>
</table>
</center>
</body>
</html>