<% id=request.querystring("ID") %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<meta http-equiv="Content-Language" content="th">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>���ź Guest Record</title>
<style type="text/css">
body         {font-family: MS Sans Serif,Tahoma ;font-size:10pt}
       td           {font-family: MS Sans Serif,Tahoma ;font-size:10pt}
a:hover   { font-family: MS Sans Serif,Tahoma; font-size: 10pt; color: #000080; font-weight: bold; text-decoration:none }
a               { font-family: MS Sans Serif,Tahoma; font-size: 10pt; color: #FF9900; text-decoration:none }

</style>
</head>

<body background="images/arttard.gif">
<%
        Set         Conn=Server.CreateObject("ADODB.Connection")
                Conn.Open "Driver={Microsoft Access Driver (*.mdb)};DBQ="&Server.MapPath("GuestBook.mdb")

               Sql="Delete from GuestBook where id=" & id
               Conn.Execute(Sql)
               Conn.Close
  %>
<br>
<br>
<br><br><br><br><center>Record �����ź�͡�<br>
���º�������� <A Href="guestbookview.asp">��Ѻ�˹�� GuestBook</A></center>
</body>

</html>