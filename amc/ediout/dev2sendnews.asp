<!doctype html public "-//w3c//dtd html 3.2//en">
<html>
<head>
  <title>SENDNEWS [BATA 2.0]</title>
<meta http-equiv="Content-Type" content="text/html; charset=tis-620">
<style type="text/css">
textarea { font-family: Cordia New; font-size: 14pt; }
</style>

<SCRIPT language=JavaScript>
	<!--
		function OnSend()
		{
		    if(sm.To.value =="") {
			      alert("<%=IDS_ERR_NULLMAIL%>.");
				  return false;
	                                                                  }
		   if (document.forms[0].isSign.checked) document.forms[0].Body.value += document.forms[0].sign.value;
		   document.forms[0].submit();
		}
		function OnBack()
		{
			window.location.replace("finbox.asp")
		}
		function AdAddr1(){
	                     window.open("addressadd.asp","adaddr1","top=20,left=300,width=400,height=600,scrollbars=yes,resizable=no")
                                          }


	//-->
</SCRIPT>

<script language="JavaScript">
<!--
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
// -->

function MM_findObj(n, d) { //v4.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && document.getElementById) x=document.getElementById(n); return x;
}

function MM_validateForm() { //v4.0
  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    if (val) { nm=val.name; if ((val=val.value)!="") {
      if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
      } else if (test!='R') {
        if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (val<min || max<val) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
  } if (errors) alert('The following error(s) occurred:\n'+errors);
  document.MM_returnValue = (errors == '');
}
//-->
</script>
</head>


<%if request("no") ="" then
pageno =1
else
pageno=request("no")
end if%>

<BODY  topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" bgcolor="#ffffff" background="IMAGES/bg_gray.gif">
  
<div align="left">
  <form name="composeform" action="savenews.asp" method="post" enctype="multipart/form-data" onsubmit="return ChkValid()">
    <input type="hidden" value="upload">
      
    <table width="780" border="1" cellspacing="0" cellpadding="0" bordercolor="#000066">
      <tr bgcolor="#000000"> 
        <td bgcolor="#9FACEA"> 

          <table width="100%" border="0" cellspacing="0" cellpadding="0" bordercolor="#000066">
            <tr bgcolor="#000000"> 
        <td bgcolor="#9FACEA"> 
          <div align="center"><font face="MS Sans Serif" size="3"><b><font color="#000066">SENDNEWS</font></b></font></div>
        </td>
      </tr>
      <tr bgcolor="#000000"> 
        <td bgcolor="#000000"> 
          <table width="100%" border="1" cellspacing="0" cellpadding="0" bordercolor="#CCCCCC">
            <tr> 
              <td width="69" height="40" bgcolor="#A0ACF0" align="center"><b><font face="Microsoft Sans Serif" size="2" color="#000099">จาก 
                : </font></b></td>
              <td width="584" height="40" class=row1 bgcolor="#dbe2f4"><font face="Microsoft Sans Serif" size="2" color="#0000FF"> 
                <input type="text" name="Qfrom" size="50" value="พล.พัฒนา 2">
                </font></td>
            </tr>
            <tr> 
              <td width="69" height="40" bgcolor="#A0ACF0" align="center"><b><font face="Microsoft Sans Serif" size="2" color="#000099">ถึง
                : </font></b></td>
              <td width="600" height="40"  class=row1  bgcolor="#dbe2f4"><font face="Microsoft Sans Serif" size="2" color="#0000FF"> 
                <input type="text" name="Qto" size="50" value="">[<a href="javascript:AdAddr1()">คลิกเลือกหน่วย</a>]
                </font></td>
            </tr>
            <tr> 
              <td width="69" height="40" bgcolor="#A0ACF0" align="center"><b><font face="Microsoft Sans Serif" size="2" color="#000099">เรื่อง 
                : </font></b></td>
              <td width="584" height="40" class=row1 bgcolor="#dbe2f4"><font face="Microsoft Sans Serif" size="2" color="#0000FF"> 
                <textarea name="subject1" cols="120" rows="3"></textarea>
                </font></td>
            </tr>
            <tr> 
              <td width="69" height="40" bgcolor="#A0ACF0" align="center"><b><font face="MS Sans Serif" size="2" color="#000099"> 
                ไฟล์:</font></b></td>
              <td width="584" height="40" class=row1 bgcolor="#dbe2f4"><font color="#0000FF"> 
                <input type="file" name="file" size="60">
                &nbsp;<font face="MS Sans Serif" size="2"><br>
                <br>
                <b>&nbsp;หมายเหตุ</b> &nbsp;- แนะนำชื่อให้ตั้งชื่อไฟล์เป็นภาษาอังกฤษ (ภาษาไทยอาจจะมีปัญหาในการอ่านชื่อไฟล์) และให้ได้ส่งเฉพาะ  MS-WORD , MS-EXCEL , ZIPFILE  , Acrobat (.doc, .xls, .zip, .pdf )</font></font></td>
            </tr>
          </table>
        </td>
      </tr>
      <tr bgcolor="#000000"> 
        <td bgcolor="#A0ACE8">&nbsp;</td>
      </tr>
      <tr bgcolor="#000000"> 
        <td bgcolor="#A0ACE8"> 
          <div align="center"><font face="MS Sans Serif" size="3"><b> 

          <tr><td align=center colspan=4><input type="Submit" value="ส่งข่าว" onClick="MM_validateForm('name','','R','topic','','R','question','','R');return document.MM_returnValue"> &nbsp;&nbsp;<input type="Reset" value="ลบข้อความ">
                  </b></font></div>
        </td>
      </tr>
      <tr bgcolor="#000000"> 
        <td bgcolor="#A0ACE8"> 
          <div align="center">&nbsp;</div>
        </td>
      </tr>
    </table>
        </td>
      </tr>
    </table>	
      <br>
    </form>
  </div>
<div align="center"></div>
</body>
</html>