<%
        th_Month=array("���Ҥ�","����Ҿѹ��","�չҤ�","����¹","����Ҥ�","�Զع�¹","�á�Ҥ�","�ԧ�Ҥ�","�ѹ��¹","���Ҥ�","��Ȩԡ�¹","�ѹ�Ҥ�")
        th_Day=array("�ҷԵ��","�ѹ���","�ѧ���","�ظ","����ʺ��","�ء��","�����")

        Dim strMonth, strDay, setDay

        trDate=DateAdd("h",6,now)
        trDate=DateAdd("n",2,trDate)

        strMonth=th_month(month(trDate)-1)
        strDay=th_Day(weekday(trDate)-1)

        setDay="�ѹ" & strDay & " ��� " & Day(trDate) & " ��͹" & strMonth & " ��." & (Year(trDate)+543)
        setTime=Hour(trDate) & " ���ԡ� " & Minute(trDate) & " �ҷ� " & Second(trDate) & " �Թҷ�"
%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<meta http-equiv="Content-Language" content="th">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>�ͺ�س��Ѻ����Ѻ���й�</title>
<style type="text/css">
a               { font-family: MS Sans Serif,Tahoma; font-size: 10pt; color: #FF9900; text-decoration:none }
a:hover          { font-family: MS Sans Serif,Tahoma; font-size: 10pt; color: #000080; font-weight: bold;text-decoration:none }
   td         {font-family: MS Sans Serif;font-size:10pt}
body         {font-family: MS Sans Serif;font-size:10pt}
</style>
</head>


        <!-- #include file="guestconnection.asp" -->

<%
                Sql="Select * from GuestBook order by ID desc"
        Set Rs=Server.CreateObject("ADODB.Recordset")
                Rs.Open Sql,Conn,1,3
%>
<%
        Dim Name, EMail, HomePage, ICQ, Ref, Msg,gnew,sname,bday,mday,yday
        Name=Request.form("Name")
		sname=Request.form("sname")
		ename=Request.form("ename")
		sename=Request.form("sename")
		bday=Request.form("bday")
		mday=Request.form("mday")
		yday=Request.form("yday")
		bnumber=Request.form("bnumber")
		anumber=Request.form("anumber")
		tarea=Request.form("tarea")
         earea=Request.form("earea")
		jarea=Request.form("jarea")
		code=Request.form("code")
		gmem=Request.form("gmem")
		mobile=Request.form("mobile")
        EMail=Request.form("Email")
        ICQ=Request.form("Icq")
        Ref=Request.form("Ref")
        Msg=Request.form("Msg")
        gnew=Request.form("gnew")
        if Request.form("Icq")="" then
           ICQ=0
        end if

        if not Request.form("HomePage")="" then
               HomePage="http://" & Request.form("HomePage")
        else
            HomePage=""
        end if

        Function HTML_TAG(oldString)
                 HTML_TAG=oldString
                 HTML_TAG=Replace(HTML_TAG,"<","&lt;")
                 HTML_TAG=Replace(HTML_TAG,">","&gt;")
                 HTML_TAG=Replace(HTML_TAG,chr(13),"<BR>")
        end function

%>
<body bgproperties="FIXED" style="background-repeat: repeat-y;" bgcolor="#AEC2AB">
<%        if Name="" or Msg=""  or EMail="" then %>

<center><br><br><br><br>
  <b><font face="Courier New, Courier, mono" size="3" color="#0066FF">...��س��кآ��������ú���¤�Ѻ...</font></b><br>
                <input type="button" value="��Ѻ����" onclick='history.back();'>
</center>
<%        elseif IsNumeric(ICQ)=False then %>
               <center><br><br><br>
  <font color="#0066FF"><br>
  <b><font face="Courier New, Courier, mono" size="3">...�����Ţ�ѭ�ո�Ҥ�õ�ͧ�繵���Ţ��Ѻ...</font></b></font><br>
  <input type="button" value="��Ѻ����" onclick='history.back();'></center>


<%
               else
                        Rs.AddNew

                        Rs("Name")=HTML_TAG(Name)
                        Rs("EMail")=HTML_TAG(EMail)
                        Rs("HomePage")=HTML_TAG(HomePage)
%>
<%
                        if Icq=0 then
                           Icq=""
                        end if
                        Rs("Icq")=ICQ
                        Rs("Ref")=Ref
                        Rs("Msg")=HTML_TAG(Msg)
						Rs("sname")=(sname)
						Rs("ename")=(ename)
						Rs("sename")=(sename)
						 Rs("gnew")=(gnew)
						 Rs("bday")=(bday)
						Rs("mday")=(mday)
						Rs("yday")=(yday)
						Rs("bnumber")=(bnumber)
						Rs("anumber")=(anumber)
						Rs("tarea")=(tarea)
												Rs("earea")=(earea)
						Rs("jarea")=(jarea)
						Rs("code")=(code)
						Rs("gmem")=(gmem)
						Rs("mobile")=(mobile)
                        Rs("gDay")=setDay
                        Rs("gTime")=setTime
                        Rs("picMap")=request.form("OptPic")
                        Rs("Time")=trDate
                        Rs.Update
                        Rs.close
                        Conn.close
%>
<div align="right"> 
  <table border="0" width="650" bordercolor="black" align="center" bgcolor="#0099CC" cellspacing="0" cellpadding="0">
    <tr bgcolor="#009999"> 
      <td width="650" align="center" colspan="4" valign="middle"><img border=0 src=<% =request.form("OptPic") %>> 
        &nbsp;&nbsp;<b><font face="MS Sans Serif, Microsoft Sans Serif" size="3" color="#FF0000">�͢ͺ�س����Ѻ����������&nbsp;&nbsp;&nbsp;&nbsp;<img border="0" src="images/Normal.gif"><a href="GuestBookView.asp"> 
        ��ҹ��ش������������</a></font></b></td>
    </tr>
    <tr bgcolor="#DCE2DD"> 
      <td width="162" align="right"><b>���� :&nbsp;</font></b></td>
      <td width="488" colspan=3> 
        <% =Name %>
      </td>
    </tr>
    <tr bgcolor="#DCE2DD"> 
      <td width="162" align="right"><b>E-Mail :&nbsp;</b></td>
      <td width="488" colspan=3><A Href=mailto:<% =EMail %>> 
        <% =EMail %>
        </A>&nbsp;</td>
    </tr>
    <tr bgcolor="#DCE2DD"> 
      <td width="162" align="right"><b>HomePage :&nbsp;</b></td>
      <td width="488" colspan=3><A Href=<% =HomePage %> Target="new"> 
        <% =HomePage %>
        </A>&nbsp;</td>
    </tr>
    <tr bgcolor="#DCE2DD"> 
      <td width="162" align="right"><b>���ѡ��Ҩҡ :&nbsp;</b></td>
      <td width="488" colspan=3> 
        <% =Ref %>
      </td>
    </tr>
    <tr bgcolor="#DCE2DD"> 
      <td width="162" align="right"><b>���й� :&nbsp;</b></td>
      <td width="488" colspan=3> 
        <% =HTML_TAG(Msg) %>
      </td>
    </tr>
    <tr bgcolor="#DCE2DD"> 
      <td width="162" align="right"><b>�觢�ͤ�������� :&nbsp;</b></td>
      <td width="488" colspan=3> 
        <%
                    'setDay="�ѹ" & strDay & " ��� " & Day(date) & " ��͹" & strMonth & " ��." & (Year(date)+543)
                    response.write (setDay)
    %>
      </td>
    </tr>
    <tr bgcolor="#DCE2DD"> 
      <td width="162" align="right"><b>���� :&nbsp;</b></td>
      <td width="488" colspan=3> 
        <%
                    'setTime=Hour(now) & " ���ԡ� " & Minute(now) & " �ҷ� " & Second(now) & " �Թҷ�"
                    response.write (setTime)
    %>
      </td>
    </tr>
    <tr bgcolor="#DCE2DD"> 
      <td width="650" align="center" colspan="4" valign="middle"><b>�ͺ�س �س<font color=blue> 
        <% =Name %>
        </font> �����������������䫴��Ѻ</b> </td>
    </tr>
  </table>
</div>
<%

        end if
%>
</body>

</html>