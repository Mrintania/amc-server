<!doctype html public "-//w3c//dtd html 3.2//en">
<html>
<head>
  <title>������ �.6</title>
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
                            <td><b><font face="MS Sans Serif" size="2" color="#000066">|<a href=cav6sendnews.asp target=_New> COMPOSE [�觢���] </a>|</font></b>
                            <b><font face="MS Sans Serif" size="2" color="#000066"><a href=cav6.asp> INBOX [�Ѻ����] </a>|</font></b>
                            <b><font face="MS Sans Serif" size="2" color="#000066"><a href=cav6send.asp> OUTBOX [��Ǩ�ͺ������] </a>|</font></b></td>
	       <td align=right><font face="MS Sans Serif" size="2" color="#000066"><b>|<a href=signin.asp> EXIT </a>|</font></b></td>
                            </tr>
</table>

<br>

<table width="780" cellspacing=0 cellpadding=0 bgcolor=#ffffff>
<tr><td bgcolor=#99ff99><font face="ms Sans Serif" size="2" color=#000089><b>[������ �.6]</b></font></td>
<td bgcolor=#99ff99 align=right>

<%
Set Conn=Server.CreateObject("ADODB.Connection")
Conn.Open ("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.Mappath("edi_out.mdb"))
Sql="Select Count([sum]) AS [all] FROM cav6send;"
Set rs=Conn.Execute(SQL)
%>


<font face="ms Sans Serif" size="2" color=#000089><b>���ҷ���觷�����</b></font>&nbsp;&nbsp;
<font face="ms Sans Serif" size="2" color=#ff0000><b><%= RS("all")%></b></font>&nbsp;&nbsp;
<font face="ms Sans Serif" size="2" color=#000089><b>��Ѻ</b></font>&nbsp;&nbsp;&nbsp;&nbsp;
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
                            <form action="cav6send.asp" name="form1" method="post" >
                              <td colspan="8" align="center" height="32" valign="middle" bgcolor="#E7E7E7"> 
                                <div align="right"><b><font face="MS Sans Serif, Microsoft Sans Serif" size="2">���Ң�������ͧ</font> 
                                  <input type="text" name="keyword" value="<%=Request.Form("keyword")%>" size="5">
                                  <input type="submit" name="Submit" value="����">
                                  </b></div>
                              </td>
                            </form>
                          </tr>
                          <tr valign=top bgcolor="#E8E8E8" align="center"> 
                            <td width="100"><b><font face="MS Sans Serif" size="2" color="#000066">�֧</font></b></td>
                            <td width="400"><b><font face="MS Sans Serif" size="2" color="#000066">����ͧ</font></b></td>
                            <td width="140"><b><font face="MS Sans Serif" size="2" color="#000066">�����Ṻ��</font></b></td>
                            <td width="70"><b><font face="MS Sans Serif" size="2" color="#000066">�ѹ����觢���</font></b></td>
	       <td width="400"><font face='ms Sans Serif' size=2 color="#000066"><b>�ͺ�Ѻ</b></font></td>
                          </tr>
                          <%  
page=request.querystring("page")
if page="" then page=1
page=cint(page)
thmonth=array("���Ҥ�.","����Ҿѹ��.","�չҤ�.","����¹","����Ҥ�","�Զع�¹","�á�Ҥ�","�ԧ�Ҥ�","�ѹ��¹","���Ҥ�","��Ȩԡ�¹","�ѹ�Ҥ�")
On error resume next
Set Conn=Server.CreateObject("ADODB.Connection")
Conn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.mappath("edi_out.mdb")
Sql= "SELECT * FROM cav6send where  Qsubject1 Like '%"&Request.Form("keyword")&"%'"
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
                             <td width="70"><font color="#003399" face="MS Sans Serif, Microsoft Sans Serif" size="2"><%=RS("Qto")%></font></td> 
                            <td width="400"><font color="#003399" face="MS Sans Serif, Microsoft Sans Serif" size="2">&nbsp;<%=RS("Qsubject1")%>&nbsp;&nbsp;</font></td>
                            <td width="140"><font color="#003399" face="MS Sans Serif, Microsoft Sans Serif" size="2"><a href="<%=RS("QPicture")%>" target=New><%=RS("QPicture")%></a></font></td>
                            <td width="70"><font color="#003399" face="MS Sans Serif, Microsoft Sans Serif" size="2"><%=RS("Start_Date")%></font></td>
   	       <td width="400">&nbsp;<font face="ms Sans Serif" size="1">&nbsp;<%= RS("confirmlist1")%></font></td>
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
                      <td  valign="middle"><font face="MS Sans Serif, Microsoft Sans Serif" size="2" color="#000000"><b> 
                      <img src=image/icon_table.gif align=middle>&nbsp;&nbsp; <a href=cav6song.asp target=New><font face="ms Sans Serif" size="2" color="#FF6600"><b>����¹������</b></font></a>

                        <%  
     if page=1 then
        response.write "&nbsp;&nbsp;&nbsp;<a href=cav6send.asp?page=1><<</a>&nbsp;&nbsp;" 
     else
        response.write "<a href=cav6send.asp?page=" & page-1 & "><<</a>&nbsp;&nbsp;" 
     end if 
     for i = 1 to cint(ttpage)
        response.write "˹�ҷ��  "&"<a href=cav6send.asp?page=" & i &  ">" & i & "</a>&nbsp;&nbsp;"
     next
     if cint(page)=cint(ttpage) then
        response.write "<a href=cav6send.asp?page=" & ttpage & ">>></a>" 
     else
       response.write "<a href=cav6send.asp?page=" & page+1 & ">>></a>" 
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
            <div align="center"><font face="Microsoft Sans Serif" size="2" color="#FFFFFF"><b><font face="MS Sans Serif, Microsoft Sans Serif">�Ѳ���к��� 
              ȡ�.��.���.�Ҥ 2/�.�ѹ.22</font></b></font></div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
