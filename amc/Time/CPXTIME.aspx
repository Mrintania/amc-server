<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CPXTIME.aspx.vb" Inherits="_CPXTIME" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        วันที่
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            Height="27px" Width="112px">
            <asp:ListItem Value="5">5 ก.ค. 56</asp:ListItem>
            <asp:ListItem Value="6">6 ก.ค. 56</asp:ListItem>
            <asp:ListItem Value="7">7 ก.ค. 56</asp:ListItem>
            <asp:ListItem Value="8">8 ก.ค. 56</asp:ListItem>
            <asp:ListItem Value="9">9 ก.ค. 56</asp:ListItem>
            <asp:ListItem Value="10">10 ก.ค. 56</asp:ListItem>
            <asp:ListItem Value="11">11 ก.ค. 56</asp:ListItem>
            <asp:ListItem Value="12">12 ก.ค. 56</asp:ListItem>
            <asp:ListItem Value="13">13 ก.ค. 56</asp:ListItem>
        </asp:DropDownList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" DataFile="~/App_Data/cpx.mdb" 
            DeleteCommand="DELETE FROM [DataCPX] WHERE (([Id] = ?) OR ([Id] IS NULL AND ? IS NULL)) AND (([IdDay] = ?) OR ([IdDay] IS NULL AND ? IS NULL)) AND (([RealTime] = ?) OR ([RealTime] IS NULL AND ? IS NULL)) AND (([CpxTime] = ?) OR ([CpxTime] IS NULL AND ? IS NULL)) AND (([DateCpx] = ?) OR ([DateCpx] IS NULL AND ? IS NULL)) AND (([Comment] = ?) OR ([Comment] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [DataCPX] ([Id], [IdDay], [RealTime], [CpxTime], [DateCpx], [Comment]) VALUES (?, ?, ?, ?, ?, ?)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [DataCPX] WHERE ([IdDay] = ?)" 
            UpdateCommand="UPDATE [DataCPX] SET [IdDay] = ?, [RealTime] = ?, [CpxTime] = ?, [DateCpx] = ?, [Comment] = ? WHERE (([Id] = ?) OR ([Id] IS NULL AND ? IS NULL)) AND (([IdDay] = ?) OR ([IdDay] IS NULL AND ? IS NULL)) AND (([RealTime] = ?) OR ([RealTime] IS NULL AND ? IS NULL)) AND (([CpxTime] = ?) OR ([CpxTime] IS NULL AND ? IS NULL)) AND (([DateCpx] = ?) OR ([DateCpx] IS NULL AND ? IS NULL)) AND (([Comment] = ?) OR ([Comment] IS NULL AND ? IS NULL))">
            <SelectParameters>
                <asp:QueryStringParameter Name="IdDay" QueryStringField="IdDay" Type="Double" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Double" />
                <asp:Parameter Name="original_IdDay" Type="Double" />
                <asp:Parameter Name="original_RealTime" Type="String" />
                <asp:Parameter Name="original_CpxTime" Type="String" />
                <asp:Parameter Name="original_DateCpx" Type="DateTime" />
                <asp:Parameter Name="original_Comment" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="IdDay" Type="Double" />
                <asp:Parameter Name="RealTime" Type="String" />
                <asp:Parameter Name="CpxTime" Type="String" />
                <asp:Parameter Name="DateCpx" Type="DateTime" />
                <asp:Parameter Name="Comment" Type="String" />
                <asp:Parameter Name="original_Id" Type="Double" />
                <asp:Parameter Name="original_IdDay" Type="Double" />
                <asp:Parameter Name="original_RealTime" Type="String" />
                <asp:Parameter Name="original_CpxTime" Type="String" />
                <asp:Parameter Name="original_DateCpx" Type="DateTime" />
                <asp:Parameter Name="original_Comment" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Double" />
                <asp:Parameter Name="IdDay" Type="Double" />
                <asp:Parameter Name="RealTime" Type="String" />
                <asp:Parameter Name="CpxTime" Type="String" />
                <asp:Parameter Name="DateCpx" Type="DateTime" />
                <asp:Parameter Name="Comment" Type="String" />
            </InsertParameters>
        </asp:AccessDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="Id" DataSourceID="AccessDataSource1" 
            ForeColor="Black" GridLines="Vertical" Width="100%">
            <RowStyle BackColor="#F7F7DE" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                    SortExpression="Id" Visible="False">
                    <ItemStyle Width="20px" />
                </asp:BoundField>
                <asp:BoundField DataField="IdDay" HeaderText="IdDay" ReadOnly="True" 
                    SortExpression="IdDay" Visible="False">
                    <ItemStyle Width="30px" />
                </asp:BoundField>
                <asp:BoundField DataField="RealTime" HeaderText="เวลาจริง" ReadOnly="True" 
                    SortExpression="RealTime">
                    <ItemStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="CpxTime" HeaderText="เวลาฝึก" ReadOnly="True" 
                    SortExpression="CpxTime">
                    <ItemStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="DateCpx" DataFormatString="{0:D}" 
                    HeaderText="ว/ด/ป" ReadOnly="True" SortExpression="DateCpx">
                    <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="Comment" HeaderText="หมายเหตุ" 
                    SortExpression="Comment" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                    <ItemStyle Width="40px" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
