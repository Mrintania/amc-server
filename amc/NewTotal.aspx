<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewTotal.aspx.vb" Inherits="NewTotal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>สรุปข่าว</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellpadding="0" cellspacing="0" style="width: 496px">
            <tr>
                <td style="width: 118px">
                </td>
                <td style="width: 345px">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 118px; height: 19px">
                </td>
                <td style="width: 345px; height: 19px">
                    <asp:Label ID="Label1" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt"
                        Text="สรุปข่าว ณ เวลา " Width="104px"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt"
                        Width="160px"></asp:Label></td>
                <td style="height: 19px">
                </td>
            </tr>
            <tr>
                <td style="width: 118px">
                </td>
                <td style="width: 345px">
                </td>
                <td>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
            DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
            PageSize="20" Style="font-size: 10pt; color: white" Width="496px" CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ลำดับ" ReadOnly="True" SortExpression="Id">
                    <ItemStyle Width="40px" />
                    <HeaderStyle BackColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="Namestation" HeaderText="หน่วย" SortExpression="Namestation">
                    <ItemStyle Width="200px" />
                    <HeaderStyle BackColor="Navy" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="ข่าวรับ">
                    <HeaderStyle BackColor="Navy" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemTemplate>
                      <asp:Literal runat="server" ID="L1" Text='<%#ImagesGet(Eval("Namestation")) %>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ข่าวส่ง">
                    <HeaderStyle BackColor="Navy" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemTemplate>
                      <asp:Literal runat="server" ID="L2" Text='<%#ImagesGet1(Eval("Namestation")) %>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataNewConnectionString %>"
            DeleteCommand="DELETE FROM [UserTable] WHERE [Id] = @Id" SelectCommand="SELECT * FROM [UserTable]"
            UpdateCommand="UPDATE [UserTable] SET [Username] = @Username, [Userpwd] = @Userpwd, [Namestation] = @Namestation, [Up_id] = @Up_id WHERE [Id] = @Id&#13;&#10;">
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
        </asp:SqlDataSource><table cellpadding="0" cellspacing="0" style="width: 496px">
            <tr>
                <td style="width: 165px">
                </td>
                <td style="width: 85px">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 165px; height: 25px">
                </td>
                <td style="width: 85px; height: 25px">
                    <asp:Label ID="Label3" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt"
                        Text="ข่าวรับ" Width="56px"></asp:Label>
                </td>
                <td style="height: 25px">
                    <asp:Label ID="Label4" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt"
                        Style="text-align: right" Width="72px">0</asp:Label></td>
            </tr>
            <tr>
                <td style="width: 165px; height: 24px;">
                </td>
                <td style="width: 85px; height: 24px;">
                    <asp:Label ID="Label5" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt"
                        Text="ข่าวส่ง" Width="56px"></asp:Label></td>
                <td style="height: 24px">
                    <asp:Label ID="Label6" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt"
                        Style="text-align: right" Width="72px">0</asp:Label></td>
            </tr>
            <tr>
                <td style="width: 165px; height: 22px">
                </td>
                <td style="width: 85px; height: 22px">
                    <asp:Label ID="Label7" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt"
                        Text="รวม" Width="56px"></asp:Label></td>
                <td style="height: 22px">
                    <asp:Label ID="Label8" runat="server" Font-Names="MS Sans Serif" Font-Size="10pt"
                        Style="text-align: right" Width="72px">0</asp:Label></td>
            </tr>
        </table>
    </form>
</body>
</html>
