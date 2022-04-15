<%@ Page Language="VB" AutoEventWireup="false" CodeFile="address.aspx.vb" Inherits="address" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Address</title>
<script language="JavaScript">
function trimAll(sString)
{
while (sString.substring(0,1) == ' ')
{
sString = sString.substring(1, sString.length);
}
while (sString.substring(sString.length-1, sString.length) == ' ')
{
sString = sString.substring(0,sString.length-1);
}
return sString;
} 
function Update(where)
{
	var e1,e2,e3;
	e1 = "";
	e2 = "";
	e3 =  "";
	if ((where == 'to')||(where=='all'))
		e1 = window.opener.document.composeform.gtomake.value;
		e1 = trimAll(e1)
	if ((where == 'CC')||(where=='all'))		
		e2 = window.opener.document.composeform.gtook.value;
        e2 = trimAll(e2)
	for (var i = 0; i < document.addr.elements.length; i++)
	{
		var e = document.addr.elements[i];
		if ((e.name.indexOf('to:')==0) && (e.checked) && (e1.indexOf(e.value)== -1))
		{
			if (e1) e1 += ",";
			e1 += trimAll(e.value);
		}
		if ((e.name.indexOf('CC:')==0) && (e.checked) && (e2.indexOf(e.value) == -1))
		{
			if (e2)	e2 += ",";
			e2 += trimAll(e.value);
		}

	}

	if ((where == 'to')||(where == 'all'))
		//window.opener.document.composeform.gtomake.value = e1;
		window.opener.document.getElementById('gtomake').value = e1;
	if ((where == 'CC')||(where == 'all'))
		//window.opener.document.composeform.gtook.value = e2;
		window.opener.document.getElementById('gtook').value = e2;
		
        window.close();
}
</script>
    
     <script type="text/javascript" src="Scripts/jquery-1.4.1.js"></script>
      <script type="text/javascript" src="Scripts/jquery-1.4.1-vsdoc.js"></script>

 <script type="text/javascript">
    
        /*** for CheckAll ***/
        $(document).ready(function() {
            $('#<%=GridView1.ClientID%> input[id*="CheckAll"]:checkbox').click(
                 function() {
                    $('#<%=GridView1.ClientID%> input[id*="CheckID"]:checkbox').attr('checked', $('#<%=GridView1.ClientID%> input[id*="CheckAll"]:checkbox').is(':checked'));
                 }
             );
        });

        /*** for btnCheckAll ***/
        $(document).ready(function() {
            $('#btnCheckAll').click(
             function() {
                 $('#<%=GridView1.ClientID%> input[id*="CheckAll"]:checkbox').attr('checked', true);
                 $('#<%=GridView1.ClientID%> input[id*="CheckID"]:checkbox').attr('checked', true);
             }
            );
         });

         /*** for btnUncheckAll ***/
         $(document).ready(function() {
            $('#btnUncheckAll').click(
             function() {
                $('#<%=GridView1.ClientID%> input[id*="CheckAll"]:checkbox').attr('checked', false);
                $('#<%=GridView1.ClientID%> input[id*="CheckID"]:checkbox').attr('checked', false);
             }
            );
         });        
        
         $(document).ready(function() {
            $('#<%=GridView1.ClientID%> input[id*="Ch2"]:checkbox').click(
                 function() {
                    $('#<%=GridView1.ClientID%> input[id*="Che2"]:checkbox').attr('checked', $('#<%=GridView1.ClientID%> input[id*="Ch2"]:checkbox').is(':checked'));
                 }
             );
        });
        
     </script>
     
     
     <%--<script type="text/javascript">
    
        /*** for CheckAll ***/
        $(document).ready(function() {
            $('#<%=GridView1.ClientID%> input[id*="CheckAll2"]:checkbox').click(
                 function() {
                    $('#<%=GridView1.ClientID%> input[id*="CheckID2"]:checkbox').attr('checked', $('#<%=GridView1.ClientID%> input[id*="CheckAll2"]:checkbox').is(':checked'));
                 }
             );
        });

        /*** for btnCheckAll ***/
        $(document).ready(function() {
            $('#btnCheckAll2').click(
             function() {
                 $('#<%=GridView1.ClientID%> input[id*="CheckAll2"]:checkbox').attr('checked', true);
                 $('#<%=GridView1.ClientID%> input[id*="CheckID2"]:checkbox').attr('checked', true);
             }
            );
         });

         /*** for btnUncheckAll ***/
         $(document).ready(function() {
            $('#btnUncheckAll2').click(
             function() {
                $('#<%=GridView1.ClientID%> input[id*="CheckAll2"]:checkbox').attr('checked', false);
                $('#<%=GridView1.ClientID%> input[id*="CheckID2"]:checkbox').attr('checked', false);
             }
            );
         });        
        
     </script>--%>
    
    <style type="text/css">
        .style1
        {
            width: 279px;
            height: 53px;
        }
    </style>
    
