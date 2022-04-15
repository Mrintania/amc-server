Imports System.Data
Imports System.Data.SqlClient
Public Class connDB
    Private Getprovider As String = "Data Source=WIN2\SQLEXPRESS;Initial Catalog=DataNew;Integrated Security=True"
    Property Provider()
        Get
            Return Getprovider
        End Get
        Set(ByVal value)
            Getprovider = value
        End Set
    End Property
End Class
