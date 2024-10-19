VERSION 5.00
Begin VB.Form Login 
   Caption         =   "Login Form"
   ClientHeight    =   8625
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12285
   LinkTopic       =   "Form2"
   Picture         =   "Form2.frx":0000
   ScaleHeight     =   8625
   ScaleWidth      =   12285
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   4800
      TabIndex        =   1
      Top             =   5400
      Width           =   2895
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   4800
      TabIndex        =   0
      Top             =   4560
      Width           =   2895
   End
   Begin VB.Image Image1 
      Height          =   435
      Left            =   5520
      MousePointer    =   12  'No Drop
      Picture         =   "Form2.frx":16D21
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   1305
   End
End
Attribute VB_Name = "Login"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public loggedInUsername As String

Private Sub Image1_Click()
Dim username As String
    Dim password As String

    username = Text1.Text
    password = Text2.Text

    If username = "" Or password = "" Then
        MsgBox "Please enter username and password.", vbExclamation
        Exit Sub
    End If

    Call ConnectDB
    Set rs = conn.Execute("SELECT * FROM users WHERE uname='" & username & "' AND password='" & password & "'")
    
    If Not rs.EOF Then
    loggedInUsername = username
        MsgBox "Login Successful!", vbInformation
        MDIForm1.Show
        MDIForm1.loggedInUser.Caption = "Welcome, " & loggedInUsername
        Me.Hide
    Else
        MsgBox "Invalid Credentials!", vbExclamation
    End If
    
    
    
    
    Call DisconnectDB

End Sub
