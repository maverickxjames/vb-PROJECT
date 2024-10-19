VERSION 5.00
Begin VB.Form AddRestaurant 
   Caption         =   "Form1"
   ClientHeight    =   8415
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14745
   LinkTopic       =   "Form1"
   ScaleHeight     =   8415
   ScaleWidth      =   14745
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtClosingHour 
      Height          =   495
      Left            =   8880
      TabIndex        =   12
      Top             =   7440
      Width           =   4575
   End
   Begin VB.TextBox txtOpeningHour 
      Height          =   495
      Left            =   8880
      TabIndex        =   11
      Top             =   6480
      Width           =   4575
   End
   Begin VB.TextBox txtRating 
      Height          =   495
      Left            =   8880
      TabIndex        =   10
      Top             =   5520
      Width           =   4575
   End
   Begin VB.TextBox txtLocation 
      Height          =   495
      Left            =   8880
      TabIndex        =   9
      Top             =   4560
      Width           =   4575
   End
   Begin VB.TextBox txtPhone 
      Height          =   495
      Left            =   8880
      TabIndex        =   8
      Top             =   3720
      Width           =   4575
   End
   Begin VB.TextBox txtName 
      Height          =   495
      Left            =   8880
      TabIndex        =   7
      Top             =   3000
      Width           =   4575
   End
   Begin VB.Image Image2 
      Height          =   975
      Left            =   6840
      Picture         =   "AddRestaurant.frx":0000
      Stretch         =   -1  'True
      Top             =   8760
      Width           =   3135
   End
   Begin VB.Image Image1 
      Height          =   960
      Left            =   10800
      Picture         =   "AddRestaurant.frx":693F
      Stretch         =   -1  'True
      Top             =   8760
      Width           =   3120
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Caption         =   "Closing Hour"
      BeginProperty Font 
         Name            =   "Rockwell"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4680
      TabIndex        =   6
      Top             =   7440
      Width           =   2895
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "Opening Hour"
      BeginProperty Font 
         Name            =   "Rockwell"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4680
      TabIndex        =   5
      Top             =   6480
      Width           =   2895
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Rating"
      BeginProperty Font 
         Name            =   "Rockwell"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4680
      TabIndex        =   4
      Top             =   5520
      Width           =   2895
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "Location"
      BeginProperty Font 
         Name            =   "Rockwell"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4680
      TabIndex        =   3
      Top             =   4560
      Width           =   2895
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Mobile"
      BeginProperty Font 
         Name            =   "Rockwell"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   4680
      TabIndex        =   2
      Top             =   3720
      Width           =   2850
   End
   Begin VB.Label r_name 
      Alignment       =   2  'Center
      Caption         =   "Restaurant Name"
      BeginProperty Font 
         Name            =   "Rockwell"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4800
      TabIndex        =   1
      Top             =   2985
      Width           =   2715
   End
   Begin VB.Image imgBackground 
      Height          =   10935
      Left            =   0
      Picture         =   "AddRestaurant.frx":F33D
      Stretch         =   -1  'True
      Top             =   0
      Width           =   20295
   End
   Begin VB.Label Label1 
      Caption         =   "Name"
      Height          =   615
      Left            =   3000
      TabIndex        =   0
      Top             =   1920
      Width           =   1575
   End
End
Attribute VB_Name = "AddRestaurant"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    ' Load the image initially
    imgBackground.Picture = LoadPicture(App.Path & "\assets\restaurant1.jpg")
    ' Ensure the image control covers the entire form
    imgBackground.Move 0, 0, Me.ScaleWidth, Me.ScaleHeight
    Set conn = New ADODB.Connection
    conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\tastify.mdb"
    conn.Open
End Sub

Private Sub Form_Resize()
 imgBackground.Move 0, 0, Me.ScaleWidth, Me.ScaleHeight
End Sub

Private Sub Image1_Click()
    Dim sql As String
    
    ' Construct the SQL INSERT statement
    sql = "INSERT INTO restaurant (r_name, phone, location, rating, opening_hour, closing_hour) " & _
          "VALUES ('" & txtName.Text & "', '" & txtPhone.Text & "', '" & txtLocation.Text & "', '" & _
          txtRating.Text & "', '" & txtOpeningHour.Text & "', '" & txtClosingHour.Text & "')"
    
    ' Execute the SQL statement
    conn.Execute sql
    
    ' Optional: Display a message or clear the text boxes
    MsgBox "Restaurant Added successfully!", vbInformation
    ClearFields
End Sub
Private Sub ClearFields()
    txtName.Text = ""
    txtPhone.Text = ""
    txtLocation.Text = ""
    txtRating.Text = ""
    txtOpeningHour.Text = ""
    txtClosingHour.Text = ""
End Sub

Private Sub Image2_Click()
Unload Me
MDIForm1.Show
End Sub
