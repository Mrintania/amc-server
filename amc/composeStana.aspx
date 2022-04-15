<%@ Page Language="VB" AutoEventWireup="false" CodeFile="composeStana.aspx.vb" Inherits="compose1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>compose</title>
<script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com 

</script>
<script language="javascript">
function AdAddr1(){
	               window.open("addressStana.aspx","adaddr1","top=20,left=300,width=330,height=500,scrollbars=yes,resizable=no")
                  }
</script>

</head>
<body>
    <form id="composeform" runat="server"   >
    <div title="compose" >
<table align=center  border=1 cellspacing=0 cellpgadding=0 style="background-color: aliceblue" id="TABLE1" >
    <tr>
        <td colspan="3" style="text-align: center; height: 26px;">
            <strong>
                <asp:Label ID="Label8" runat="server" Style="color: aliceblue" Visible="False" Width="8px"></asp:Label>
            ส่งสรุปสถานการณ์ประจำวัน</strong></td>
    </tr>
	<tr><td colspan=2 style="height: 29px"><font face='ms Sans Serif' size=1>จาก :
        <asp:TextBox ID="txtform" runat="server" Width="217px" Font-Names="MS Sans Serif" Font-Size="10pt"></asp:TextBox>
        </font></td>
	        <td style="width: 213px; height: 29px;"><font face='ms Sans Serif' size=1>&nbsp;</font></td> 
	</tr>
	<tr><td><font face='ms Sans Serif' size=1>ถึง</font> : &nbsp;<font face='ms Sans Serif' size=2><input id="gtomake" name="gtomake" size="60" type="text" runat="server" /></font></td>
	  <td colspan=2>
          &nbsp;</td>
	</tr>
                     <tr> 
                     <td colspan=3>
	<font face="MS Sans Serif, Microsoft Sans Serif" size="2" color="#000066">ไพล์ที่ต้องการส่ง:&nbsp;<asp:FileUpload
        ID="FileUpload1" runat="server" Width="496px" Font-Names="MS Sans Serif" Font-Size="10pt" />&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;</td>
                     </tr>
	<tr><td align=center colspan=3 style="height: 327px">
        &nbsp;<asp:TextBox ID="txtstory" runat="server" Height="315px" TextMode="MultiLine"
            Width="726px" Font-Names="MS Sans Serif" Font-Size="10pt">-ส่งสรุปสถานการณ์ประจำวันที่...</asp:TextBox>
	<tr><td align=center colspan=3 style="height: 21px">
        <asp:Button ID="Button1" runat="server" Text="ส่งข่าว" Width="67px" />&nbsp;<input type="Reset" value="ลบข้อความ" style="width: 76px">
        </td></tr>
        <tr>
            <td align="center" colspan="3" style="height: 80px; text-align: center;">
                <br />
                Copyright © 2012 comcen.army2.mil.th<br />
            </td>
        </tr>
	</table>
    </div>
    </form>
</body>
</html>
