<%@ Page Language="VB" AutoEventWireup="false" CodeFile="setupadmin.aspx.vb" Inherits="setupadmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>setupadmin</title>
</head>
<body bgcolor="#000000">
    <form id="form1" runat="server">
    <div>
        <table style="font-size: 14pt; height: 43px; width: 944px;">
            <tr>
                <td colspan="3" style="width: 414px; height: 1px; text-align: left">
                    <span style="font-size: 14pt; color: red"><span style="font-family: MS Sans Serif"><span
                        style="font-size: 10pt"><span style="color: white"><span style="color: #ff0000"><span
                            style="font-size: 14pt">|</span> <a href="setupadmin.aspx" ><font color="#ffffff"
                                face="ms Sans Serif" size="2"><b>ข้อมูลข่าว</b></font></a> <span style="color: white">
                                </span><span style="font-size: 14pt">| <a href="setuplogin.aspx"><font color="#ffffff"
                                    face="ms Sans Serif" size="2"><b>ข้อมูล Login</b></font></a></span> </span>
                        </span></span><span style="font-size: 14pt; color: red">| <span style="font-size: 14pt;
                            color: red"><a href="LoinList.aspx"><font color="#ffffff"
                                face="ms Sans Serif" size="2"><b>รายการLogin</b></font></a> <span style="font-size: 14pt">| <a href="NewTotal.aspx"><font color="#ffffff"
                                    face="ms Sans Serif" size="2"><b>สถิติข่าว</b></font></a></span> <span style="font-size: 14pt; color: red">| <span style="font-size: 14pt">&nbsp;<a href="LoginTotal.aspx"><font color="#ffffff"
                                    face="ms Sans Serif" size="2"><b>สถิติ Login</b></font></a> </span>|&nbsp; &nbsp;</span></span></span></td>
                <td colspan="1" style="width: 271px; height: 1px; text-align: right">
                    &nbsp;
                </td>
                <td colspan="5" style="width: 154px; height: 1px; text-align: right">
                    <span style="font-size: 11pt; color: #3300cc; font-family: MS Sans Serif"><span style="font-size: 14pt;
                        color: red"></span></span><span style="font-size: 11pt; color: #3300cc; font-family: MS Sans Serif">
                            <strong>&nbsp;<span style="font-size: 14pt; color: red">| <span style="font-size: 10pt">
                                <span style="color: white; font-family: MS Sans Serif"><a href="Default.aspx"><font
                                    color="#ffffff" face="ms Sans Serif" size="2"><b>ออกจากระบบ [Exit]</b></font></a></span>
                            </span><span style="font-size: 14pt; color: red">|</span></span></strong></span></td>
            </tr>
            <tr>
                <td colspan="9" style="height: 6px; text-align: left">
                    <span style="font-size: 9pt; color: black">.</span></td>
            </tr>
            <tr>
                <td colspan="3" style="width: 414px; height: 6px; text-align: right; font-size: 10pt; color: white;">
                    </td>
                <td colspan="6" style="height: 6px; text-align: right">
                    <span style="font-size: 10pt; color: white">ค้นหาใน&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>From1</asp:ListItem>
                            <asp:ListItem>Add1</asp:ListItem>
                            <asp:ListItem>Tomake</asp:ListItem>
                            <asp:ListItem>Took</asp:ListItem>
                            <asp:ListItem>Sendman</asp:ListItem>
                            <asp:ListItem>Sendstation</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;<span style="font-family: MS Sans Serif">ค้นหาที่ของข่าว</span>&nbsp;
                        &nbsp;<asp:TextBox ID="txtfind" runat="server" Style="text-align: left" Width="215px"></asp:TextBox>&nbsp;
                        &nbsp;<asp:Button ID="cmdfine" runat="server" Text="ค้นหา" /></span></td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display."
            ForeColor="#333333" GridLines="None" PageSize="30" Style="font-size: 10pt; color: white"
            Width="2016px">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" CancelText="ยกเลิก" DeleteText="ลบ" EditText="แก้ไข"
                    InsertText="แทรก" NewText="เพิ่ม" SelectText="เลือก" ShowDeleteButton="True"
                    ShowEditButton="True" UpdateText="บันทึก">
                    <HeaderStyle BackColor="#C0C0FF" />
                </asp:CommandField>
                <asp:BoundField DataField="Id" HeaderText="ลำดับ" ReadOnly="True" SortExpression="Id">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Express1" HeaderText="Express1" SortExpression="Express1">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Express2" HeaderText="Express2" SortExpression="Express2">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Datetime" HeaderText="หมู่วันเวลา" SortExpression="Datetime">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Typenews" HeaderText="ประเภท" SortExpression="Typenews">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="From1" HeaderText="จาก" SortExpression="From1">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Add1" HeaderText="ที่ข่าว" SortExpression="Add1">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="ผู้รับปฏิบัติ" SortExpression="Tomake">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                    <ItemTemplate>
                        <asp:TextBox ID="Tomake" runat="server" Height="40px" Text='<%# Bind("Tomake") %>'
                            TextMode="MultiLine" Width="128px" Font-Names="MS Sans Serif"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ผู้รับทราบ" SortExpression="Took">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                    <ItemTemplate>
                        <asp:TextBox ID="Took" runat="server" Height="40px" Text='<%# Bind("Took") %>' TextMode="MultiLine"
                            Width="128px" Font-Names="MS Sans Serif"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="เนื้อข่าว">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                    <ItemTemplate>
                        <asp:TextBox ID="Story" runat="server" Height="40px" Text='<%# Bind("Story") %>'
                            TextMode="MultiLine" Width="184px" Font-Names="MS Sans Serif"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="อ่านข่าว">
                    <ItemTemplate>
                        <a href ="saveconfirm1.aspx?postid=<%# Eval("Id")%>" target="_blank"><img src=images\pic\read.jpg style="width: 33px; height: 22px; border-right: dimgray thin solid; border-top: dimgray thin solid; border-left: dimgray thin solid; border-bottom: dimgray thin solid;"></a>
                    </ItemTemplate>
                    <ItemStyle Width="60px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:BoundField DataField="Sendman" HeaderText="ผู้เขียนข่าว" SortExpression="Sendman">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Sendstation" HeaderText="หน่วย" SortExpression="Sendstation">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Sendtel" HeaderText="โทร" SortExpression="Sendtel">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Sendboss" HeaderText="น.อนุมัติข่าว" SortExpression="Sendboss">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Datenow" HeaderText="Datenow" SortExpression="Datenow">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Filename" HeaderText="Filename" SortExpression="Filename">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Filesize" HeaderText="Filesize" SortExpression="Filesize">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="code1" HeaderText="รหัส" SortExpression="code1">
                    <HeaderStyle BackColor="#C0C0FF" ForeColor="Navy" />
                </asp:BoundField>
            </Columns>
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <EmptyDataTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Height="40px" Text='<%# Eval("Story") %>'
                    TextMode="MultiLine" Width="192px"></asp:TextBox>
            </EmptyDataTemplate>
            <EditRowStyle BackColor="#999999" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        &nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DataNewConnectionString %>"
            SelectCommand="SELECT Id, Express1, Express2, Datetime, Typenews, From1, Add1, Tomake, Took, Story, Sendman, Sendstation, Sendtel, Sendboss, Datenow, Filename, Filesize, code1 FROM DataNews ORDER BY Id DESC" DeleteCommand="DELETE FROM [DataNews] WHERE [Id] = @Id" UpdateCommand="UPDATE [DataNews] SET [Express1] = @Express1, [Express2] = @Express2, [Datetime] = @Datetime, [Typenews] = @Typenews, [From1] = @From1, [Add1] = @Add1, [Tomake] = @Tomake, [Took] = @Took, [Story] = @Story, [Sendman] = @Sendman, [Sendstation] = @Sendstation, [Sendtel] = @Sendtel, [Sendboss] = @Sendboss, [Datenow] = @Datenow, [Filename] = @Filename, [Filesize] = @Filesize, [code1] = @code1 WHERE [Id] = @Id&#13;&#10;" FilterExpression="{1}  Like '%{0}%'">
            <DeleteParameters>
                <asp:Parameter Name="Id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Express1" />
                <asp:Parameter Name="Express2" />
                <asp:Parameter Name="Datetime" />
                <asp:Parameter Name="Typenews" />
                <asp:Parameter Name="From1" />
                <asp:Parameter Name="Add1" />
                <asp:Parameter Name="Tomake" />
                <asp:Parameter Name="Took" />
                <asp:Parameter Name="Story" />
                <asp:Parameter Name="Sendman" />
                <asp:Parameter Name="Sendstation" />
                <asp:Parameter Name="Sendtel" />
                <asp:Parameter Name="Sendboss" />
                <asp:Parameter Name="Datenow" />
                <asp:Parameter Name="Filename" />
                <asp:Parameter Name="Filesize" />
                <asp:Parameter Name="code1" />
                <asp:Parameter Name="Id" />
            </UpdateParameters>
            <FilterParameters>
                <asp:QueryStringParameter Name="txtfind" QueryStringField="txtfind" />
                <asp:QueryStringParameter Name="DropDownList1" QueryStringField="DropDownList1" />
            </FilterParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
