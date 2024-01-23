VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "MDIForm1"
   ClientHeight    =   8415
   ClientLeft      =   120
   ClientTop       =   765
   ClientWidth     =   14460
   LinkTopic       =   "MDIForm1"
   Picture         =   "MDIForm1.frx":0000
   WindowState     =   2  'Maximized
   Begin VB.Menu restaurant 
      Caption         =   "Restaurant Management"
      Begin VB.Menu addRes 
         Caption         =   "Add New Restaurant"
      End
      Begin VB.Menu showRes 
         Caption         =   "List Restaurant"
      End
   End
   Begin VB.Menu userManagement 
      Caption         =   "User Management"
      Begin VB.Menu addUser 
         Caption         =   "Add New User"
      End
      Begin VB.Menu showUser 
         Caption         =   "List User"
      End
      Begin VB.Menu banUser 
         Caption         =   "Block User"
      End
      Begin VB.Menu removeUser 
         Caption         =   "Delete User"
      End
   End
   Begin VB.Menu deliveryManagement 
      Caption         =   "Delivery Management"
      Begin VB.Menu addAgent 
         Caption         =   "Add New Delivery Agent"
      End
      Begin VB.Menu showAgent 
         Caption         =   "List Delivery Agent"
      End
      Begin VB.Menu banAgent 
         Caption         =   "Block Agent"
      End
   End
   Begin VB.Menu orderManagement 
      Caption         =   "Order Management"
      Begin VB.Menu pendingOrder 
         Caption         =   "Pending Order"
      End
      Begin VB.Menu acceptedOrder 
         Caption         =   "Accepted Order"
      End
      Begin VB.Menu rejectedOrder 
         Caption         =   "Rejected Order"
      End
      Begin VB.Menu deliveredOrder 
         Caption         =   "Delivered Order"
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
