<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>&lt;&lt;  สมุดเยี่ยม  &gt;&gt;</title>
<style type="text/css">
        a               { font-family: MS Sans Serif,Tahoma; font-size: 10pt; color: #FF9900; text-decoration:none }
        a:hover   { font-family: MS Sans Serif,Tahoma; font-size: 10pt; color: #000080; font-weight: bold;text-decoration:none }
        input.text        { font-family: MS Sans Serif; font-size: 10pt; color:black; background-color:#DEF0FA; border: 1 solid #000000 }
input.submit        { font-family: MS Sans Serif; font-size: 10pt; color: #3E80A4;  background-color: #D3E3B5; border: 1 solid #000000 }
        input.reset            { font-family: MS Sans Serif; font-size: 10pt; color: #FF0000;  background-color: #FFFFFF; border: 1 solid #000000 }
             td                    { font-family: MS Sans Serif;font-size:10pt}
        body               { font-family: MS Sans Serif;font-size:10pt}
</style>

</head>
<body background="images/bgx.gif">
<tr>        
  <td width="650" colspan="4" valign="top">&nbsp;</td>
</tr>
<form method="POST" action="GuestBookadd.asp">
  <table width="712" border="0" align="center" height="29" cellspacing="0" cellpadding="0">
    <tr>
      <td width="712" height="14" background="images/table_bg_image.gif">
        <div align="center"><font color="#FFFFFF"><b><font size="2" face="Courier New, Courier, mono">บันทึกสมุดเยี่ยม</font></b></font></div>
      </td>
    </tr>
  </table>
  <table border="0" width="703" bordercolor="#0099CC" align="center" cellspacing="0" cellpadding="0">
    <tr bgcolor="#AEC2AB"> 
      <td width="164" align="right"><b><font color="#FFFFFF" face="Courier New, Courier, mono" size="2">&nbsp;ชื่อ&nbsp;</font></b></td>
      <td width="486"><font color="#0099CC"> 
        <input type="text" name="Name" size="30" class=text>
        <b><font color="#FFFFFF" face="Courier New, Courier, mono" size="2">นามสกุล</font></b>
        <input name="sname" type="text" class=text id="sname" size="30">
      </font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right">ชื่อภาษาอังกฤษ</td>
      <td><font color="#0099CC">
        <input name="ename" type="text" class=text id="ename" size="30">
        <b><font color="#FFFFFF" face="Courier New, Courier, mono" size="2">นามสกุล</font></b>
        <input name="sename" type="text" class=text id="sename" size="30">
      </font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right">วัน</td>
      <td><font color="#0099CC">
        <input name="bday" type="text" class=text id="bday" size="10">
      </font>เดือน<font color="#0099CC">
      <input name="mday" type="text" class=text id="mday" size="10">
      </font>ปีเกิด<font color="#0099CC">
      <input name="yday" type="text" class=text id="yday" size="10">
      </font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right">หมายเลขบัตรประชน</td>
      <td><font color="#0099CC">
        <input name="bnumber" type="text" class=text id="bnumber" size="30">
      </font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right">ที่อยู่ปัจจุบัน</td>
      <td><font color="#0099CC">
        <input name="anumber" type="text" class=text id="anumber" size="30">
      </font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right">แขวง/ตำบล</td>
      <td><font color="#0099CC">
        <input name="tarea" type="text" class=text id="tarea" size="30">
      </font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right">อำเภอ</td>
      <td><font color="#0099CC">
        <input name="earea" type="text" class=text id="earea" size="30">
      </font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right">จังหวัด</td>
      <td><font color="#0099CC">
        <input name="jarea" type="text" class=text id="jarea" size="30">
      </font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right">รหัสไปรษณีย์</td>
      <td><font color="#0099CC">
        <input name="code" type="text" class=text id="code" size="30">
      </font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right"><b><font color="#FFFFFF" face="Courier New, Courier, mono" size="2">บัญชีธนาคาร</font></b></td>
      <td><font color="#0099CC">
        <select name="Ref"  size="1" style="font-family:MS Sans Serif;font-size:10pt;background-color:#F9ECFF;border: 1 solid #000000 ">
          <option>กรุงไทย</option>
          <option>กรุงเทพ</option>
          <option>ไทยพาณิชย์</option>
          <option>ทหารไทย</option>
          <option>กสิกรโทย</option>
        </select>
        <b><font color="#FFFFFF" face="Courier New, Courier, mono" size="2">สาขา</font><font color="#0099CC">
        <input name="Msg" type="text" style="font-family: MS Sans Serif; font-size: 10pt; color: #000000; background-color: #F7ECD5; border: 1 solid #000000" value="" size="20">
      </font></b></font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right">หมายเลขบญชี ธนาคาร </td>
      <td><font color="#0099CC"><b><font color="#0099CC">
        <input name="Icq" type="text" id="Icq" style="font-family: MS Sans Serif; font-size: 10pt; color: #000000; background-color: #F7ECD5; border: 1 solid #000000" value="" size="30">
      </font></b></font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right"><p>ท่านต้องการลงทุนในตำแหน่ง</p>
      </td>
      <td><font color="#0099CC">
        <select name="gmem"  size="1" id="gmem" style="font-family:MS Sans Serif;font-size:10pt;background-color:#F9ECFF;border: 1 solid #000000 ">
          <option>Classic</option>
          <option>Silver</option>
          <option>Gold</option>
          <option>Mobile</option>
                </select>
      </font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right">หมายเลขโทรศัพท์ที่ติดต่อได้สะดวก</td>
      <td><font color="#0099CC">
        <input name="mobile" type="text" class=text id="mobile" size="30">
      </font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right"><b><font color="#FFFFFF" face="Courier New, Courier, mono" size="2">E 
      - Mail</font></b></td>
      <td><font color="#0099CC">
        <input type="text" name="EMail" size="30" class=text>
      </font></td>
    </tr>
    <tr bgcolor="#AEC2AB">
      <td align="right">หมายเหตุ ผู้แนะนำของท่าน </td>
      <td><font color="#0099CC">
        <input type="text" name="gnew" size="30" class=text>
      </font></td>
    </tr>
    <tr bgcolor="#AEC2AB"> 
      <td width="164" align="right">&nbsp;</td>
      <td width="486"><p>&nbsp;</p>
        <p>&nbsp;</p></td>
    </tr>
    <tr bgcolor="#AEC2AB"> 
      <td width="164" align="right"><b><font color="#FFFFFF" face="Courier New, Courier, mono" size="2">HomePage 
        :&nbsp;</font></b></td>
      <td width="486"><font color="#FFFFFF" face="Courier New, Courier, mono">http://</font></td>
    </tr>
  </table>

  <table border="0" width="701" bordercolor="#0099CC" align="center" cellspacing="0" cellpadding="0">
    <tr bgcolor="#AEC2AB"> 
      <td colspan="4" align="center" height="22"> <b><font color="#FFFFFF">กรุณาเลือกรูปภาพ</font></b></td>
    </tr>
    <tr bgcolor="#AEC2AB"> 
      <td width="243" align="center"> 
        <div align="right"><img  src="images/s01.GIF" width="32" height="32"> 
          <input   type="radio" checked name="OptPic" value="images/s01.gif">
        </div>
      </td>
        
      <td align="center" width="59"><img  src="images/s02.GIF" width="32" height="32"> 
        <input  type="radio" name="OptPic" value="images/s02.gif">
      </td>
         
      <td align="center" width="60"><img  src="images/s03.GIF" width="32" height="32"> 
        <input   type="radio" name="OptPic" value="images/s03.gif"></td>
          
      <td align="center" width="260"> 
        <div align="left"><img   src="images/s04.GIF" width="32" height="32"> 
          <input  type="radio" name="OptPic" value="images/s04.gif">
        </div>
      </td>
    </tr>
    <tr bgcolor="#AEC2AB"> 
      <td align="center" width="243"> 
        <div align="right"><img src="images/s05.GIF" width="32" height="32"> 
          <input  type="radio" name="OptPic" value="images/s05.gif">
        </div>
      </td>
         
      <td align="center" width="59"><img src="images/s06.GIF" width="32" height="32"> 
        <input  type="radio" name="OptPic" value="images/s06.gif"></td>
         
      <td align="center" width="60"><img  src="images/s07.GIF" width="32" height="32"> 
        <input  type="radio" name="OptPic" value="images/s07.gif"></td>
         
      <td align="center" width="260"> 
        <div align="left"><img  src="images/s08.GIF" width="32" height="32"> 
          <input  type="radio" name="OptPic" value="images/s08.gif">
        </div>
      </td>
    </tr>
        
    <tr bgcolor="#AEC2AB"> 
      <td align="center" width="243" height="2"> 
        <div align="right"><img src="images/s09.GIF" width="32" height="32"> 
          <input type="radio" name="OptPic" value="images/s09.gif">
        </div>
      </td>
            
      <td align="center" width="59" height="2"><img src="images/s10.GIF" width="32" height="32"> 
        <input  type="radio" name="OptPic" value="images/s10.gif"></td>
            
      <td align="center" width="60" height="2"><img  src="images/s11.GIF" width="32" height="32"> 
        <input type="radio" name="OptPic" value="images/s11.gif"></td>
            
      <td align="center" width="260" height="2"> 
        <div align="left"><img src="images/s12.GIF" width="32" height="32"> 
          <input  type="radio" name="OptPic" value="images/s12.gif">
        </div>
      </td>
    </tr>
        
    <tr bgcolor="#AEC2AB"> 
      <td align="center" colspan="4"> 
        <input type="submit" value="ส่งข้อมูล" name="submit" class=submit>
             <input type="reset" value="ล้างข้อมูล" name="reset" class=reset>
        <br>
        <font face="Courier New, Courier, mono"><br>
        <font size="2"><b><font color="#0000FF"><img src="images/home.gif" width="16" height="15"><a href="GuestBookView.asp">หน้าหลักเว็บบอร์ด</a> 
        </font></b></font></font></td>
    </tr>
  </table>

</form>

</div>

</body>

</html>