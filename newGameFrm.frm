VERSION 5.00
Begin VB.Form newGameFrm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "New Game"
   ClientHeight    =   3825
   ClientLeft      =   4350
   ClientTop       =   3675
   ClientWidth     =   9900
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3825
   ScaleWidth      =   9900
   Begin VB.TextBox name2Txt 
      Height          =   375
      Left            =   5400
      TabIndex        =   4
      Top             =   2160
      Width           =   3975
   End
   Begin VB.CommandButton p2ReadyBtn 
      Caption         =   "Ready Up"
      Height          =   615
      Left            =   5400
      TabIndex        =   3
      Top             =   2760
      Width           =   3975
   End
   Begin VB.CommandButton p1ReadyBtn 
      Caption         =   "Ready Up"
      Height          =   615
      Left            =   360
      TabIndex        =   1
      Top             =   2760
      Width           =   4095
   End
   Begin VB.TextBox name1Txt 
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   2160
      Width           =   4095
   End
   Begin VB.Image p2BlueGuy 
      Height          =   1620
      Left            =   6840
      Picture         =   "newGameFrm.frx":0000
      Top             =   120
      Width           =   1440
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Player 2 Name"
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
      Left            =   6720
      TabIndex        =   5
      Top             =   1800
      Width           =   1695
   End
   Begin VB.Line Line1 
      X1              =   4920
      X2              =   4920
      Y1              =   120
      Y2              =   3720
   End
   Begin VB.Image greenGuy 
      Height          =   1635
      Left            =   1680
      Picture         =   "newGameFrm.frx":02E4
      Top             =   120
      Width           =   1500
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Player 1 Name"
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
      Left            =   1560
      TabIndex        =   2
      Top             =   1800
      Width           =   1695
   End
End
Attribute VB_Name = "newGameFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'############################'
' Mad Bad Ninja Game         '
' New Game Code              '
' January 21, 2013           '
'############################'

Private Sub p1ReadyBtn_Click()
    
    '# Player 1
    
    gameFrm.player1Img.Picture = greenGuy.Picture
    
    If (name1Txt.Text = "") Then
        MsgBox "Enter a name!", , "Error"
        
    Else
        p1ReadyBtn.Enabled = False
        p1ReadyBtn.Caption = "Ready!"
        name1Txt.Enabled = False
        
        name1Txt.Text = UCase(name1Txt.Text)
        gameFrm.p1NameLbl.Caption = name1Txt.Text
    
    End If
    
    If (p2ReadyBtn.Enabled = False) Then
    
        newGameFrm.Visible = False
        gameFrm.Visible = True
        
        name1Txt.Text = UCase(name1Txt.Text)
        gameFrm.p1NameLbl.Caption = name1Txt.Text
    
    End If

End Sub

Private Sub p2ReadyBtn_Click()
    
    '# Player 2
    
    gameFrm.player2Img.Picture = p2BlueGuy.Picture
    
    If (name2Txt.Text = "") Then
        MsgBox "Enter a name!", , "Error"
    
    Else
        p2ReadyBtn.Enabled = False
        p2ReadyBtn.Caption = "Ready!"
        
        name2Txt.Enabled = False
        
        name2Txt.Text = UCase(name2Txt.Text)
        gameFrm.p2NameLbl.Caption = name2Txt.Text
    
    End If
    
    If (p1ReadyBtn.Enabled = False) Then
        
        newGameFrm.Visible = False
        gameFrm.Visible = True
        
        name2Txt.Text = UCase(name2Txt.Text)
        gameFrm.p2NameLbl.Caption = name2Txt.Text
    
    End If

End Sub
