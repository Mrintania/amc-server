<html>
<head>
<META HTTP-EQUIV="REFRESH" content="3;URL=mtb24.asp">
<TITLE>confirm</title>
</head>
<body bgcolor=#ffffff>

<%
   gmtb24confirm=Request.QueryString("gmtb24confirm")
   gnumber=Request.QueryString("gnumber")
   Set Conn=Server.CreateObject("ADODB.Connection")
   Conn.Open ("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.Mappath("edi_out.mdb"))
   sql="Update t_com set mtb24confirm='"&Request.Form("gmtb24confirm")& "' where Qnumber="&Request.form("gnumber")
   Set rs=Conn.Execute(SQL)
 %>
<!-- �ʴ���ͤ���������Ѻ�ͺ��Ѻ -->
<table border="1" bgcolor="#f6f6de">
<tr><td align="CENTER"><font  face='ms Sans Serif' size=3>
�ͺ�Ѻ�������º�������� �� 3 �Թҷ� ����ͧ��������
</font>
</td></tr>
</table>


</body>
</html>

