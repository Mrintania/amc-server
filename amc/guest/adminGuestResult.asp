<%
		    Function HTML_TAG(oldString)
                 HTML_TAG=oldString
                 HTML_TAG=Replace(HTML_TAG,"<","&lt;")
                 HTML_TAG=Replace(HTML_TAG,">","&gt;")
                 HTML_TAG=Replace(HTML_TAG,chr(13),"<BR>")
			end function
         id=Request.QueryString("ID")
         Name=HTML_TAG(Request.QueryString("Name"))
         Email=HTML_TAG(Request.QueryString("Email"))
         HomePage=HTML_TAG(Request.QueryString("HomePage"))
         Icq=Request.QueryString("Icq")
         Msg=HTML_TAG(Request.QueryString("Msg"))
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<meta http-equiv="Content-Language" content="th">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>การแก้ไข</title>
<style type="text/css">
        body         {font-family: MS Sans Serif,Tahoma ;font-size:10pt}
      td           {font-family: MS Sans Serif,Tahoma ;font-size:10pt}
        a:hover   { font-family: MS Sans Serif,Tahoma; font-size: 10pt; color: #000080; font-weight: bold; text-decoration:none }
        a               { font-family: MS Sans Serif,Tahoma; font-size: 10pt; color: #FF9900; text-decoration:none }
</style>
</head>
<%
        Set         Conn=Server.CreateObject("ADODB.Connection")
                Conn.Open "Driver={Microsoft Access Driver (*.mdb)};DBQ="&Server.MapPath("GuestBook.mdb")
               Sql="Update GuestBook set Name='"& Name &"', Email='" & Email & "', HomePage='" & HomePage & "', Icq='" & Icq & "', Msg='" & Msg & "' where id=" & id
               Conn.Execute(Sql)
               Conn.Close
%>
<body background="images/arttard.gif">
<br><br><br><br><br><br><center>การแก้ไขเสร็จเรียบร้อยครับ<br>
<a href="GuestBookView.asp?PageNo=<% =Request.QueryString("PageNo") %>">กลับไปหน้า GuestBook</a></center>
</body>
</html>