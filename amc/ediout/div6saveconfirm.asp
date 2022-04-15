<html>
<head>
<META HTTP-EQUIV="REFRESH" content="3;URL=div6.asp">
<TITLE>confirm</title>
</head>
<body bgcolor=#ffffff>

<%
   gdiv6confirm=Request.QueryString("gdiv6confirm")
   gnumber=Request.QueryString("gnumber")
   Set Conn=Server.CreateObject("ADODB.Connection")
   Conn.Open ("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.Mappath("edi_out.mdb"))
   sql="Update t_com set div6confirm='"&Request.Form("gdiv6confirm")& "' where Qnumber="&Request.form("gnumber")
   Set rs=Conn.Execute(SQL)
 %>
<!-- แสดงข้อความที่ได้รับตอบกลับ -->
<table border="1" bgcolor="#f6f6de">
<tr><td align="CENTER"><font  face='ms Sans Serif' size=3>
ตอบรับข่าวเรียบร้อยแล้ว รอ 3 วินาที ไม่ต้องกดปุ่มใดๆ
</font>
</td></tr>
</table>


</body>
</html>

