<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Login </title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function IMG1_onclick() {

}

// ]]>
</script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 4px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>
<body style="background-color: white">
    <form id="form1" runat="server">
    <div>
        <table align="center" style="width: 946px; height: 108px">
            <tr>
                <td colspan="5" style="border-top-width: thin; font-weight: bold; border-left-width: thin;
                    border-left-color: #ffcc66; background-image: url(/images/pic/ti1.gif); border-bottom-width: thin;
                    border-bottom-color: #ffcc66; border-top-color: #ffcc66; height: 9px; border-right-width: thin;
                    border-right-color: #ffcc66">
                    <br />
                    <br />
                    
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td rowspan="3" style="vertical-align: middle; width: 484px; text-align: center">
                    <br />
                    <br />
                </td>
                <td rowspan="3" style="background-image: url(/images/pic/ty1.gif); width: 2px">
                </td>
                <td colspan="3" style="font-size: 16pt; color: black; font-family: CordiaUPC; height: 17px">
                    <span style="color: darkslategray; font-family: MS Sans Serif">&nbsp; 
                    &nbsp;ระบบศูนย์ข่าวอัตโนมัติ AMC 
                    การฝึก TEWT</span></td>
            </tr>
            <tr>
                <td style="font-size: 16pt; width: 114px; color: black; font-family: CordiaUPC; height: 53px">
                </td>
                <td style="width: 788px; height: 53px; color: black; font-size: 16pt; font-family: CordiaUPC;">
                    &nbsp; 
                    <br />
                    &nbsp; <span style="font-size: 10pt; font-family: MS Sans Serif"><strong>Username :&nbsp;</strong></span>
                    <asp:TextBox ID="txtUser" runat="server" Width="113px"></asp:TextBox>&nbsp; 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser"
                        ErrorMessage="Wrong UserName" Width="156px"></asp:RequiredFieldValidator><br />
                    &nbsp; <span
                        style="font-size: 10pt"><span style="font-family: MS Sans Serif"><strong style="color: black">
                    Password :</strong></span>&nbsp;</span>&nbsp;
                    <asp:TextBox ID="txtPass" runat="server" Width="113px" TextMode="Password"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass"
                        ErrorMessage="Wrong Password" Width="156px"></asp:RequiredFieldValidator><br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Login" Width="59px" />
                    &nbsp;&nbsp;
                    <br />
                </td>
                <td style="width: 343px; height: 53px;">
                    <br />
                    &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3" style="font-size: 16pt; color: black; font-family: CordiaUPC">
                    <strong style="font-size: 16pt; color: darkslategray">&nbsp; </strong></td>
            </tr>
            <tr>
                <td height="177" colspan="5" style="border-top-width: thin; border-left-width: thin; border-left-color: #ffcc66;
                    background-image: url(/images/pic/ti2.gif); border-bottom-width: thin; border-bottom-color: #ffcc66;
                    border-top-color: #ffcc66; height: 41px; border-right-width: thin; border-right-color: #ffcc66">
                    <p><br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                  </p>
                    <p><br />
                        <br />
                        <br />
                                      </p></td>
            </tr>
      </table>
    </div>
        </form>
</body>
</html>
