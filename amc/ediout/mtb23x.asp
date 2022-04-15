<!doctype html public "-//w3c//dtd html 3.2//en">
<html>
<head>
<META HTTP-EQUIV="REFRESH" content="60;URL=mtb23.asp">
  <title>ข่าวรับ มทบ.23</title>
  <meta name="keywords" content="">
  <meta name="Generator" content="HTMLpad">
<style type="text/css">
A:link {
	COLOR: #000089; text-decoration: none}
A:visited {
	COLOR: #ff0000; text-decoration: none}
A:active {
	COLOR: #cccc99; text-decoration: none}
A.footer:active {
	COLOR: #cccc99; text-decoration: none}
A.footer:link {
	COLOR: #cccc99; text-decoration: none}
A.footer:visited {
	COLOR: #cccc99; text-decoration: none}
A.footer:hover {
	COLOR: #000000; text-decoration: none}
A.list:active {
	COLOR: #006633; text-decoration: none}
A.list:link {
	COLOR: #333366; text-decoration: none}
A.list:visited {
	COLOR: #006633; text-decoration: none}
A.list:hover {
	COLOR: #006633; text-decoration: none}
A.menu:active {
	COLOR: #000000; text-decoration: none}
A.menu:link {
	COLOR: #000000; text-decoration: none}
A.menu:visited {
	COLOR: #000000; text-decoration: none}
A.menu:hover {
	COLOR: #cc3300; text-decoration: none}
A.path:active {
	COLOR: #ffffff; text-decoration: none}
A.path:link {
	COLOR: #ffffff; text-decoration: none}
A.path:visited {
	COLOR: #ffffff; text-decoration: none}
A.path:hover {
	COLOR: #cccccc; text-decoration: none}
A:hover {
	COLOR: #cc3300; text-decoration: none}
.chit {  text-decoration: none}
</style>

<script language="JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
// -->
</script>
</head>

<body bgcolor="#FFFFFF">
<table width="780" border="0" cellspacing="0" cellpadding="0" bordercolor="#000000">
                          <tr valign=top bgcolor="#E8E8E8"> 
                            <td><b><font face="MS Sans Serif" size="2" color="#000066">|<a href=mtb23sendnews.asp target=_New> COMPOSE [ส่งข่าว] </a>|</font></b>
                            <b><font face="MS Sans Serif" size="2" color="#000066"><a href=mtb23.asp> INBOX [รับข่าว] </a>|</font></b>
                            <b><font face="MS Sans Serif" size="2" color="#000066"><a href=mtb23send.asp> OUTBOX [ตรวจสอบข่าวส่ง] </a>|</font></b></td>
	       <td align=right><font face="MS Sans Serif" size="2" color="#000066"><b>|<a href=signin.asp> EXIT </a>|</font></b></td>
                          </tr>
</table>

<br>

<table width="780" cellspacing=0 cellpadding=0 bgcolor=#ffffff>
<tr><td bgcolor=#99ff99><font face="ms Sans Serif" size="2" color=#000089><b>[ข่าวรับ มทบ.23]</b></font></td>
<td bgcolor=#99ff99 align=right>

<%
Set Conn=Server.CreateObject("ADODB.Connection")
Conn.Open ("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.Mappath("edi_out.mdb"))
Sql="SELECT Count([mtb23confirm]) AS read, Count([sum]) AS [all], Count([sum])-Count([mtb23confirm]) AS unread FROM mtb23;"
Set rs=Conn.Execute(SQL)
%>


<font face="ms Sans Serif" size="2" color=#000089><b>สำเนาที่รับทั้งสิ้น</b></font>&nbsp;&nbsp;
<font face="ms Sans Serif" size="2" color=#ff0000><b><%= RS("all")%></b></font>&nbsp;&nbsp;
<font face="ms Sans Serif" size="2" color=#000089><b>ฉบับ</b></font>&nbsp;&nbsp;&nbsp;&nbsp;
<font face="ms Sans Serif" size="2" color=#000089><b>สำเนาที่เปิดอ่านแล้ว</b></font>&nbsp;&nbsp;
<font face="ms Sans Serif" size="2" color=#ff0000><b><%= RS("read")%></b></font>&nbsp;&nbsp;
<font face="ms Sans Serif" size="2" color=#000089><b>ฉบับ</b></font>&nbsp;&nbsp;&nbsp;&nbsp;
<font face="ms Sans Serif" size="2" color=#000089><b>สำเนาที่ยังไม่ได้เปิดอ่าน</b></font>&nbsp;&nbsp;
<font face="ms Sans Serif" size="2" color=#ff0000><b><%= RS("unread")%></b></font>&nbsp;&nbsp;
<font face="ms Sans Serif" size="2" color=#000089><b>ฉบับ</b></font>&nbsp;&nbsp;&nbsp;&nbsp;
</tr>
</table>

<table width="780" border="0" cellspacing="0" cellpadding="0" bordercolor="#000000">
  <tr> 
    <td align="left" valign="top"> 
      <table width="100%" border="2" cellspacing="0" cellpadding="0" bordercolor="#689C38">
        <tr> 
          <td bgcolor="#FFFFFF" align="left" valign="top" height="42"> 
            <table width="100%" border="1" cellspacing="0" cellpadding="0" bordercolor="#689C38">
              <tr> 
                <td> 
                  <table width="100%" border="1" cellspacing="0" cellpadding="0" bordercolor="#000066">
                    <tr> 
                      <td align="left" valign="middle"> 
                        <table width="100%" bordercolor="#689C38" border=1 cellpadding="0" cellspacing="0">
                          <tbody> 
                          <tr valign=top bgcolor="#FFFFFF"> 
                            <form action="mtb23.asp" name="form1" method="post" >
                              <td colspan="8" align="center" height="32" valign="middle" bgcolor="#E7E7E7"> 
                                <div align="right"><b><font face="MS Sans Serif, Microsoft Sans Serif" size="2">ค้นหาข่าวเรื่อง</font> 
                                  <input type="text" name="keyword" value="<%=Request.Form("keyword")%>" size="5">
                                  <input type="submit" name="Submit" value="ค้นหา">
                                  </b></div>
                              </td>
                            </form>
                          </tr>
                          <tr valign=top bgcolor="#E8E8E8" align="center"> 
                            <td width="100"><b><font face="MS Sans Serif" size="2" color="#000066">จาก</font></b></td>
                            <td width="100"><b><font face="MS Sans Serif" size="2" color="#000066">ถึง</font></b></td>
                            <td width="400"><b><font face="MS Sans Serif" size="2" color="#000066">เรื่อง</font></b></td>
                            <td width="140"><b><font face="MS Sans Serif" size="2" color="#000066">ไฟล์ที่แนบมา</font></b></td>
                            <td width="70"><b><font face="MS Sans Serif" size="2" color="#000066">วันที่ส่งข่าว</font></b></td>
	       <td width=5%><font face='ms Sans Serif' size=2 color="#000066"><b>สถานะ</b></font></td>
	       <td width=5%><font face='ms Sans Serif' size=2 color="#000066"><b>ตอบรับ</b></font></td>
                          </tr>
                          <%  
page=request.querystring("page")
if page="" then page=1
page=cint(page)
thmonth=array("มกราคม.","กุมภาพันธ์.","มีนาคม.","เมษายน","พฤษภาคม","มิถุนายน","กรกฎาคม","สิงหาคม","กันยายน","ตุลาคม","พฤศจิกายน","ธันวาคม")
On error resume next
Set Conn=Server.CreateObject("ADODB.Connection")
Conn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.mappath("edi_out.mdb")
Sql= "SELECT * FROM mtb23 where  Qsubject1 Like '%"&Request.Form("keyword")&"%'"
Set RS =Server.CreateObject("ADODB.Recordset")
RS.open Sql,Conn,1,3
On Error Resume Next
gtotal=rs.RecordCount
RS.pagesize=49
ttpage=rs.pagecount
rs.absolutepage=page
%>
                          <%
  count=1
   Do while Not RS.EOF and count <= 49   
 %>
                          <tr valign=top bgcolor="#FFFFFF" align="left"> 
                            <td width="130"><b><font color="#003399" face="MS Sans Serif, Microsoft Sans Serif" size="2">&nbsp;<%=RS("Qfrom")%></font></b></td>
                            <td width="70"><font color="#003399" face="MS Sans Serif, Microsoft Sans Serif" size="2"><%=RS("Qto")%> 
                            <td width="400"><font color="#003399" face="MS Sans Serif, Microsoft Sans Serif" size="2">&nbsp;<%=RS("Qsubject1")%>&nbsp;&nbsp;</font></td>
                            <td width="140"><font color="#003399" face="MS Sans Serif, Microsoft Sans Serif" size="2"><a href="<%=RS("QPicture")%>" target=New><%=RS("QPicture")%></a></font></td>
                            <td width="70"><font color="#003399" face="MS Sans Serif, Microsoft Sans Serif" size="2"><%=RS("Start_Date")%> 
                              <b></b> </font></td>

	       <td align=center bgcolor=#ffffff><% pic=RS("mtb23confirm")
		 if pic="มทบ.23" then
			response.write "<img src=openmail.jpg>"
		 else
			response.write "<img src=closemail.jpg>"
		 end if
		%>
	       </td>         
	       <td align=middle><form name="webForm" method="post" action="mtb23saveconfirm.asp">
		                     <input type= hidden name ="gnumber" value=<%=RS("Qnumber")%>>
		                     <input type= hidden name ="gmtb23confirm" value="มทบ.23">
	                                          <input type=image src="ok.gif"  border="0">
		                     </form>
	       </td>

                          </tr>
                          <%rs.MoveNext
     count=count+1
     loop
     rs.Close
     conn.close
   %>
                          </tbody> 
                        </table>
                      </td>
                    </tr>
                    <tr> 
                      <td align="center" valign="middle"><font face="MS Sans Serif, Microsoft Sans Serif" size="2" color="#000000"><b> 
                      <img src=image/icon_table.gif align=middle>&nbsp;&nbsp; <a href=mtb23rub.asp target=New><font face="ms Sans Serif" size="2" color="#FF6600"><b>ทะเบียนรับสำเนา</b></font></a>

                        <%  
     if page=1 then
        response.write "&nbsp;&nbsp;&nbsp;<a href=mtb23x.asp?page=1><<</a>&nbsp;&nbsp;" 
     else
        response.write "<a href=mtb23x.asp?page=" & page-1 & "><<</a>&nbsp;&nbsp;" 
     end if 
     for i = 1 to cint(ttpage)
        response.write "หน้าที่  "&"<a href=mtb23x.asp?page=" & i &  ">" & i & "</a>&nbsp;&nbsp;"
     next
     if cint(page)=cint(ttpage) then
        response.write "<a href=mtb23x.asp?page=" & ttpage & ">>></a>" 
     else
       response.write "<a href=mtb23x.asp?page=" & page+1 & ">>></a>" 
     end if 
     %>
                        </b> </font></td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td bgcolor="#689C38"> 
            <div align="center"><font face="Microsoft Sans Serif" size="2" color="#FFFFFF"><b><font face="MS Sans Serif, Microsoft Sans Serif">พัฒนาระบบโดย 
              ศกม.กอ.รมน.ภาค 2/ส.พัน.22</font></b></font></div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>


</body>
</html>
<script language="Javascript">window.open ("popup.asp","spoll", "scrollbars=no,status=no,width=130,height=120,resizable=0,top=0");</script>