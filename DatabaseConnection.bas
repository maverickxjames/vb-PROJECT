Attribute VB_Name = "DatabaseConnection"
Option Explicit
    Public conn As ADODB.Connection
    Public rs As ADODB.Recordset

    Public Sub ConnectDB()
        Set conn = New ADODB.Connection
        conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\jkson.MAVERICKXJAMES\Desktop\vb-PROJECT\tastify.mdb;"
        conn.Open
    End Sub
    Public Sub DisconnectDB()
        If Not conn Is Nothing Then
            conn.Close
            Set conn = Nothing
        End If
    End Sub


