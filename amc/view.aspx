<%@ Page Language="VB" AutoEventWireup="false" CodeFile="view.aspx.vb" Inherits="view" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>view</title>
<script language="Javascript1.2">
<!--
function printWindow(){
browserVersion = parseInt(navigator.appVersion) // เป็นการ Get Version ของ Browser ของผู้ชมเว็บขึ้นมา
if (browserVersion >= 4) window.print() // ทำการตรวจสอบ Version ก่อน Print โดยคำสั่ง window.print() จะใช้ได้ตั้งแต่ Version 4 ขึ้นไป
}
// -->
</script>
<script language="javascript" type="text/javascript">
// <!CDATA[



// ]]>
</script>
</head>
<body style="text-align: left">
    <form id="form1"  runat="server" style="text-align: left">
     <table align=center  border=1 cellspacing=0 cellpadding=0 style="width: 1%; text-align: left;">

	<tr><td style="width: 423px"><font face='ms Sans Serif' size=5 color=#ff0000><b>
        <asp:Label ID="sExpress1" runat="server" Text="Label" Width="141px"></asp:Label></b></font></td>
	       <td style="width: 155px"><font face='ms Sans Serif' size=5 color=#ff0000><b>
               <asp:Label ID="sExpress2" runat="server" Text="Label" Width="154px"></asp:Label></b></font></td>
	        <td colspan=3 style="font-size: 12pt">
                &nbsp;
                <asp:Label ID="Label1" runat="server" Text="ถอดรหัส : "></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFCC"></asp:TextBox>&nbsp;<asp:Button ID="Button15" runat="server" Text="ถอดรหัส" /></td> 	
	</tr>
	<tr style="font-size: 12pt"><td style="width: 423px; height: 36px"><font face='ms Sans Serif' size=3>ความเร่งด่วน<br />
        &nbsp; &nbsp;&nbsp; -ผู้รับปฎิบัติ</font></td> 
	       <td style="width: 155px; height: 36px; font-size: 12pt;"><font face='ms Sans Serif' size=3>ความเร่งด่วน<br />
               &nbsp; &nbsp; -ผู้รับทราบ</font></td>
	       <td style="width: 228px; height: 36px; font-size: 12pt;"><font face='ms Sans Serif' size=3>หมู่-วัน-เวลา:<br />
               <asp:Label ID="sDatetime" runat="server" Font-Names="MS Sans Serif" Font-Size="12pt"
                   Text="Label" Width="156px" Font-Bold="False"></asp:Label></font></td>
        <td colspan="2" style="font-size: 12pt; height: 36px; width: 302px;">
            <font face='ms Sans Serif' size=3>ประเภทเอกสาร:<br />
            </font> 
               <asp:Label ID="sTypenews" runat="server" Font-Names="MS Sans Serif" Font-Size="12pt"
                   Text="Label" Width="84px" Font-Bold="False"></asp:Label><font face='ms Sans Serif' size=5 color=#ff0000><b></b></font></td>
	</tr>
	<tr><td colspan=3 style="height: 27px"><font face='ms Sans Serif' size=3>จาก:</font><font face='ms Sans Serif' size=4><b> 
        <asp:Label ID="sFromTo" runat="server" Font-Names="MS Sans Serif" Font-Size="12pt"
            Text="Label" Width="220px"></asp:Label></b></font></td>
        <td colspan="2" style="height: 27px; width: 302px;">
            <font face='ms Sans Serif' size=3>ที่ของผู้ให้ข่าว:<br />
                <asp:Label ID="sAddTo" runat="server" Font-Names="MS Sans Serif" Font-Size="12pt"
                    Text="Label" Width="104px" Font-Bold="False"></asp:Label><b></b></font></td>
	</tr>
	<tr><td colspan=5 style="height: 24px"><font face='ms Sans Serif' size=3>ถึงผู้รับปฎิบัติ:<br />
        <asp:Label ID="sTomake" runat="server"
            Font-Names="MS Sans Serif" Font-Size="12pt" Text="Label" Width="632px" Font-Bold="False"></asp:Label></font><font face='ms Sans Serif' size=4><b></b></font></td>			
	</tr>
	<tr><td colspan=5 style="height: 26px"><font face='ms Sans Serif' size=3>ถึงผู้รับทราบ:</font> 
        <br />
        &nbsp;<asp:Label ID="sTook" runat="server" Font-Names="MS Sans Serif" Font-Size="12pt"
            Text="Label" Width="632px" Font-Bold="False"></asp:Label><font face='ms Sans Serif' size=4><b></b></font></td>			
	</tr>
	<tr><td colspan=5 style="height: 32px"><font face='ms Sans Serif' size=3>ไฟล์ที่แนบมา :<br />
        <asp:Label ID="Label10" runat="server"
            Font-Names="MS Sans Serif" Font-Size="12pt" Text="Label" Width="632px"></asp:Label><b><font face="MS Sans Serif, Microsoft Sans Serif" size="2"><font color="#303498"></font></font></b></td></tr>
	<tr><td colspan=5 style="text-align: right; vertical-align: top;" >
        <asp:Label ID="Label2" runat="server" BackColor="White" Font-Bold="True" ForeColor="Red"
            Style="overflow: visible; clip: rect(auto 716px auto 0px); text-align: left"
            Width="592px"></asp:Label><br />
        <asp:Label ID="sstory" runat="server" Style="overflow: visible; clip: rect(auto 716px auto 0px); text-align: left;"
            Text="Label" Width="624px"></asp:Label>
        &nbsp;
        <br />
        <br />
    </td></tr>
	<tr><td align=center style="width: 423px; height: 50px"><font face='ms Sans Serif' size=3>ชื่อผู้เขียนข่าว: <br>
        <asp:Label ID="sman" runat="server" Font-Names="MS Sans Serif" Font-Size="12pt"
            Text="Label" Width="139px" Font-Bold="False"></asp:Label></font></td>
	       <td align=center style="width: 155px; height: 50px"><font face='ms Sans Serif' size=3>หน่วย: <br>
               <asp:Label ID="sstation" runat="server" Font-Names="MS Sans Serif" Font-Size="12pt"
                   Text="Label" Width="134px" Font-Bold="False"></asp:Label></font></td>
	       <td align=center style="width: 228px; height: 50px"><font face='ms Sans Serif' size=3>โทร: <br>
               <asp:Label ID="stel" runat="server" Font-Names="MS Sans Serif" Font-Size="12pt"
                   Text="Label" Width="140px" Font-Bold="False"></asp:Label></font></td>
        <td align="center" style="height: 50px; width: 302px;" colspan="2">
        <font face='ms Sans Serif' size=3>นายทหารอนุมัติข่าว: <br>
               <asp:Label ID="sboss" runat="server" Font-Names="MS Sans Serif" Font-Size="12pt"
                   Text="Label" Width="161px" Font-Bold="False"></asp:Label></font></td>
	</tr>
	</table><br />
	<table align=center  border=1 cellspacing=0 cellpadding=0 style="width: 65%">
	<tr><td style="width: 305px; height: 45px;"><a href="javascript:printWindow()">พิมพ์ข่าวฉบับนี้</a></td>
        <td style="width: 445px; height: 45px;"><form method="post" action="newsedit.asp">
            .<input type= submit value="[แก้ไขข่าว] / [ส่งต่อข่าว]" id="bb1" onclick="return bb1_onclick()" runat="server"></form></td>
	</tr>

</table>
    </form>
    
<br />
    &nbsp;
    
</body>
</html>
