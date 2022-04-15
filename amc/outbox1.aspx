<%@ Page Language="VB" AutoEventWireup="false" CodeFile="outbox1.aspx.vb" Inherits="inbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ระบบส่งข่าว AUTO</title>
<%--<META HTTP-EQUIV="REFRESH" content="90;URL=outbox1.aspx?nid=<%=Request.QueryString("nid")%>">--%>
<style type="text/css">
A:link {
	COLOR: #ffffff; text-decoration: none}
A:visited {
	COLOR: #ffffff; text-decoration: none}
A:active {
	COLOR: #ffffff; text-decoration: none}
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
</head>
<body style="background-color: black; color: white; font-family: Sans-Serif;">
    <form id="form1" runat="server">
    <div>
        <table style="background-color: darkgray">
            <tr>
                <td colspan="2" style="width: 3447px; height: 6px">
                    <span style="color: #000099; font-size: 11pt; font-family: MS Sans Serif;">AMC2012</span></td>
                <td style="width: 595px; height: 6px; text-align: right">
                    <span style="color: #000099; font-size: 11pt; font-family: MS Sans Serif;">ระบบศูนย์ข่าวอัตโนมัติ</span></td>
            </tr>
        </table><hr />
    </div>
        <span style="font-size: 10pt"><span style="color: red"><span style="font-size: 14pt">
            <table style="height: 43px; font-size: 14pt;">
                <tr>
                    <td colspan="3" style="width: 683px; height: 1px; text-align: left">
                        <span
                                style="font-size: 14pt; color: red"><span style="font-family: MS Sans Serif"><span style="font-size: 10pt"><span style="color: white"><span style="color: #ff0000"><span
                                style="font-size: 14pt">|</span> 
                                    <a href=Precompose.aspx?nid=<%=Request.QueryString("nid")%> target="_New"><font face="ms Sans Serif" size="2" color=#ffffff><b>เขียนข่าวเตรียมส่ง </b></font></a>&nbsp;<span style="color: white"></span><span style="font-size: 14pt">|
                                    <a href=inbox1.aspx?nid=<%=Request.QueryString("nid")%> target="_blank"><font face="ms Sans Serif" size="2" color=#ffffff><b>ข่าวส่งเรียบร้อยแล้ว</b></font></a></span> </span>
                                </span> </span><span style="font-size: 14pt;
                                    color: red">|
                                    <a href=outbox1.aspx?nid=<%=Request.QueryString("nid")%> target="_blank">
                        <font face="ms Sans Serif" size="2" color=#ffffff><b>ระบบส่งข่าว AUTO</b></font></a><span style="font-size: 10pt">
                                    </span><span style="font-size: 14pt; color: red">| &nbsp; &nbsp;</span></span></span></span></td>
                    <td colspan="1" style="width: 271px; height: 1px; text-align: right">
                        &nbsp;
                    </td>
                    <td colspan="5" style="width: 154px; height: 1px; text-align: right">
                        <span style="color: #3300cc; font-size: 11pt; font-family: MS Sans Serif;"><span
                            style="font-size: 14pt; color: red"></span> </span>
                        <span style="color: #3300cc; font-size: 11pt; font-family: MS Sans Serif;">&nbsp;<span
                            style="font-size: 14pt; color: red">| <a href=Default.aspx><font face="ms Sans Serif" size="2" color=#ffffff><b>ออกจากระบบ [Exit]</b></font></a><span style="font-size: 14pt;
                                    color: red">|</span></span></span></td>
                </tr>
                <tr>
                    <td colspan="9" style="height: 6px; text-align: left">
                        <span style="font-size: 9pt; color: black">.</span></td>
                </tr>
                <tr>
                    <td colspan="3" style="width: 683px; height: 6px; text-align: left">
                        &nbsp;<asp:Label ID="labelHide" runat="server" Font-Names="MS Sans Serif" ForeColor="Yellow"
                            Style="font-size: 10pt; color: black" Visible="False" Width="226px"></asp:Label></td>
                    <td colspan="6" style="height: 6px; text-align: right">
                        <span style="font-size: 10pt; color: white">&nbsp;<span style="font-family: MS Sans Serif">ค้นหาที่ของข่าว</span>&nbsp;
                            &nbsp;<asp:TextBox ID="txtfind" runat="server" Width="215px" style="text-align: left"></asp:TextBox>&nbsp;
                            &nbsp;<asp:Button ID="cmdfine" runat="server" Text="ค้นหา" /></span></td>
                </tr>
            </table><hr /><table style="background-color: darkgray">
                <tr>
                    <td colspan="2" style="width: 3447px; height: 6px">
                        <span style="color: #ffff33; font-size: 11pt; font-family: MS Sans Serif;"><span
                            style="color: #ffff00"><span style="color: yellow">[ข่าวเตรียมส่ง]
                            &gt;&gt;</span> </span>&nbsp;<asp:Label ID="labname" runat="server" Font-Names="MS Sans Serif"
                                Width="185px" ForeColor="#FFFF00" style="color: yellow"></asp:Label></span></td>
                    <td style="width: 595px; height: 6px; text-align: right">
                        <span style="color: #3300cc; font-size: 11pt; font-family: MS Sans Serif;">
                                                    &nbsp;
                        </span></td>
                </tr>
            </table><hr />
        </span></span></span>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
        
         <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> Currently Online<br />
        
            <span style="font-size: 10pt"><span style="color: red">
            <span style="font-size: 14pt">
            <span style="color: #3300cc; font-size: 11pt; font-family: MS Sans Serif;">
            <asp:Label ID="Label1" runat="server" ForeColor="White" 
                Text="เตรียมส่งทั้งสิ้น " Width="135px"></asp:Label>
            <span style="font-size: 10pt"><span style="color: red">
            <span style="font-size: 14pt">
            <span style="color: #3300cc; font-size: 11pt; font-family: MS Sans Serif;">
            <asp:Label ID="labtotal" runat="server" ForeColor="Red" Height="16px" Text="0" 
                Width="39px"></asp:Label>
            <span style="font-size: 10pt"><span style="color: red">
            <span style="font-size: 14pt">
            <span style="color: #3300cc; font-size: 11pt; font-family: MS Sans Serif;">
            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="ฉบับ" 
                Width="31px"></asp:Label>
            </span></span></span></span></span></span></span></span></span></span></span>
            </span>
            <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="1000">
            </asp:Timer>
            <asp:Label ID="lblAJAX" runat="server"></asp:Label>
            &nbsp;<asp:Label ID="lblAJAX0" runat="server"></asp:Label>
            &nbsp;
            <asp:Label ID="lblAJAX1" runat="server"></asp:Label>
            <br />
            <asp:Button ID="cmdControl" runat="server" Text="Start.." />
            <asp:Button ID="cmdControl0" runat="server" Text="Stop.." />
            <br />
            <asp:GridView ID="GridView1" runat="server" 
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="MS Sans Serif" 
                Font-Size="10pt" GridLines="Vertical" PageSize="15" Width="1137px">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" />
                    <asp:BoundField DataField="TimeAutoSend" HeaderText="เวลาเริ่มส่ง" />
                    <asp:BoundField DataField="From1" HeaderText="จาก" />
                    <asp:TemplateField HeaderText="ถึงผู้รับปฏิบัติ" SortExpression="Tomake">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox21" runat="server" Font-Names="MS Sans Serif" 
                                Font-Size="10pt" Height="50px" 
                                Text='<%# encodeGet(Eval("Tomake"),(Eval("code1"))) %>' TextMode="MultiLine" 
                                Width="168px"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ถึงผู้รับทราบ" SortExpression="Took">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Font-Names="MS Sans Serif" 
                                Font-Size="10pt" Height="50px" 
                                Text='<%#encodeGet(Eval("Story"),(Eval("code1"))) %>' TextMode="MultiLine" 
                                Width="168px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox22" runat="server" Font-Names="MS Sans Serif" 
                                Font-Size="10pt" Height="50px" 
                                Text='<%# encodeGet(Eval("Took"),(Eval("code1"))) %>' TextMode="MultiLine" 
                                Width="168px"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Add1" HeaderText="ที่ของข่าว" SortExpression="Add1">
                        <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="รายละเอียดข่าวแบบย่อ">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox24" runat="server" Font-Names="MS Sans Serif" 
                                Font-Size="10pt" Height="50px" 
                                Text='<%#encodeGet(Eval("Story"),(Eval("code1"))) %>' TextMode="MultiLine" 
                                Width="258px"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="อ่านข่าว">
                        <ItemTemplate>
                            <a href='saveconfirm.aspx?postid=<%# Eval("Id")%>&amp;nid=<%=Request.QueryString("nid")%>' 
                                target="_blank">
                            <img src="images/pic/read.jpg" 
                                style="width: 33px; height: 22px; border-right: dimgray thin solid; border-top: dimgray thin solid; border-left: dimgray thin solid; border-bottom: dimgray thin solid;"></img></a>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Datenow" HeaderText="วันเวลา" 
                        SortExpression="Datenow">
                        <ItemStyle Width="250px" />
                    </asp:BoundField>
                    <asp:TemplateField>
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <asp:Literal ID="Literal12" runat="server" 
                                Text='<%#fileGet(Eval("Filename")) %>'></asp:Literal>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Lock">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemTemplate>
                            <asp:Literal ID="Literal1" runat="server" Text='<%#lockGet(Eval("code1")) %>'></asp:Literal>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ตอบรับ" Visible="False">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox23" runat="server" Font-Names="MS Sans Serif" 
                                Font-Size="10pt" Height="50px" Text='<%#ResiveGet(Eval("Id")) %>' 
                                TextMode="MultiLine" Width="258px"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" Font-Bold="True" Font-Names="หน้า" 
                    ForeColor="Blue" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="Gainsboro" />
                <PagerSettings FirstPageText="หน้าแรก" LastPageText="หน้าสุดท้าย" 
                    Mode="NumericFirstLast" NextPageText="หน้าถัดไป" 
                    PreviousPageText="ก่อนหน้านี้" />
            </asp:GridView>
            
                     
            
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
    </asp:UpdatePanel>
 
        <br />
    <br />
    <br />
        <hr />
        <center style="text-align: center">
            <font color="#ffffff" face="ms Sans Serif" size="1">เรามุ่งมั่นพัฒนา เทคโนโลยีสารสนเทศ
                เพื่อกองทัพของเรา....</font></center>
        <hr />
        <center>
            <font color="#ffffff" face="ms Sans Serif" size="1">Copyright © 2012 ศกม./สารสนเทศ กองทัพภาคที่
                2<br />
            </font>
        </center>
        <center>
            <font color="#ffffff" face="ms Sans Serif" size="1"></font>&nbsp;</center>
    </form>
</body>
</html>
