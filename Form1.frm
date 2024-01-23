VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form Form1 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "Form1"
   ClientHeight    =   6870
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13830
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   458
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   922
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin ComctlLib.ProgressBar ProgressBar1 
      Height          =   615
      Left            =   5520
      TabIndex        =   0
      Top             =   9480
      Width           =   10215
      _ExtentX        =   18018
      _ExtentY        =   1085
      _Version        =   327682
      Appearance      =   1
      MousePointer    =   11
   End
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   18120
      Top             =   9360
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "%"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   16920
      TabIndex        =   2
      Top             =   9480
      Width           =   735
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000000&
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000001&
      Height          =   615
      Left            =   15960
      TabIndex        =   1
      Top             =   9480
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
ProgressBar1.Value = Val(Label1) + 1
Label1.Caption = ProgressBar1

If Label1.Caption = "100" Then
    Timer1.Enabled = False
    Form2.Show
End If

End Sub
