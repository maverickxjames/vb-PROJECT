VERSION 5.00
Begin VB.Form Form2 
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
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Image1_Click()
MDIForm1.Show
End Sub
