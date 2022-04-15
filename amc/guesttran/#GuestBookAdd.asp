<%
        th_Month=array("มกราคม","กุมภาพันธ์","มีนาคม","เมษายน","พฤษภาคม","มิถุนายน","กรกฏาคม","สิงหาคม","กันยายน","ตุลาคม","พฤศจิกายน","ธันวาคม")
        th_Day=array("อาทิตย์","จันทร์","อังคาร","พุธ","พฤหัสบดี","ศุกร์","เสาร์")

        Dim strMonth, strDay, setDay

        trDate=DateAdd("h",6,now)
        trDate=DateAdd("n",2,trDate)

        strMonth=th_month(month(trDate)-1)
        strDay=th_Day(weekday(trDate)-1)

        setDay="วัน" & strDay & " ที่ " & Day(trDate) & " เดือน" & strMonth & " พศ." & (Year(trDate)+543)
        setTime=Hour(trDate) & " นาฬิกา " & Minute(trDate) & " นาที " & Second(trDate) & " วินาที"
%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<meta http-equiv="Content-Language" content="th">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>ขอบคุณครับสำหรับคำแนะนำ</title>
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
        Dim Name, EMail, HomePage, ICQ, Ref, Msg,gnew
        Name=Request.form("Name")
		sname=Request.form("sname")
		ename=Request.form("esname")
		bday=Request.form("bday")
		mday=Request.form("mday")
		yday=Request.form("yday")
		bnumber=Request.form("bnumber")
		anumber=Request.form("anumber")
		tarea=Request.form("tarea")
		earea=Request.form("earea")
		jarea=Request.form("jarea")
		code=Request.form("code")
		bank=Request.form("bank")
		abank=Request.form("abank")
		codebank=Request.form("codebank")
		tcass=Request.form("tcass")
		pnumber=Request.form("pnumber")
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
<%        if Name="" or EMail="" then %>

<center><br><br><br><br>
  <b><font face="Courier New, Courier, mono" size="3" color="#0066FF">...กรุณากรอกชื่อ 
  และคำแนะนำด้วยครับ...</font></b><br>
                <input type="button" value="กลับไปแก้ไข" onclick='history.back();'>
                </center>
<%        elseif IsNumeric(ICQ)=False then %>
               <center><br><br><br>
  <font color="#0066FF"><br>
  <b><font face="Courier New, Courier, mono" size="3">...หมายเลข ICQ ต้องเป็นตัวเลขครับ...</font></b></font><br>
  <input type="button" value="กลับไปแก้ไข" onclick='history.back();'></center>


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
						Rs("sname")=HTML_TAG(sname)
						Rs("ename")=HTML_TAG(ename)
						Rs("sename")=HTML_TAG(sename)
						Rs("bday")=HTML_TAG(bday)
						Rs("mday")=HTML_TAG(mday)
						Rs("bnumber")=HTML_TAG(bnumber)
						Rs("anumber")=HTML_TAG(anumber)
						Rs("tarea")=HTML_TAG(tarea)
						Rs("earea")=HTML_TAG(earea)
						Rs("jarea")=HTML_TAG(jarea)
						Rs("code")=HTML_TAG(code)
						Rs("bank")=HTML_TAG(bank)
						Rs("abank")=HTML_TAG(abank)
						 Rs("codebank")=HTML_TAG(codebank)
						 Rs("tcass")=HTML_TAG(tcass)
						 Rs("pnumber")=HTML_TAG(pnumber)
						 Rs("gnew")=HTML_TAG(gnew)
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
        &nbsp;&nbsp;<b><font face="MS Sans Serif, Microsoft Sans Serif" size="3" color="#FF0000">ขอขอบคุณสำหรับคำเยี่ยมชม&nbsp;&nbsp;&nbsp;&nbsp;<img border="0" src="images/Normal.gif"><a href="GuestBookView.asp"> 
        อ่านสมุดเยี่ยมทั้งหมด</a></font></b></td>
    </tr>
    <tr bgcolor="#DCE2DD"> 
      <td width="162" align="right"><b>ชื่อ :&nbsp;</font></b></td>
      <td width="488" colspan=3> 
        <% =Name %> 
        นามสกุล 
        <% =sname %></td>
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
      <td width="162" align="right"><b>รู้จักเราจาก :&nbsp;</b></td>
      <td width="488" colspan=3> 
        <% =Ref %>
      </td>
    </tr>
    <tr bgcolor="#DCE2DD"> 
      <td width="162" align="right"><b>คำแนะนำ :&nbsp;</b></td>
      <td width="488" colspan=3> 
        <% =HTML_TAG(Msg) %>
      </td>
    </tr>
    <tr bgcolor="#DCE2DD"> 
      <td width="162" align="right"><b>ส่งข้อความเมื่อ :&nbsp;</b></td>
      <td width="488" colspan=3> 
        <%
                    'setDay="วัน" & strDay & " ที่ " & Day(date) & " เดือน" & strMonth & " พศ." & (Year(date)+543)
                    response.write (setDay)
    %>
      </td>
    </tr>
    <tr bgcolor="#DCE2DD"> 
      <td width="162" align="right"><b>เวลา :&nbsp;</b></td>
      <td width="488" colspan=3> 
        <%
                    'setTime=Hour(now) & " นาฬิกา " & Minute(now) & " นาที " & Second(now) & " วินาที"
                    response.write (setTime)
    %>
      </td>
    </tr>
    <tr bgcolor="#DCE2DD"> 
      <td width="650" align="center" colspan="4" valign="middle"><b>ขอบคุณ คุณ<font color=blue> 
        <% =Name %>
        </font> ที่ช่วยเยี่ยมชมเว็บไซด์ครับ</b> </td>
    </tr>
  </table>
</div>
<%

        end if
%>
</body>

</html>