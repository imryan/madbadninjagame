VERSION 5.00
Begin VB.Form endGameFrm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Round Over"
   ClientHeight    =   4215
   ClientLeft      =   6990
   ClientTop       =   5400
   ClientWidth     =   4725
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4215
   ScaleWidth      =   4725
   Begin VB.CommandButton aboutBtn 
      Caption         =   "About Game"
      Height          =   735
      Left            =   240
      TabIndex        =   4
      Top             =   3120
      Width           =   4215
   End
   Begin VB.CommandButton quitBtn 
      Caption         =   "Quit Game"
      Height          =   735
      Left            =   240
      TabIndex        =   3
      Top             =   2280
      Width           =   4215
   End
   Begin VB.Frame Frame1 
      Caption         =   "Reports"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3975
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4455
      Begin VB.CommandButton replayBtn 
         Caption         =   "Play Again?"
         Height          =   735
         Left            =   120
         TabIndex        =   2
         Top             =   1320
         Width           =   4215
      End
      Begin VB.Label gameDetailLbl 
         Alignment       =   2  'Center
         Caption         =   "<p1> has been killed by <p2>!"
         BeginProperty Font 
            Name            =   "Fixedsys"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   600
         Width           =   3855
      End
      Begin VB.Shape Shape1 
         Height          =   975
         Left            =   120
         Shape           =   4  'Rounded Rectangle
         Top             =   240
         Width           =   4215
      End
   End
   Begin VB.Image Image1 
      Height          =   6975
      Left            =   0
      Picture         =   "endGameFrm.frx":0000
      Top             =   0
      Width           =   9870
   End
End
Attribute VB_Name = "endGameFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'############################'
' Mad Bad Ninja Game         '
' Game Code                  '
' January 21, 2013           '
'############################'

Private Sub aboutBtn_Click()

    aboutFrm.Visible = True

End Sub

Private Sub quitBtn_Click()

    End

End Sub

Private Sub replayBtn_Click()

    newGameFrm.Visible = True
    
    newGameFrm.name1Txt.Enabled = True
    newGameFrm.name2Txt.Enabled = True
    
    newGameFrm.name1Txt.Text = ""
    newGameFrm.name2Txt.Text = ""
    
    newGameFrm.p1ReadyBtn.Enabled = True
    newGameFrm.p2ReadyBtn.Enabled = True
    
    gameFrm.p2HpLbl.Caption = 100
    gameFrm.p1HpLbl.Caption = 100
    
    gameFrm.p1ScoreLbl.Caption = 0
    gameFrm.p2ScoreLbl.Caption = 0
    
    endGameFrm.Visible = False
    
    gameFrm.player1Img.Left = 240
    gameFrm.player2Img.Left = 7440
    
End Sub
