<%
Sub ConnectDB()
	Set conn=Server.CreateObject("ADODB.Connection")
	conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.mappath("edi_out.mdb")
End Sub

Sub DisconnectDB()
	conn.Close
	Set conn = Nothing	
End Sub

Sub ShowPageNum(intPageCount, intPageCurrent, url, intAnswer)
	For i = 1 To intPageCount
		' ����ʴ�������˹�һѨ�غѹ����ͧ��� Hyperlink
		If i = CInt(intPageCurrent) Then
			If i = intPageCount Then
				Response.Write "<b>" & i & "</b>"
			Else
				Response.Write "<b>" & i & "</b> | "
			End If
		Else
		' ���������ʴ�������˹�һѨ�غѹ������ Hyperlink
			Response.Write "<a href=" & url & "?page=" & i & "&ans=" & intAnswer & ">"
			If i = intPageCount Then
				Response.Write i & "</a>"
			Else
				Response.Write i & "</a> | "				
			End If
		End If
	Next
End Sub
%>