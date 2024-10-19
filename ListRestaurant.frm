VERSION 5.00
Begin VB.Form ListRestaurant 
   Caption         =   "Form1"
   ClientHeight    =   8505
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14970
   LinkTopic       =   "Form1"
   ScaleHeight     =   8505
   ScaleWidth      =   14970
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtSearch 
      Height          =   855
      Left            =   5040
      TabIndex        =   1
      Top             =   2040
      Width           =   9255
   End
   Begin VB.ListBox lstItems 
      Height          =   4740
      Left            =   5040
      TabIndex        =   0
      Top             =   3120
      Width           =   9015
   End
   Begin VB.Image Image1 
      Height          =   10935
      Left            =   0
      Picture         =   "ListRestaurant.frx":0000
      Stretch         =   -1  'True
      Top             =   0
      Width           =   20280
   End
End
Attribute VB_Name = "ListRestaurant"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private conn As ADODB.Connection
Private rs As ADODB.Recordset


Private Sub Form_Load()
    ' Initialize and open the database connection
    Set conn = New ADODB.Connection
    conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\tastify.mdb"
    conn.Open
    
    ' Fetch and display all items initially
    FetchAndDisplayItems ""
End Sub


Private Sub FetchAndDisplayItems(searchQuery As String)
    Dim sql As String
    
    ' Construct the SQL SELECT statement
    If searchQuery = "" Then
        sql = "SELECT item_name, price, restaurant FROM items"
    Else
        sql = "SELECT item_name, price, restaurant FROM items WHERE item_name LIKE '%" & searchQuery & "%'"
    End If
    
    ' Execute the SQL statement
    Set rs = conn.Execute(sql)
    
    ' Clear the list box
    lstItems.Clear
    
    ' Populate the list box with the results
    Do While Not rs.EOF
        lstItems.AddItem "Item: " & rs!item_name & " | Price: " & rs!Price & " | Restaurant ID: " & rs!restaurant
        rs.MoveNext
    Loop
    
    ' Close the recordset
    rs.Close
End Sub

Private Sub txtSearch_Change()
    ' Fetch and display items based on the search query as the user types
    FetchAndDisplayItems txtSearch.Text
End Sub



