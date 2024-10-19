VERSION 5.00
Begin VB.UserControl ucFoodItem 
   ClientHeight    =   7875
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   13140
   ScaleHeight     =   7875
   ScaleWidth      =   13140
   Begin VB.PictureBox picItemImage 
      Height          =   4095
      Left            =   1440
      Picture         =   "ucFoodItem.ctx":0000
      ScaleHeight     =   4035
      ScaleWidth      =   6675
      TabIndex        =   0
      Top             =   240
      Width           =   6735
   End
   Begin VB.Label lblRestaurant 
      Caption         =   "Label1"
      Height          =   1815
      Left            =   9120
      TabIndex        =   3
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label lblPrice 
      Caption         =   "Label1"
      Height          =   1215
      Left            =   6360
      TabIndex        =   2
      Top             =   5400
      Width           =   1575
   End
   Begin VB.Label lblItemName 
      Caption         =   "Label1"
      Height          =   1335
      Left            =   2400
      TabIndex        =   1
      Top             =   5400
      Width           =   2895
   End
End
Attribute VB_Name = "ucFoodItem"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
' UserControl: ucFoodItem
Option Explicit

' Add properties for the food item details
Private sItemName As String
Private sPrice As String
Private sRestaurant As String

Public Property Let ItemName(ByVal sName As String)
    sItemName = sName
    lblItemName.Caption = sName
End Property

Public Property Get ItemName() As String
    ItemName = sItemName
End Property

Public Property Let Price(ByVal sPriceVal As String)
    sPrice = sPriceVal
    lblPrice.Caption = sPriceVal
End Property

Public Property Get Price() As String
    Price = sPrice
End Property

Public Property Let restaurant(ByVal sRestaurantVal As String)
    sRestaurant = sRestaurantVal
    lblRestaurant.Caption = sRestaurantVal
End Property

Public Property Get restaurant() As String
    restaurant = sRestaurant
End Property

' Add a method to set the image
Public Sub SetImage(ByVal sImagePath As String)
    On Error GoTo ErrorHandler
    picItemImage.Picture = LoadPicture(sImagePath)
    ' Optionally, resize image to fit PictureBox
    FitImageToPictureBox picItemImage
    Exit Sub
    
ErrorHandler:
    MsgBox "Error loading image: " & Err.Description, vbExclamation
End Sub

' Fit image in PictureBox while maintaining aspect ratio
Private Sub FitImageToPictureBox(pbx As PictureBox)
    Dim imgWidth As Single
    Dim imgHeight As Single
    Dim pbxWidth As Single
    Dim pbxHeight As Single
    Dim imgAspect As Single
    Dim pbxAspect As Single
    Dim newWidth As Single
    Dim newHeight As Single

    ' Get the original image dimensions
    imgWidth = pbx.Picture.Width / Screen.TwipsPerPixelX
    imgHeight = pbx.Picture.Height / Screen.TwipsPerPixelY
    imgAspect = imgWidth / imgHeight

    ' Get the PictureBox dimensions
    pbxWidth = pbx.ScaleWidth
    pbxHeight = pbx.ScaleHeight
    pbxAspect = pbxWidth / pbxHeight

    ' Calculate new dimensions to fit the PictureBox while maintaining aspect ratio
    If imgAspect > pbxAspect Then
        newWidth = pbxWidth
        newHeight = pbxWidth / imgAspect
    Else
        newHeight = pbxHeight
        newWidth = pbxHeight * imgAspect
    End If

    ' Clear the PictureBox
    pbx.Cls
    
    ' Draw the resized image
    pbx.PaintPicture pbx.Picture, _
                     (pbxWidth - newWidth) / 2, _
                     (pbxHeight - newHeight) / 2, _
                     newWidth, _
                     newHeight, _
                     0, _
                     0, _
                     pbx.Picture.Width, _
                     pbx.Picture.Height
End Sub


