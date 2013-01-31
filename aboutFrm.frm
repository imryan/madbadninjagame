VERSION 5.00
Begin VB.Form aboutFrm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "About Mad Bad Ninja Game"
   ClientHeight    =   2430
   ClientLeft      =   6990
   ClientTop       =   3435
   ClientWidth     =   4695
   BeginProperty Font 
      Name            =   "Fixedsys"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2430
   ScaleWidth      =   4695
   Begin VB.Frame aboutFrame 
      Caption         =   "About MBNG"
      Height          =   2175
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4455
      Begin VB.CommandButton hideBtn 
         Caption         =   "Close"
         Height          =   615
         Left            =   120
         TabIndex        =   2
         Top             =   1440
         Width           =   4215
      End
      Begin VB.PictureBox aboutBox 
         Height          =   1095
         Left            =   120
         ScaleHeight     =   1035
         ScaleWidth      =   4155
         TabIndex        =   1
         Top             =   240
         Width           =   4215
      End
   End
   Begin VB.Image backImg 
      Height          =   6975
      Left            =   0
      Picture         =   "aboutFrm.frx":0000
      Top             =   0
      Width           =   9870
   End
End
Attribute VB_Name = "aboutFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Activate()

    aboutBox.Print "Liam Carney - Project Manager"
    aboutBox.Print "Ryan Cohen  - Head Programmer"
    aboutBox.Print "Joey Vill   - Designer"
    aboutBox.Print "(c) Mad Bad Ninja Game 2013"


End Sub

Private Sub hideBtn_Click()

    aboutFrm.Visible = False

End Sub
