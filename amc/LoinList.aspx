<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LoinList.aspx.vb" Inherits="LoinList" %>

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
                        </span></span><span style="font-size: 14pt; color: red">|<span style="font-size: 14pt;
                            color: red"><a href="LoinList.aspx"><font color="#ffffff"
                                face="ms Sans Serif" size="2"><b>รายการLogin</b></font></a> <span style="font-size: 14pt; color: red">|<span style="font-size: 14pt;
                            color: red"><span style="font-size: 14pt; color: red"><span style="font-size: 14pt; color: red">
                                </span></span>&nbsp; &nbsp;</span></span></span></span></td>
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
                <td colspan="9" style="height: 6px; text-align: left">
                    &nbsp;<span style="font-size: 10pt; color: white"> <span style="font-family: MS Sans Serif">
                        ค้นหาLogin</span>&nbsp; &nbsp;<asp:TextBox ID="txtfind" runat="server" Style="text-align: right"
                            Width="215px"></asp:TextBox>&nbsp; &nbsp;<asp:Button ID="cmdfine" runat="server"
                                Text="ค้นหา" /></span></td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
            PageSize="50" Style="font-size: 10pt; color: white" Width="520px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ลำดับ" ReadOnly="True" SortExpression="Id">
                    <HeaderStyle BackColor="Navy" />
                    <ItemStyle BackColor="White" BorderColor="Black" ForeColor="Black" />
                </asp:BoundField>
                <asp:BoundField DataField="Unit" HeaderText="หน่วย" SortExpression="Unit">
                    <HeaderStyle BackColor="Navy" />
                    <ItemStyle BackColor="White" BorderColor="Black" ForeColor="Black" Width="250px" />
                </asp:BoundField>
                <asp:BoundField DataField="DateNow" HeaderText="เวลาที่ login" SortExpression="DateNow">
                    <HeaderStyle BackColor="Navy" />
                    <ItemStyle BackColor="White" BorderColor="Black" ForeColor="Black" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataNewConnectionString %>"
            SelectCommand="SELECT Id, Unit, DateNow FROM Login ORDER BY Id DESC" FilterExpression="Unit Like '%{0}%'">
            <FilterParameters>
                <asp:QueryStringParameter Name="txtfind" QueryStringField="txtfind" />
            </FilterParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
