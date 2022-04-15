<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UpLogin.aspx.vb" Inherits="UpLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="background-color: black">
    <form id="form1" runat="server">
    <div style="background-color: black">
        <table style="font-size: 14pt; height: 43px">
            <tr>
                <td colspan="3" style="width: 683px; height: 1px; text-align: left">
                    <span style="font-size: 14pt; color: red"><span style="font-family: MS Sans Serif"><span
                        style="font-size: 10pt"><span style="color: white"><span style="color: #ff0000"><span
                            style="font-size: 14pt">|</span> <a href="setupadmin.aspx"><font color="#ffffff"
                                face="ms Sans Serif" size="2"><b>ข้อมูลข่าว</b></font></a> <span style="color: white">
                                </span><span style="font-size: 14pt">| <a href="setuplogin.aspx"><font color="#ffffff"
                                    face="ms Sans Serif" size="2"><b>ข้อมูล Login</b></font></a></span> </span>
                        </span></span><span style="font-size: 14pt; color: red">|<span style="font-size: 14pt">
                            <a href="UpLogin.aspx"><font color="#ffffff" face="ms Sans Serif" size="2"><b>ข้อมูล
                                หน่วยเหนือ</b></font></a></span><span style="font-size: 10pt"> </span><span style="font-size: 14pt;
                                    color: red">|<span style="font-size: 14pt; color: red">&nbsp;</span></span><span
                                        style="font-size: 14pt; color: red"> &nbsp; &nbsp;</span></span></span></span></td>
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
                            font-family: MS Sans Serif"></span></span><span style="font-family: MS Sans Serif"><span
                                style="font-size: 14pt; color: red"><span style="font-size: 14pt; color: red">
                                    <br />
                                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1"
                                        DefaultMode="Insert" Style="font-size: 10pt" Width="296px" DataKeyNames="Id">
                                        <EditItemTemplate>
                                            Id:
                                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>'></asp:Label><br />
                                            Up_name:
                                            <asp:TextBox ID="Up_nameTextBox" runat="server" Text='<%# Bind("Up_name") %>'>
                                            </asp:TextBox><br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                                Text="Update">
                                            </asp:LinkButton>
                                            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                                Text="Cancel">
                                            </asp:LinkButton>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            Up_name:
                                            <asp:TextBox ID="Up_nameTextBox" runat="server" Text="-"></asp:TextBox><br />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                                Text="Insert"></asp:LinkButton>
                                            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                                Text="Cancel"></asp:LinkButton>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            Id:
                                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>'></asp:Label><br />
                                            Up_name:
                                            <asp:Label ID="Up_nameLabel" runat="server" Text='<%# Bind("Up_name") %>'></asp:Label><br />
                                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                                                Text="Edit"></asp:LinkButton>
                                            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                                                Text="Delete"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:FormView>
                                </span></span></span></span>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
            Style="font-size: 10pt; color: white" Width="264px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <Columns>
                <asp:CommandField ButtonType="Button" DeleteText="ลบ" EditText="แก้ไข" InsertText="เพิ่ม"
                    ShowDeleteButton="True" ShowEditButton="True" UpdateText="บันทึก" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True"
                    SortExpression="Id" />
                <asp:BoundField DataField="Up_name" HeaderText="Up_name" SortExpression="Up_name" />
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
            SelectCommand="SELECT * FROM [Up_namestation]" DeleteCommand="DELETE FROM [Up_namestation] WHERE [Id] = @Id" UpdateCommand="UPDATE [Up_namestation] SET [Up_name] = @Up_name WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Up_name" />
                <asp:Parameter Name="Id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
