<%@ Page Language="VB" AutoEventWireup="false" CodeFile="setuplogin.aspx.vb" Inherits="setuplogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>setuplogin</title>
</head>
<body style="background-color: black">
    <form id="form1" runat="server">
    <div>
        <table style="font-size: 14pt; height: 43px">
            <tr>
                <td colspan="3" style="width: 683px; height: 1px; text-align: left">
                    <span style="font-size: 14pt; color: red"><span style="font-family: MS Sans Serif"><span
                        style="font-size: 10pt"><span style="color: white"><span style="color: #ff0000"><span
                            style="font-size: 14pt">|</span> <a href="setupadmin.aspx" ><font color="#ffffff"
                                face="ms Sans Serif" size="2"><b>ข้อมูลข่าว</b></font></a> <span style="color: white">
                                </span><span style="font-size: 14pt">| <a href="setuplogin.aspx"><font color="#ffffff"
                                    face="ms Sans Serif" size="2"><b>ข้อมูล Login</b></font></a></span> </span>
                        </span></span><span style="font-size: 14pt; color: red">|<span style="font-size: 14pt">
                            <a href="UpLogin.aspx"><font color="#ffffff"
                                    face="ms Sans Serif" size="2"><b>ข้อมูล
                                หน่วยเหนือ</b></font></a></span><span style="font-size: 10pt"> </span><span style="font-size: 14pt; color: red">|<span style="font-size: 14pt;
                            color: red">&nbsp;</span></span><span style="font-size: 14pt;
                            color: red"> &nbsp; &nbsp;</span></span></span></span></td>
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
                    <span style="font-size: 9pt; color: black">.<br />
                        <span style="color: white"></span><span style="font-size: 14pt"><span style="color: #ff0000;
                            font-family: MS Sans Serif">| </span><a href="AddLogin.aspx"><font color="#ffffff"
                                    face="ms Sans Serif" size="2"><b>เพิ่มข้อมูล Login</b></font></a></span><span style="font-family: MS Sans Serif"><span
                                    style="font-size: 10pt; color: #ff0000"> </span><span style="font-size: 14pt; color: red">
                                        |<span style="font-size: 14pt;
                            color: red"> &nbsp; </span></span></span>
                    </span></td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
            PageSize="40" Style="font-size: 10pt; color: white" Width="600px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <Columns>
                <asp:CommandField ButtonType="Button" CancelText="ยกเลิก" DeleteText="ลบ" EditText="แก้ไข"
                    InsertText="แทรก" NewText="เพิ่ม" ShowDeleteButton="True" ShowEditButton="True"
                    UpdateText="บันทึก">
                    <HeaderStyle BackColor="Navy" />
                </asp:CommandField>
                <asp:BoundField DataField="Id" HeaderText="ลำดับ" ReadOnly="True" SortExpression="Id">
                    <HeaderStyle BackColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username">
                    <HeaderStyle BackColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Userpwd" HeaderText="Userpwd" SortExpression="Userpwd">
                    <HeaderStyle BackColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Namestation" HeaderText="หน่วย" SortExpression="Namestation">
                    <HeaderStyle BackColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Up_id" HeaderText="หมายเลยหน่วยเหนือ" SortExpression="Up_id">
                    <HeaderStyle BackColor="Navy" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <EditRowStyle BackColor="#999999" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataNewConnectionString %>"
            SelectCommand="SELECT * FROM [UserTable]" DeleteCommand="DELETE FROM [UserTable] WHERE [Id] = @Id" UpdateCommand="UPDATE [UserTable] SET [Username] = @Username, [Userpwd] = @Userpwd, [Namestation] = @Namestation, [Up_id] = @Up_id WHERE [Id] = @Id&#13;&#10;">
            <DeleteParameters>
                <asp:Parameter Name="Id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" />
                <asp:Parameter Name="Userpwd" />
                <asp:Parameter Name="Namestation" />
                <asp:Parameter Name="Up_id" />
                <asp:Parameter Name="Id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
