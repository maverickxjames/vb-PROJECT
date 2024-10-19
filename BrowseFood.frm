VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form BrowseFood 
   Caption         =   "Form1"
   ClientHeight    =   8430
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14325
   LinkTopic       =   "Form1"
   ScaleHeight     =   8430
   ScaleWidth      =   14325
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin MSComctlLib.ListView ListView1 
      Height          =   4935
      Left            =   5040
      TabIndex        =   1
      Top             =   2280
      Width           =   7095
      _ExtentX        =   12515
      _ExtentY        =   8705
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      Height          =   2310
      Left            =   1080
      Picture         =   "BrowseFood.frx":0000
      ScaleHeight     =   2250
      ScaleWidth      =   2250
      TabIndex        =   0
      Top             =   1080
      Width           =   2310
   End
   Begin VB.Image Image1 
      Height          =   10935
      Left            =   0
      Picture         =   "BrowseFood.frx":2E14
      Stretch         =   -1  'True
      Top             =   0
      Width           =   20175
   End
End
Attribute VB_Name = "BrowseFood"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    ' Connect to the database
    Dim conn As New ADODB.Connection
    conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\tastify.mdb;"
    conn.Open

    ' Execute SQL query to retrieve data
    Dim rs As New ADODB.Recordset
    rs.Open "SELECT item_name, price, restaurant, item_image FROM items", conn, adOpenStatic, adLockReadOnly

    ' Populate ListView with data
    Do Until rs.EOF
        Dim listItem As listItem
        Set listItem = ListView1.ListItems.Add(, , rs("item_name").Value) ' item_name column
        listItem.SubItems(1) = rs("price").Value ' price column
        listItem.SubItems(2) = rs("restaurant").Value ' restaurant column

        ' Load the image from file or database blob (replace FilePath with the actual path)
        Dim imgPath As String
        imgPath = App.Path & "\assets\" & rs("item_image").Value ' Assuming item_image is the image filename or path
        If Dir(imgPath) <> "" Then
            Set listItem.SmallIcon = LoadPicture(imgPath)
        Else
            ' If image path is not found, you can display a default image or leave it blank
            ' listItem.SmallIcon = LoadResPicture(YourDefaultImageResourceID)
        End If

        ' Continue adding subitems for each column you have
        rs.MoveNext
    Loop

    ' Close the recordset and connection
    rs.Close
    conn.Close
End Sub

