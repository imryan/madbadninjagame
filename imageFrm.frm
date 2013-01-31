VERSION 5.00
Begin VB.Form imageFrm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Images"
   ClientHeight    =   3870
   ClientLeft      =   4845
   ClientTop       =   3600
   ClientWidth     =   8970
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3870
   ScaleWidth      =   8970
   Begin VB.Image blueGuy 
      Height          =   1620
      Left            =   5520
      Picture         =   "imageFrm.frx":0000
      Top             =   120
      Width           =   1440
   End
   Begin VB.Image blueGuyLeft 
      Height          =   1620
      Left            =   7200
      Picture         =   "imageFrm.frx":02E4
      Top             =   120
      Width           =   1440
   End
   Begin VB.Image blueGuyLeftPunch 
      Height          =   1635
      Left            =   5280
      Picture         =   "imageFrm.frx":05C4
      Top             =   1920
      Width           =   1710
   End
   Begin VB.Image blueGuyPunchRight 
      Height          =   1635
      Left            =   7080
      Picture         =   "imageFrm.frx":08C2
      Top             =   1920
      Width           =   1710
   End
   Begin VB.Image greenGuyRightPunch 
      Height          =   1620
      Left            =   1920
      Picture         =   "imageFrm.frx":0BBF
      Top             =   1920
      Width           =   1905
   End
   Begin VB.Image greenGuyLeftPunch 
      Height          =   1620
      Left            =   120
      Picture         =   "imageFrm.frx":0ED7
      Top             =   1920
      Width           =   1905
   End
   Begin VB.Image greenGuyLeft 
      Height          =   1635
      Left            =   2160
      Picture         =   "imageFrm.frx":11EF
      Top             =   120
      Width           =   1500
   End
   Begin VB.Image greenGuy 
      Height          =   1635
      Left            =   480
      Picture         =   "imageFrm.frx":14EC
      Top             =   120
      Width           =   1500
   End
End
Attribute VB_Name = "imageFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    
    imageFrm.Visible = False

End Sub
