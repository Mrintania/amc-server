<%@ Page Language="VB" AutoEventWireup="false" CodeFile="inbox.aspx.vb" Inherits="inbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Inbox</title>
<META HTTP-EQUIV="REFRESH" content="90;URL=inbox.aspx?nid=<%=Request.QueryString("nid")%>">
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
                    <span style="color: #000099; font-size: 11pt; font-family: MS Sans Serif;"><strong>AMC2013</strong></span></td>
                <td style="width: 595px; height: 6px; text-align: right">
                    <span style="color: #000099; font-size: 11pt; font-family: MS Sans Serif;"><strong>ระบบศูนย์ข่าวอัตโนมัติ</strong></span></td>
            </tr>
        </table><hr />
    </div>
        <strong><span style="font-size: 10pt"><span style="color: red"><span style="font-size: 14pt">
            <table style="height: 43px; font-size: 14pt;">
                <tr>
                    <td colspan="3" style="width: 683px; height: 1px; text-align: left">
                        <span
                                style="font-size: 14pt; color: red"><span style="font-family: MS Sans Serif"><span style="font-size: 10pt"><span style="color: white"><span style="color: #ff0000"><span
                                style="font-size: 14pt">|</span> 
                                    <a href=compose.aspx?nid=<%=Request.QueryString("nid")%> target="_New"><font face="ms Sans Serif" size="2" color=#ffffff><b>เขียนข่าวส่ง [Compose]</b></font></a>
                                    <span style="color: white"> </span>
                                <span style="font-size: 14pt">|
                                    <a href=inbox.aspx?nid=<%=Request.QueryString("nid")%> ><font face="ms Sans Serif" size="2" color=#ffffff><b>ข่าวรับ [Inbox]</b></font></a></span> </span>
                                </span> </span><span style="font-size: 14pt;
                                    color: red">|
                                    <a href=outbox.aspx?nid=<%=Request.QueryString("nid")%>><font face="ms Sans Serif" size="2" color=#ffffff><b>ตรวจสอบข่าวส่ง [Outbox]</b></font></a><span style="font-size: 10pt"><span style="color: white"></span>
                                    </span><span style="font-size: 14pt; color: red">| &nbsp; &nbsp;</span></span></span></span></td>
                    <td colspan="1" style="width: 280px; height: 1px; text-align: right">
                        &nbsp;
                    </td>
                    <td colspan="5" style="width: 186px; height: 1px; text-align: right">
                        <span style="color: #3300cc; font-size: 11pt; font-family: MS Sans Serif;"><span
                            style="font-size: 14pt; color: red"></span> </span>
                        <span style="color: #3300cc; font-size: 11pt; font-family: MS Sans Serif;"><strong>&nbsp;<span
                            style="font-size: 14pt; color: red">| <span style="font-size: 10pt"><span style="color: white;
                                font-family: MS Sans Serif"><a href=Default.aspx><font face="ms Sans Serif" size="2" color=#ffffff><b>ออกจากระบบ [Exit]</b></font></a></span> </span><span style="font-size: 14pt;
                                    color: red">|</span></span></strong></span></td>
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
                    <td colspan="2" style="width: 3280px; height: 6px">
                        <span style="color: #ffff33; font-size: 11pt; font-family: MS Sans Serif;"><strong><span
                            style="color: #ffff00"><span style="color: yellow">[ข่าวรับ]
                            &gt;&gt;</span> </span>&nbsp;<asp:Label ID="labname" runat="server" Font-Names="MS Sans Serif"
                                Width="226px" ForeColor="Yellow" style="color: yellow"></asp:Label></strong></span></td>
                    <td style="width: 596px; height: 6px; text-align: right">
                        <span style="color: #3300cc; font-size: 11pt; font-family: MS Sans Serif;">
                            <asp:Label ID="Label1" runat="server" ForeColor="DarkBlue" Text="ข่าวเข้าทั้งหมด" Width="112px" style="font-size: 10pt; font-family: MS Sans Serif" Font-Bold="True"></asp:Label>
                            <asp:Label ID="labtotal" runat="server" ForeColor="Red" Text="0" Width="39px" style="font-size: 10pt; font-family: MS Sans Serif" Font-Bold="True"></asp:Label>
                            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="ฉบับ" Width="37px" style="font-size: 10pt; font-family: MS Sans Serif" Font-Bold="True"></asp:Label>
                            <asp:Label ID="Label3" runat="server" ForeColor="DarkBlue" Text="เปิดอ่านแล้ว" Width="85px" style="font-size: 10pt; font-family: MS Sans Serif" Font-Bold="True"></asp:Label><asp:Label
                                ID="labready" runat="server" ForeColor="Red" Text="0" Width="37px" style="font-size: 10pt; font-family: MS Sans Serif" Font-Bold="True"></asp:Label><asp:Label
                                    ID="Label5" runat="server" ForeColor="White" Text="ฉบับ" Width="36px" style="font-size: 10pt; font-family: MS Sans Serif" Font-Bold="True"></asp:Label>
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="DarkBlue" Width="112px" style="font-size: 10pt; font-family: MS Sans Serif" Font-Bold="True">ยังไม่ได้เปิดอ่าน</asp:LinkButton>
                            <asp:Label ID="labno" runat="server" ForeColor="Red" Text="0"
                                    Width="37px" style="font-size: 10pt; font-family: MS Sans Serif" Font-Bold="True"></asp:Label>&nbsp;
                            <asp:Label ID="Label8" runat="server" ForeColor="White"
                                        Text="ฉบับ" Width="36px" style="font-size: 10pt; font-family: MS Sans Serif" Font-Bold="True"></asp:Label></span></td>
                </tr>
            </table><hr />
        </span></span></span></strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="MS Sans Serif"
            Font-Size="10pt" GridLines="Vertical" Width="983px" AllowPaging="True" PageSize="15">
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="From1" HeaderText="จาก" SortExpression="From1" >
                    <ItemStyle Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="Add1" HeaderText="ที่ของข่าว" SortExpression="Add1">
                    <ItemStyle Width="200px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="รายละเอียดข่าวแบบย่อ">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Height="50px" 
                            TextMode="MultiLine" Width="344px" Font-Names="MS Sans Serif" Font-Size="10pt" Text='<%#encodeGet(Eval("Story"),(Eval("code1"))) %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="อ่านข่าว">
                    <ItemTemplate>
                        <a href ="saveconfirm.aspx?postid=<%# Eval("Id")%>&nid=<%=Request.QueryString("nid")%>" target="_blank"><img src=images\pic\read.jpg style="width: 33px; height: 22px; border-right: dimgray thin solid; border-top: dimgray thin solid; border-left: dimgray thin solid; border-bottom: dimgray thin solid;"></a>
                    </ItemTemplate>
                    <ItemStyle Width="60px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="เวลาสตริง" Visible="False">
                    <ItemTemplate>
                        <asp:Literal runat="server" ID="L1" Text='<%#datesendGet(Eval("Id")) %>'></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle Width="60px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:BoundField DataField="Datenow" HeaderText="วันเวลา" SortExpression="Datenow" >
                    <ItemStyle Width="250px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="สถานะ">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemTemplate>
                      <asp:Literal runat="server" ID="L2" Text='<%#ImagesGet(Eval("Id")) %>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                      <asp:Literal runat="server" ID="Literal12" Text='<%#fileGet(Eval("Filename")) %>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Lock">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemTemplate>
                      <asp:Literal runat="server" ID="Literal1" Text='<%#lockGet(Eval("code1")) %>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>                
            </Columns>
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="Silver" ForeColor="Blue" HorizontalAlign="Center" Font-Names="MS Sans Serif" Font-Bold="True" BorderColor="Black" Font-Strikeout="False" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="Gainsboro" />
            <PagerSettings Mode="NumericFirstLast" FirstPageText="หน้าแรก" LastPageText="หน้าสุดท้าย" NextPageText="หน้าถัดไป" PreviousPageText="ก่อนหน้านี้" />
        </asp:GridView>    
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
            <font color="#ffffff" face="ms Sans Serif" size="1"></font>&nbsp;<%
Dim intNumber as Integer
intNumber =Application("ActiveUsers")
response.write (intNumber )
%> Currently Online<br />
    </center>
       </form>
</body>
</html>