</head>
<body style="background-color: lightgrey">
    <form id="addr" runat="server">
    <div>
        <table style="border-right: black thin solid; border-top: black thin solid; border-left: black thin solid;
            width: 296px; border-bottom: black thin solid; height: 43px; background-color: skyblue">
            <tr>
                <td colspan="3" class="style1">
                    <span style="color: #0000cc">&nbsp;<span style="font-size: 10pt"><strong>กรุณาเลือกหน่วยเหนือ</strong></span></span>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Up_name" 
                        Width="142px" AutoPostBack="True" DataValueField="Up_name" Height="25px">
                    </asp:DropDownList></td>
            </tr>
        </table>
    
    </div>
    <table style="border-right: black thin solid; border-top: black thin solid; border-left: black thin solid;
            width: 296px; border-bottom: black thin solid; height: 43px">
            <tr>
                <td colspan="3" style="width: 289px; height: 1px; text-align: center;">
                    <span style="color: #ffff66">&nbsp;
                        <input name="Button" onclick="javascript:Update('all')" style="width: 54px" type="submit"
                            value="Ok" />
                        <input name="Submit2" type="reset" value="Reset" /></span></td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Font-Bold="False"
            Font-Names="MS Sans Serif" Font-Size="11pt" Style="border-right: black thin solid;
            border-top: black thin solid; border-left: black thin solid; border-bottom: black thin solid; font-size: 10pt;"
            Width="296px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <Columns>
                <asp:TemplateField HeaderText="ถึงผู้รับปฏิบัติ">
                    <HeaderTemplate>
                        <asp:CheckBox ID="CheckAll" runat="server" />
                        <br />
                        ถึงผู้รับปฏิบัติ
                    </HeaderTemplate>
                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                    <ItemTemplate>
                        <Input name="to:<%# Eval("Namestation") %>" type=checkbox  value="<%# Eval("Namestation") %>" id="CheckID">
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ถึงผู้รับทราบ">
                    <HeaderTemplate>
                        <asp:CheckBox ID="Ch2" runat="server" />
                        <br />
                        ถึงผู้รับทราบ
                    </HeaderTemplate>
                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                    <ItemTemplate>
                        <Input name="CC:<%# Eval("Namestation") %>" type=checkbox  value="<%# Eval("Namestation") %>" id="Che2">
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Namestation" HeaderText="นามหน่วย" SortExpression="Namestation" >
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
            </Columns>
            <RowStyle BorderColor="Transparent" BackColor="#EFF3FB" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
        <table style="border-right: black thin solid; border-top: black thin solid; border-left: black thin solid;
            width: 296px; border-bottom: black thin solid; height: 43px">
            <tr>
                <td colspan="3" style="width: 289px; height: 1px; text-align: center;">
                    <span style="color: #ffff66">&nbsp;
                        <input name="Button" onclick="javascript:Update('all')" style="width: 54px" type="submit"
                            value="Ok" />
                        <input name="Submit2" type="reset" value="Reset" /></span></td>
            </tr>
        </table>
        &nbsp;&nbsp;
    </form>
</body>
</html>
