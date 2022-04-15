<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AddLogin.aspx.vb" Inherits="AddLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="background-color: black">
    <form id="form1" runat="server">
    <div style="background-color: black">
        <table cellpadding="0" cellspacing="0" style="font-size: 11pt; width: 352px; height: 232px;
            background-color: lemonchiffon">
            <tr>
                <td style="width: 36px; height: 25px">
                </td>
                <td colspan="2" style="font-weight: bold; font-size: 12pt; color: red; height: 25px">
                    เพิ่มข้อมูล Login</td>
            </tr>
            <tr>
                <td style="width: 36px; height: 16px">
                </td>
                <td style="font-weight: bold; font-size: 10pt; width: 154px; color: blue; height: 16px">
                    USERNAME&nbsp; :
                </td>
                <td style="width: 227px; height: 16px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="152px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 36px; height: 16px">
                </td>
                <td style="font-weight: bold; font-size: 10pt; width: 154px; color: blue; height: 16px">
                    PASSWORD :</td>
                <td style="width: 227px; height: 16px">
                    <asp:TextBox ID="NameTextBox" runat="server" Width="152px"></asp:TextBox></td>
            </tr>
            <tr style="color: #000000">
                <td style="width: 36px">
                </td>
                <td style="font-weight: bold; font-size: 10pt; width: 154px; color: blue">
                    หน่วย&nbsp; :</td>
                <td style="width: 227px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="152px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 36px; height: 5px">
                </td>
                <td style="font-weight: bold; font-size: 10pt; width: 154px; color: blue; height: 5px">
                    หน่วยเหนือ:</td>
                <td style="font-weight: bold; font-size: 10pt; width: 227px; color: blue; height: 5px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="160px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td colspan="1" style="vertical-align: middle; width: 36px; height: 18px; text-align: center">
                </td>
                <td colspan="2" style="font-weight: bold; font-size: 10pt; color: blue; height: 18px">
                    <asp:Button ID="Button1" runat="server" CommandName="Insert" Text="เพิ่มข้อมูล" />
                    <asp:Button ID="Button2" runat="server" CommandName="Cancel" Text="ยกเลิก" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
