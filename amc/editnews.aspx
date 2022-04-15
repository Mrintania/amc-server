<%@ Page Language="VB" AutoEventWireup="false" CodeFile="editnews.aspx.vb" Inherits="compose1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com 

</script>
<script language="javascript">
function AdAddr1(){
	               window.open("address.aspx","adaddr1","top=20,left=300,width=310,height=500,scrollbars=yes,resizable=no")
                  }




</script>

</head>
<body>
    <form id="composeform" runat="server"   >
    <div >
<table align=center  border=1 cellspacing=0 cellpgadding=0 style="background-color: aliceblue" id="TABLE1" onclick="return TABLE1_onclick()">
    <tr>
        <td colspan="4" style="text-align: center; height: 26px;">
            <strong>กระดาษเขียนข่าว</strong></td>
    </tr>
	<tr><td style="height: 26px">
        &nbsp;<asp:DropDownList ID="dd1" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt">
            <asp:ListItem>เลือกความเร่งด่วน</asp:ListItem>
            <asp:ListItem>ปกติ</asp:ListItem>
            <asp:ListItem>ด่วน</asp:ListItem>
            <asp:ListItem Value="ด่วนมาก">ด่วนมาก</asp:ListItem>
            <asp:ListItem>ด่วนที่สุด</asp:ListItem>
        </asp:DropDownList></td>
	       <td style="height: 26px">  		&nbsp;<asp:DropDownList ID="dd2" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt">
                   <asp:ListItem>เลือกความเร่งด่วน</asp:ListItem>
                   <asp:ListItem>ปกติ</asp:ListItem>
                   <asp:ListItem>ด่วน</asp:ListItem>
                   <asp:ListItem Value="ด่วนมาก">ด่วนมาก</asp:ListItem>
                   <asp:ListItem>ด่วนที่สุด</asp:ListItem>
               </asp:DropDownList></td>
	        <td colspan=2 style="height: 26px; text-align: center;">	        &nbsp;<span style="color: #ff0000">&lt;&lt;&lt;</span><span style="font-size: 10pt;
                    font-family: MS Sans Serif"><span style="color: #ff0000"> เข้ารหัส :</span>&nbsp;</span>
                <asp:TextBox ID="txtcode" runat="server" BackColor="#FFFF99" Width="146px" style="text-align: center" Font-Names="MS Sans Serif" Font-Size="10pt"></asp:TextBox>
                <span style="color: #ff0000">: &gt;&gt;&gt;</span></td> 	
	</tr>
	<tr><td><font face='ms Sans Serif' size=1> 
        <asp:Label ID="Label5" runat="server" Text="ความเร่งด่วน-ผู้รับปฎิบัติ"></asp:Label></font></td> 
	       <td><font face='ms Sans Serif' size=1> 
               <asp:Label ID="Label6" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt"
                   Text="ความเร่งด่วน-ผู้รับทราบ"></asp:Label></font></td>
	       <td style="width: 241px"><font face='ms Sans Serif' size=1>
               <asp:Label ID="Label7" runat="server" Text="หมู่-วัน-เวลา :  "></asp:Label>
               <input type="Text" id="demo1" maxlength="25" style="width: 130px" runat="server"><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="images/pic/cal.gif" border="0" alt="Pick a date" style="height: 18px; width: 21px;"></font></td>
	       <td style="width: 213px"><font face='ms Sans Serif' size=1>
               <asp:Label ID="Label8" runat="server" Text="ประเภทเอกสาร : "></asp:Label>&nbsp;<asp:DropDownList ID="dd3" runat="server"
                   Width="120px" Font-Names="MS Sans Serif" Font-Size="10pt">
                   <asp:ListItem>เลือกประเภท</asp:ListItem>
                   <asp:ListItem>ปกปิด</asp:ListItem>
                   <asp:ListItem>ลับ</asp:ListItem>
                   <asp:ListItem>ลับมาก</asp:ListItem>
                   <asp:ListItem>ลับที่สุด</asp:ListItem>
               </asp:DropDownList></td>	        	
	</tr>
	<tr><td colspan=3><font face='ms Sans Serif' size=1>จาก :
        <asp:TextBox ID="txtform" runat="server" Width="217px" Font-Names="MS Sans Serif" Font-Size="10pt"></asp:TextBox></font></td>
	        <td style="width: 213px"><font face='ms Sans Serif' size=1>
                <asp:Label ID="Label9" runat="server" Text="ที่ของผู้ให้ข่าว : "></asp:Label>
                <asp:TextBox ID="txtadd" runat="server" Width="122px" Font-Names="MS Sans Serif" Font-Size="10pt"></asp:TextBox></font></td> 
	</tr>
	<tr><td><font face='ms Sans Serif' size=1>ผู้รับปฏิบัติ</font> :&nbsp;</td>
	  <td colspan=3>
          <font face='ms Sans Serif' size=2>
              <input id="gtomake" name="gtomake" size="60" type="text" runat="server" />[<a href="javascript:AdAddr1()">คลิกเลือกหน่วยส่ง</a>]</font></td>
	</tr>
	<tr><td><font face='ms Sans Serif' size=1>ผู้รับทราบ</font> :&nbsp;</td><td colspan=3>
        <input id="gtook" name="gtook" size="60" type="text" runat="server" /></td></tr>
                     <tr> 
                     <td colspan=4 style="height: 47px">
	<font face="MS Sans Serif, Microsoft Sans Serif" size="2" color="#000066">ไพล์ที่ต้องการส่ง
        :&nbsp;<asp:FileUpload
        ID="FileUpload1" runat="server" Width="390px" Font-Names="MS Sans Serif" Font-Size="10pt" />&nbsp;<br />
        <asp:Label ID="Label2" runat="server" ForeColor="#000066" Text="ไฟล์เดิม คือ :" Width="88px"></asp:Label>
        <asp:Label ID="lbfile" runat="server" ForeColor="Red" Style="overflow: visible; clear: left;"
            Width="662px"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" ForeColor="#330099" Text="ขนาด : " Width="43px"></asp:Label>
        <asp:Label ID="lbsize" runat="server" ForeColor="Red" Width="77px"></asp:Label>
        <asp:Label ID="Label4" runat="server" ForeColor="#330099" Text="Byte" Width="62px"></asp:Label>
        <asp:Label ID="Label1" runat="server" ForeColor="#330099" Text="ถ้าต้องการเป็นไฟล์ใหม่ให้คลิก Browse"
            Width="209px"></asp:Label></td>
                     </tr>
	<tr><td align=center colspan=4 style="height: 327px">
        &nbsp;<asp:TextBox ID="txtstory" runat="server" Height="315px" TextMode="MultiLine"
            Width="726px" Font-Names="MS Sans Serif" Font-Size="10pt"></asp:TextBox><tr><td align=center><font face='ms Sans Serif' size=1>ชื่อผู้เขียนข่าว<br>
        <asp:TextBox ID="txtsendman" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt"></asp:TextBox></font></td>
	       <td align=center><font face='ms Sans Serif' size=1>หน่วย<br>
               <asp:TextBox ID="txtsendstation" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt"></asp:TextBox></font></td>
	       <td align=center style="width: 241px"><font face='ms Sans Serif' size=1>โทร<br>
               <asp:TextBox ID="txtsendtel" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt"></asp:TextBox></font></td>
	       <td align=center style="width: 213px"><font face='ms Sans Serif' size=1>นายทหารอนุมัติข่าว<br>
               <asp:TextBox ID="txtsendboss" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt"></asp:TextBox></font></td>
	</tr>
	<tr><td align=center colspan=4 style="height: 21px">
        <asp:Button ID="Button1" runat="server" Text="ส่งข่าว" Width="67px" />&nbsp;<input type="Reset" value="ลบข้อความ" style="width: 76px">
        </td></tr>
        <tr>
            <td align="center" colspan="4" style="height: 80px; text-align: center;">
                <br />
                <input onclick="window.close()" src="images\pic\signout.jpg" type="image" /><br />
                <br />
                Copyright © 2009 comcen.army2.mil.th<br />
            </td>
        </tr>
	</table>
    </div>
    </form>
</body>
</html>
