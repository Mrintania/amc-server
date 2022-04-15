Imports System.Data
Imports System.Data.SqlClient
Public Class Form1
    Dim conn As New SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim inFind As Boolean = False
    Dim strconn As String = "Data Source=WIN-2SJUG1PUJBT\SQLEXPRESS;Initial Catalog=DataNew;Integrated Security=True"
    Dim labelname As String = Trim("กรรมการ(บ่งการ)")

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Call StartDB()
        'Call FormatDataGridView()
    End Sub
    Private Sub StartDB()
        'Dim strConn As String
        'strConn = "Data Source=WIN-LGPGM70POPB\SQLEXPRESS;Initial Catalog=DataNew;Integrated Security=True"
        With conn
            If .State = ConnectionState.Open Then .Close()
            .ConnectionString = strConn
            .Open()
            MessageBox.Show("CONNECT OK")

        End With
    End Sub
    Private Sub cmdControl_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdControl.Click
        Timer1.Enabled = Not Timer1.Enabled
        If Timer1.Enabled = True Then
            cmdControl.Text = "Pause.."
        Else
            cmdControl.Text = "Resume.."
            lblAJAX0.Text = "Paused.."
        End If
    End Sub

    Private Sub cmdControl0_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdControl0.Click
        cmdControl.Text = "Start.."
        lblAJAX0.Text = "Stoped.."
        Timer1.Enabled = False

    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick

        Dim strDate As String = Now.ToString("M/d/" & Now.Year.ToString & " H:mm:ss")

        lblAJAX.Text = strDate
        lblAJAX0.Text = Convert.ToString(DateTime.Now.Second)

        Call Load_DataGridView1(strDate)
        Call update(strDate)

        'Call sendnews(Convert.ToString(DateTime.Now.Hour & ":" & DateTime.Now.Minute))

        'Call delete(Convert.ToString(DateTime.Now.Hour & ":" & DateTime.Now.Minute))
    End Sub

    Public Function Load_DataGridView1(ByVal X As String) As String
        If inFind = True Then
            ds.Tables("DataNews").Clear()
        End If

        Dim Sqltemp As String
        Sqltemp = "Select * From DataNews Where (From2 Like '%" & labelname & "%') AND (Status = 0) ORDER BY Id DESC "
        'Sqltemp = "Select * From DataNewsPre Order by Id ;"
        Dim da As New SqlDataAdapter(Sqltemp, conn)
        da.Fill(ds, "DataNews")
        Dim dvm As New DataViewManager()

        dvm.DataSet = ds

        Dim dvs As DataViewSetting
        dvs = dvm.DataViewSettings("DataNews")
        dvs.Sort = ("Id")

        With DataGridView1
            inFind = True
            .DataSource = dvm
            .DataMember = "DataNews"
        End With

        With DataGridView1
            If .RowCount > 0 Then

                .Columns(0).Visible = True '"Id"
                .Columns(1).Visible = False '"Express1"
                .Columns(2).Visible = False '"Express2"
                .Columns(3).Visible = False  '"Datetime"
                .Columns(4).Visible = False '"Typenews"
                .Columns(5).Visible = True '"From1"
                .Columns(6).Visible = True '"Add1"
                .Columns(7).Visible = True '"Tomake"
                .Columns(8).Visible = True '"Took"
                .Columns(9).Visible = True '"Story"
                .Columns(10).Visible = False '"Sendman"
                .Columns(11).Visible = False '"Sendstation"
                .Columns(12).Visible = False '"Sendtel"
                .Columns(13).Visible = False '"Sendboss"
                .Columns(14).Visible = False '"Datenow"
                .Columns(15).Visible = False '"Filename"
                .Columns(16).Visible = False '"Filesize"
                .Columns(17).Visible = False '"code1"
                .Columns(18).Visible = False '"Head1"
                .Columns(19).Visible = False '"SBSend"
                .Columns(20).Visible = False '"SBReceive"
                .Columns(21).Visible = False '"Status"
                .Columns(22).Visible = True '"TimeAutoSend"
                .Columns(23).Visible = True '"From2"

                '.Columns(23).HeaderText = "ยิง ป.ค." '"PKPP"
                .Columns(9).Width = 250
                .Columns(22).Width = 120
                '.Columns(3).Width = 100
                '.Columns(4).Width = 150
                '.Columns(6).Width = 150
                '.Columns(10).Width = 60

            End If
        End With

    End Function
    Public Function sendnews(ByVal X As String) As String

        'Dim strconn As String = "Data Source=WIN2\SQLEXPRESS;Initial Catalog=DataNew;Integrated Security=True"
        Dim strsql As String = "Select * From DataNewsPre Where (From2 Like '%" & labelname & "%') AND (TimeAutoSend Like '%" & X & "%')"
        Dim myconn As New SqlConnection(strconn)
        Dim mydata As New SqlDataAdapter(strsql, myconn)
        Dim ds As New DataSet()
        mydata.Fill(ds, "DataNewsPre")



        If ds.Tables("DataNewsPre").Rows.Count <> 0 Then

            Dim d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19 As String
            d1 = ds.Tables("DataNewsPre").Rows(0).Item("Express1")
            d2 = ds.Tables("DataNewsPre").Rows(0).Item("Express2")
            d3 = ds.Tables("DataNewsPre").Rows(0).Item("Datetime")
            d4 = ds.Tables("DataNewsPre").Rows(0).Item("Typenews")
            d5 = ds.Tables("DataNewsPre").Rows(0).Item("From1")
            d6 = ds.Tables("DataNewsPre").Rows(0).Item("Add1")
            d7 = ds.Tables("DataNewsPre").Rows(0).Item("Tomake")
            d8 = ds.Tables("DataNewsPre").Rows(0).Item("Took")
            d9 = ds.Tables("DataNewsPre").Rows(0).Item("Story")
            d10 = ds.Tables("DataNewsPre").Rows(0).Item("Sendman")
            d11 = ds.Tables("DataNewsPre").Rows(0).Item("Sendstation")
            d12 = ds.Tables("DataNewsPre").Rows(0).Item("Sendtel")
            d13 = ds.Tables("DataNewsPre").Rows(0).Item("Sendboss")
            d14 = ds.Tables("DataNewsPre").Rows(0).Item("Filename")
            d15 = ds.Tables("DataNewsPre").Rows(0).Item("Filesize")
            d16 = ds.Tables("DataNewsPre").Rows(0).Item("code1")
            d17 = ds.Tables("DataNewsPre").Rows(0).Item("TimeAutoSend")
            d18 = ds.Tables("DataNewsPre").Rows(0).Item("From2")
            d19 = ds.Tables("DataNewsPre").Rows(0).Item("IdDataNewsPre")

            'Dim strconn2 As String = "Data Source=WIN2\SQLEXPRESS;Initial Catalog=DataNew;Integrated Security=True"
            Dim strsql2 As String

            strsql2 = "INSERT INTO DataNews "
            strsql2 = strsql2 & " (  Express1 , Express2  , Datetime ,Typenews , From1  , Add1 ,  Tomake , Took ,  Story ,  Sendman ,  Sendstation , Sendtel , Sendboss , Filename , Filesize ,  code1, TimeAutoSend , From2  )"
            strsql2 = strsql2 & " VALUES "
            strsql2 = strsql2 & " ('" & d1 & "','"
            strsql2 = strsql2 & d2 & "','"
            strsql2 = strsql2 & d3 & "','"
            strsql2 = strsql2 & d4 & "','"
            strsql2 = strsql2 & d5 & "','"
            strsql2 = strsql2 & d6 & "','"
            strsql2 = strsql2 & d7 & "','"
            strsql2 = strsql2 & d8 & "','"
            strsql2 = strsql2 & d9 & "','"
            strsql2 = strsql2 & d10 & "','"
            strsql2 = strsql2 & d11 & "','"
            strsql2 = strsql2 & d12 & "','"
            strsql2 = strsql2 & d13 & "','"
            strsql2 = strsql2 & d14 & "','"
            strsql2 = strsql2 & d15 & "','"
            strsql2 = strsql2 & d16 & "','"
            strsql2 = strsql2 & d17 & "','"
            strsql2 = strsql2 & d18 & "')"


            Dim myconn2 As New SqlConnection(strconn)
            myconn2.Open()
            Dim mycommand As New SqlCommand(strsql2, myconn2)
            mycommand.ExecuteScalar()
            myconn2.Close()


            'Dim strconn3 As String = "Data Source=WIN2\SQLEXPRESS;Initial Catalog=DataNew;Integrated Security=True"
            Dim strsql3 As String

            strsql3 = "INSERT INTO DataNewsSended "
            strsql3 = strsql3 & " (  Express1 , Express2  , Datetime ,Typenews , From1  , Add1 ,  Tomake , Took ,  Story ,  Sendman ,  Sendstation , Sendtel , Sendboss , Filename , Filesize ,  code1 , TimeAutoSend , From2  )"
            strsql3 = strsql3 & " VALUES "
            strsql3 = strsql3 & " ('" & d1 & "','"
            strsql3 = strsql3 & d2 & "','"
            strsql3 = strsql3 & d3 & "','"
            strsql3 = strsql3 & d4 & "','"
            strsql3 = strsql3 & d5 & "','"
            strsql3 = strsql3 & d6 & "','"
            strsql3 = strsql3 & d7 & "','"
            strsql3 = strsql3 & d8 & "','"
            strsql3 = strsql3 & d9 & "','"
            strsql3 = strsql3 & d10 & "','"
            strsql3 = strsql3 & d11 & "','"
            strsql3 = strsql3 & d12 & "','"
            strsql3 = strsql3 & d13 & "','"
            strsql3 = strsql3 & d14 & "','"
            strsql3 = strsql3 & d15 & "','"
            strsql3 = strsql3 & d16 & "','"
            strsql3 = strsql3 & d17 & "','"
            strsql3 = strsql3 & d18 & "')"


            Dim myconn3 As New SqlConnection(strconn)
            myconn3.Open()
            Dim mycommand3 As New SqlCommand(strsql3, myconn3)
            mycommand3.ExecuteScalar()
            myconn3.Close()


        End If

    End Function
    Public Function delete(ByVal X As String) As String

        'Dim strconn As String = "Data Source=WIN2\SQLEXPRESS;Initial Catalog=DataNew;Integrated Security=True"
        Dim strsql As String

        strsql = "DELETE FROM DataNewsPre WHERE (From2 Like '%" & labelname & "%') AND (TimeAutoSend Like '%" & X & "%') "

        Dim myconn As New SqlConnection(strconn)
        myconn.Open()
        Dim mycommand4 As New SqlCommand(strsql, myconn)
        mycommand4.ExecuteScalar()
        myconn.Close()

    End Function
    Public Function update(ByVal X As String) As String

        Dim strsql As String

        strsql = "UPDATE DataNews SET "
        strsql = strsql & " Status = " & 1 & ","
        strsql = strsql & " Datenow = CONVERT (DATETIME, '" & X & "', 102)"
        strsql = strsql & " WHERE (From2 LIKE '%" & labelname & "%') AND (TimeAutoSend = '" & X & "') "

        Dim myconn As New SqlConnection(strconn)
        myconn.Open()
        Dim mycommand As New SqlCommand(strsql, myconn)
        mycommand.ExecuteScalar()
        myconn.Close()

    End Function

    Private Sub frmmain_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        If MsgBox("คุณต้องการออกจากโปรแกรมหรือไม่ ?", MsgBoxStyle.Question + MsgBoxStyle.YesNo, "ยืนยันการออกจากโปรแกรม") = MsgBoxResult.No Then
            e.Cancel = True
        End If
    End Sub
End Class
