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
		' ถ้าแสดงอยู่ที่หน้าปัจจุบันไม่ต้องใส่ Hyperlink
		If i = CInt(intPageCurrent) Then
			If i = intPageCount Then
				Response.Write "<b>" & i & "</b>"
			Else
				Response.Write "<b>" & i & "</b> | "
			End If
		Else
		' ถ้าไม่ได้แสดงอยู่ที่หน้าปัจจุบันให้ใส่ Hyperlink
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