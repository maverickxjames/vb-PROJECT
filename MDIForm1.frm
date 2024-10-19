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
      Begin VB.Menu deleteRes 
         Caption         =   "Delete Restaurant"
      End
      Begin VB.Menu showRes 
         Caption         =   "List Restaurant"
         Enabled         =   0   'False
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
   Begin VB.Menu orderFood 
      Caption         =   "Order Food"
      Begin VB.Menu breakFast 
         Caption         =   "Breakfast"
      End
      Begin VB.Menu lunch 
         Caption         =   "Lunch"
      End
      Begin VB.Menu dinner 
         Caption         =   "Dinner"
      End
      Begin VB.Menu allMenu 
         Caption         =   "All Menu"
      End
   End
   Begin VB.Menu loggedInUser 
      Caption         =   "Welcome, "
      Begin VB.Menu logout 
         Caption         =   "Logout"
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub addRes_Click()
Unload Me
AddRestaurant.Show

End Sub

Private Sub allMenu_Click()
Unload Me
BrowseFood.Show
End Sub

Private Sub deleteRes_Click()
Unload Me
deleteRess.Show
End Sub

Private Sub logout_Click()
    Login.Show
    Me.Hide
End Sub

Private Sub showRes_Click()
Unload Me
ListRestaurant.Show

End Sub
