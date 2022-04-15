<%@ Page Language="VB" AutoEventWireup="false" CodeFile="saveconfirm1.aspx.vb" Inherits="saveconfirm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<META HTTP-EQUIV="REFRESH" content="3;URL=view.aspx?gid=<%=Request.QueryString("postid")%>">
    <title>SaveConfirm</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table bgcolor="#f6f6de" border="0">
            <tr>
                <td align="center">
                    <font face="ms Sans Serif" size="3">Autometic Confirm News &lt;==========/////Programing
                        By Signal 22/////===========&gt; </font>
                </td>
            </tr>
        </table>
    </div><table bgcolor="#f6f6de" border="0">
        <tr>
            <td align="center" style="width: 601px">
                <font face="ms Sans Serif" size="3">
                    <asp:Label ID="Label2" runat="server" Style="text-align: left" Visible="False" Width="16px"></asp:Label>ตอบรับข่าวของหน่วย &gt;&gt;
                    <asp:Label ID="Label1" runat="server" Style="text-align: left" Width="208px"></asp:Label></font></td>
        </tr>
    </table>
    </form>
</body>
</html>
