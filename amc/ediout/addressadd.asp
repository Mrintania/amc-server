<Html>
<Head>
<title></title>
<Style Type = text/css>
a:link {text-decoration:none; cursor: hand}
a:visited {text-decoration:none}
a:hover {text-decoration:underline}
body,table {  font-family: "Arial", "Helvetica", "sans-serif"; font-size: 9pt}
</Style>

<script language="JavaScript">
function Update(where)
{
	var e1,e2,e3;
	e1 = "";
	e2 = "";
	e3 =  "";
	if ((where == 'to')||(where=='all'))
		e1 = window.opener.document.composeform.Qto.value;
	for (var i = 0; i < document.addr.elements.length; i++)
	{
		var e = document.addr.elements[i];
		if ((e.name.indexOf('to:')==0) && (e.checked) && (e1.indexOf(e.value)==-1))
		{
			if (e1) e1 += ",";
			e1 += e.value;
		}
	}
	if ((where == 'to')||(where == 'all'))
		window.opener.document.composeform.Qto.value = e1;
		
    window.close();
}
</script>
</Head>
<Body bgColor=#ECF8FF alink=#333333 vlink=#000000 link=#000000  >
<table width="350" border="0" align="left" cellspacing="0" bordercolor=gray  bordercolordark=white  >
  <tr bgcolor="#dcdcdc"  valign="left"> 
    <td width="100%"  height="100%" align="left" valign="top" bgcolor="#EFFBFF"> 
      <FORM name="addr" method="POST" action="javascript:Update('all')" >
        <Table width="100%" bgcolor="#104480" >
          <Tr > 
            <TD vAlign=center height="1"> 
              <div align="center"><font face="Microsoft Sans Serif" size="3" color="#FF0000"> 
                <%
Set Conn=Server.Createobject("ADODB.Connection")
Conn.Open "DRIVER=Microsoft Access Driver (*.mdb);DBQ=" & Server.MapPath("name.mdb"),"" , ""
sql ="Select * From usertable"
Set RS =Server.CreateObject("ADODB.Recordset")
RS.open Sql,Conn,1,3
If Rs.EOF Then
%>
                <%Else%>
                กรุณาเลือกหน่วย</font></div>
            </TD>
          </Tr>
        </Table>
        <table width="350" border="0" cellpadding="4" cellspacing="1" bordercolor=gray bordercolordark=white bgcolor=#084563>
          <TR vAlign=middle bgcolor="#084584"> 
            <TD width="75" align="center" ><font color="#FFFFFF" face="Microsoft Sans Serif" size="2"><span >กรุณาคลิก</span></font></TD>
            <TD width="75" align="center" ><font color="#FFFFFF" face="Microsoft Sans Serif" size="2"><span >ชื่อหน่วย</span></font></TD>
          </TR>
          <% While Not Rs.EOF%>
          <TR bgcolor="#F7F7F7"> 
            <Td width="75" align=center vAlign=top height="14" > 
              <div align="center"> <font face="Microsoft Sans Serif" size="2" color="#333333"> 
                <Input name="to:<%=RS("namestation")%>" type=checkbox  value="<%=RS("namestation")%>">
                </font></div>
            </Td>
            <td width="206" height="14"> 
              <div align="left"><%=Server.HTMLEncode(RS("namestation"))%></div>
            </td>
          </Tr>
          <% Rs.MoveNext
Wend
Rs.Close
Conn.Close
End If
%>
        </Table>
        <TABLE width="100%" >
          <TBODY>
            <TR> 
              <TD align=LEFT colSpan=7 height=1 vAlign=middle> <div align="center"> 
                  
                <input name="Button" type="submit" onClick="javascript:Update('all')" value="ok">
                <input type="reset" name="Submit2">
                </div></TD>
            </TR>
          </TBODY>
        </TABLE>
      </Form>
 </td>
  </tr>

</table>

      
</Body>

</Html>
