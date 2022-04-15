<% if Session("Level")="" then
              Session("Level")=100
      end if
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<meta http-equiv="Content-Language" content="th">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>ขอมูลที่ขอเรียกดู</title>
<style type="Text/css">
        input.text {font-family: MS Sans Serif; font-size: 10pt; background-color: #FFFFFF; border-style: solid; border-width: 1}
                body {font-family:MS Sans Serif, Tahoma;font-size:10pt}
        td     {font-family:MS Sans Serif, Tahoma;font-size:10pt}
        a            { font-family: MS Sans Serif,Tahoma; font-size: 10pt; color: blue;text-decoration: none }
        a:hover      { font-family: MS Sans Serif,Tahoma; font-size: 10pt; color: #FF0000; text-decoration: none;}
        a:visit      { font-family: MS Sans Serif,Tahoma; font-size: 10pt;  text-decoration: none;}
</style>
</head>


<body background="images/arttard.gif">

<%      if Session("Level")>3 then %>
        <br><br><center>การเรียกข้อมูลส่วนการแก้ไข<a href="../GuestBookView.asp"> GuestBook</a> จะต้องเป็น Admin ตั้งแต่ระดับ 3 ขึ้นไปเท่านั้นครับ</center>
<% elseif  Session("Level")=<3 then

         id = request.QueryString("ID")
         PageNo=request.querystring("PageNo")

        Set         Conn=Server.CreateObject("ADODB.Connection")
                Conn.Open "Driver={Microsoft Access Driver (*.mdb)};DBQ="&Server.MapPath("GuestBook.mdb")

               Sql="Select *  from GuestBook where id=" & id
        Set Rs=Server.CreateObject("ADODB.Recordset")
                Rs.Open Sql ,Conn ,1 ,3

				Function HTML_TAG(oldString)
					HTML_TAG=oldString
					HTML_TAG=Replace(HTML_TAG,"&lt;","<")
					HTML_TAG=Replace(HTML_TAG,"&gt;",">")
					HTML_TAG=Replace(HTML_TAG,"<BR>",chr(13))
				End Function

        Name=HTML_TAG(Rs("Name"))
        Msg=HTML_TAG(Rs("Msg"))
  %>
<div align="center">
  <center>

      <form method="get" action="adminGuestResult.asp">
        <table border="0" width="500">
          <tr>
            <td width="75" align="right">
              <p align="center"><b>ID.<input type="hidden" name="id" size="1" value=<% =Rs("ID") %>><% =Rs("ID") %></b><input type="hidden" name="PageNo" size="1" value=<% =PageNo %>></td>
            <td width="75" align="right"><b>ชื่อ:&nbsp;</b></td>
            <td width="350"><b></b><input type="text" name="Name" size="55" class=text value="<% =Name %>"></td>
          </tr>
          <tr>
            <td width="150" align="right" valign="top" colspan="2"><b>E-Mail
              :&nbsp;</b></td>
            <td width="350"><b></b><input type="text" name="Email" size="55" class=text value="<% =Rs("Email") %>"></td>
          </tr>
          <tr>
            <td width="150" align="right" colspan="2"><b>HomePage
              :&nbsp;</b></td>
            <td width="350" align="left">

                <b><input type="text" name="HomePage" size="35" class=text value="<% =Rs("HomePage") %>">
                ระบุ http:// ด้วย</b>

                </td>
          </tr>
          <tr>
            <td width="150" align="right" colspan="2"><b>ICQ-UIN
              :&nbsp;</b></td>
            <td width="350" align="left">

                <input type="text" name="Icq" size="55" class=text value="<% =Rs("Icq") %>">

                </td>
          </tr>
          <tr>
            <td width="150" align="right" colspan="2" valign="top"><b>คำแนะนำ</b></td>
            <td width="350" align="left"><b><textarea rows="5" name="Msg" cols="55" style="font-family: MS Sans Serif; font-size: 10pt; background-color: #FFFFFF; border-style: solid; border-width: 1"><% =Msg %></textarea></b>

                </td>
          </tr>
          <tr>
            <td width="150" align="right" colspan="2">&nbsp;</td>
  </center>
            <td width="350" align="left" bgcolor="#FFFFFF">
              <p align="right"><input type="submit" value="แก้ไขข้อมูล" name="submit" style="font-family: MS Sans Serif; font-size: 8pt"></p>

                </td>
          </tr>
        </table>
        </form>

</div>
<% end if %>
</body>

</html>