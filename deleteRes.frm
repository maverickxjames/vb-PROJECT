VERSION 5.00
Begin VB.Form deleteRess 
   Caption         =   "Form1"
   ClientHeight    =   8370
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14445
   LinkTopic       =   "Form1"
   ScaleHeight     =   10935
   ScaleWidth      =   20250
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtName 
      Height          =   495
      Left            =   9240
      TabIndex        =   11
      Top             =   3600
      Width           =   4575
   End
   Begin VB.TextBox txtPhone 
      Height          =   495
      Left            =   9240
      TabIndex        =   10
      Top             =   4320
      Width           =   4575
   End
   Begin VB.TextBox txtLocation 
      Height          =   495
      Left            =   9240
      TabIndex        =   9
      Top             =   5160
      Width           =   4575
   End
   Begin VB.TextBox txtRating 
      Height          =   495
      Left            =   9240
      TabIndex        =   8
      Top             =   6120
      Width           =   4575
   End
   Begin VB.TextBox txtOpeningHour 
      Height          =   495
      Left            =   9240
      TabIndex        =   7
      Top             =   7080
      Width           =   4575
   End
   Begin VB.TextBox txtClosingHour 
      Height          =   495
      Left            =   9240
      TabIndex        =   6
      Top             =   8040
      Width           =   4575
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
      Left            =   5280
      TabIndex        =   5
      Top             =   3600
      Width           =   2715
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
      Left            =   5160
      TabIndex        =   4
      Top             =   4335
      Width           =   2850
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
      Left            =   5160
      TabIndex        =   3
      Top             =   5175
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
      Left            =   5160
      TabIndex        =   2
      Top             =   6135
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
      Left            =   5160
      TabIndex        =   1
      Top             =   7095
      Width           =   2895
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
      Left            =   5160
      TabIndex        =   0
      Top             =   8055
      Width           =   2895
   End
   Begin VB.Image Image1 
      Height          =   10935
      Left            =   0
      Picture         =   "deleteRes.frx":0000
      Stretch         =   -1  'True
      Top             =   0
      Width           =   20280
   End
End
Attribute VB_Name = "deleteRess"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
