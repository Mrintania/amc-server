<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<meta http-equiv="Content-Language" content="th">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>::: ��ش������ :::</title>
<style type="text/css">
       body         {font-family: MS Sans Serif,Tahoma ;font-size:10pt}
       td                {font-family: MS Sans Serif,Tahoma ;font-size:10pt}
       a:hover     {font-family: MS Sans Serif,Tahoma; font-size: 10pt; color: #000080; font-weight: bold; text-decoration:none }
       a                 {font-family: MS Sans Serif,Tahoma; font-size: 10pt; color: #FF9900; text-decoration:none }

</style>
</head>
  <%
     PageLen=18
     PageNo=Request.QueryString("PageNo")
     if PageNo="" then PageNo=1
  %>

        <!-- #include file="guestconnection.asp" -->

   <%     Set RS=Server.CreateObject("ADODB.Recordset")
              Sql="Select * from GuestBook order by Time Desc"

              RS.Open Sql,Conn,3,1
              TotalRecord=Rs.recordcount
              Rs.PageSize=PageLen
              TotalPage=Rs.PageCount
              Rs.AbsolutePage=PageNo

              Function getBR(Msg)
                 getBR=Msg
                 getBR=Replace(getBR,chr(13),"<BR>")
              End Function
  %>
<body bgproperties="FIXED" style="background-repeat: repeat-y;" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" bgcolor="#AEC2AB">
<blockquote> 
  <div align="right"> 
    <table width="78%" border="0" align="center" background="IMAGES/41115.gif" cellspacing="0" cellpadding="0">
      <tr> 
        <td> 
          <div align="right"> 
            <table border="0" width="650" bordercolor=gray cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td width="92" align="center"></td>
                <td width="509" align="center"><b> <img src="IMAGES/i_new.gif" width="30" height="10">&nbsp;<a href="GuestBook.asp">��¹�ѹ�֡��ش������</a></b> 
                  <img src="IMAGES/wi0054-48.gif" width="48" height="48" align="middle"> 
                  <br>
                  <font color="#0000FF"><b>˹�ҷ��.. </b></font>| 
                  <%
  for idx=1 to TotalPage
%>
                  <a href=GuestBookView.asp?PageNo=<% =idx %>> 
                  <% if idx=cint(PageNo) then %>
                  <font color="Green" size=4><b> 
                  <% =idx %>
                  </b></font> 
                  <% else %>
                  <% =idx %>
                  <% end if %>
                  </a> | 
                  <% next %>
                </td>
                <td width="49" align="center"></td>
              </tr>
            </table>
            <%
     recNo=1
     Do while not Rs.EOF and recNo<= PageLen

     if Rs("Icq")="0" then
        IcqNum=""
     else
         IcqNum=Rs("Icq")
     end if
  %>
            <table border="0" width="650" align="center">
              <tr> 
                <td width="100" align="right"><img src=<% =Rs("picMap") %>></td>
                <td width="50" align="right"><b>���� : </b></td>
                <td width="500"><% =Rs("Name") %>
                  <!-- -------------------------------- For Admin -------------------------------------------- -->
                   ���ʡ��
                   <% =Rs("sname") %>
                   <% if Session("Level")="" then Session("Level")=100
                            if Session("Level")=<4 then %>
                  <a href="admin/adminguestedit.asp?ID=<% =Rs("ID") %>&PageNo=<% =PageNo %>"><img src="images/edit.gif" border=0></a> 
                  <script language="JavaScript">
<!--
        function Conf(object) {
                 if (confirm("�س��ͧ���ź Record ����駨�ԧ��������?")==true) {
                 return true;
                 }
                 return false;
                 }
//-->
</script>
                  <a href="admin/adminGuestDelete.asp?ID=<% =Rs("ID") %>&PageNo=<% =PageNo %>" onClick="return Conf(this)"><img src="images/delete.GIF" border=0></a> 
                  <%        end if        %>
                  <!--  ------------------------------------------------------------------------------------------ --></td>
              </tr>
              <tr>
                <td align="right" colspan="2">���������ѧ���</td>
                <td><% =Rs("ename") %> 
                  ���ʡ�� 
                  <% =Rs("sename") %></td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr> 
                <td width="150" align="right" colspan="2"><b>E-Mail :</b></td>
                <td width="500"><a href=mailto:<% =Rs("EMail") %>> 
                  <% =Rs("EMail") %>
                  </a></td>
              </tr>
              <tr> 
                <td width="150" align="right" colspan="2"><b>HomePage :</b> </td>
                <td width="500"><a href=<% =Rs("HomePage") %> target="new"> 
                  <% =Rs("HomePage") %>
                  </a></td>
              </tr>
              <tr> 
                <td width="150" align="right" colspan="2"><b>���ѡ��Ҩҡ :</b></td>
                <td width="500"> 
                  <% =Rs("Ref") %>                </td>
              </tr>
              <tr> 
                <td width="150" align="right" colspan="2" valign="top"><b>���й� 
                  :&nbsp;</b></td>
                <td width="500"> 
                  <% =getBR(Rs("Msg")) %>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <% =Rs("gnew") %></td>
              </tr>
              <tr> 
                <td width="150" align="right" colspan="2"><b>�觢�ͤ�������� :</b>                </td>
                <td width="500"> 
                  <% =Rs("gDay") %>
                  &nbsp;&nbsp;</td>
              </tr>
            </table>
            <hr width="650" align="center">
            <%
        recNo=recNo+1
        Rs.MoveNext

        Loop
        Rs.Close
        Conn.Close
  %>
          </div>
          <center>
            <table border="0" width="650" bordercolor=gray cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td width="92" align="center"></td>
                <td width="509" align="center"><b> <img src="IMAGES/i_new.gif" width="30" height="10">&nbsp;<a href="GuestBook.asp">��¹�ѹ�֡��ش������</a></b> 
                  <img src="IMAGES/wi0054-48.gif" width="48" height="48" align="middle"></td>
                <td width="49" align="center"></td>
              </tr>
            </table>
            <br>
            <font color="#0000FF"><b>˹�ҷ��.. </b></font>| 
            <%
  for idx=1 to TotalPage
%>
            <a href=GuestBookView.asp?PageNo=<% =idx %>> 
            <% if idx=cint(PageNo) then %>
            <font color="Green" size=4><b> 
            <% =idx %>
            </b></font> 
            <% else %>
            <% =idx %>
            <% end if %>
            </a> | 
            <% next %>
          </center>
        </td>
      </tr>
    </table>
  </div>
</blockquote>
</body>

</html>