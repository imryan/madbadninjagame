VERSION 5.00
Begin VB.Form gameFrm 
   BackColor       =   &H00FFC0C0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Mad Bad Ninja Game | Beta 1.3"
   ClientHeight    =   6855
   ClientLeft      =   4680
   ClientTop       =   3675
   ClientWidth     =   9255
   FillColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6855
   ScaleWidth      =   9255
   Begin VB.Timer punchTimer2 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   8640
      Top             =   1920
   End
   Begin VB.Timer punchTimer 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   240
      Top             =   1800
   End
   Begin VB.Line Line2 
      X1              =   0
      X2              =   9240
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Image player1Img 
      Height          =   1635
      Left            =   240
      Picture         =   "gameFrm.frx":0000
      Top             =   5160
      Width           =   1500
   End
   Begin VB.Image player2Img 
      Height          =   1620
      Left            =   7440
      Picture         =   "gameFrm.frx":02FE
      Top             =   5160
      Width           =   1440
   End
   Begin VB.Image backgroundImg 
      Height          =   5190
      Left            =   0
      Picture         =   "gameFrm.frx":05DE
      Top             =   1680
      Width           =   9255
   End
   Begin VB.Label p2NameLbl 
      BackColor       =   &H00E0E0E0&
      Caption         =   "<name>"
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
      Left            =   7200
      TabIndex        =   11
      Top             =   240
      Width           =   1095
   End
   Begin VB.Label Label10 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Enemy:"
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
      Left            =   5880
      TabIndex        =   10
      Top             =   240
      Width           =   735
   End
   Begin VB.Label Label9 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Enemy HP:"
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
      Left            =   5880
      TabIndex        =   9
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label p2HpLbl 
      BackColor       =   &H00E0E0E0&
      Caption         =   "100"
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
      Left            =   7200
      TabIndex        =   8
      Top             =   600
      Width           =   375
   End
   Begin VB.Label Label7 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Score:"
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
      Left            =   5880
      TabIndex        =   7
      Top             =   960
      Width           =   735
   End
   Begin VB.Label p2ScoreLbl 
      BackColor       =   &H00E0E0E0&
      Caption         =   "0"
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
      Left            =   7200
      TabIndex        =   6
      Top             =   960
      Width           =   375
   End
   Begin VB.Line Line1 
      X1              =   4680
      X2              =   4680
      Y1              =   0
      Y2              =   1680
   End
   Begin VB.Label p1ScoreLbl 
      BackColor       =   &H00E0E0E0&
      Caption         =   "0"
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
      Left            =   2640
      TabIndex        =   5
      Top             =   960
      Width           =   375
   End
   Begin VB.Label Label4 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Score:"
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
      Left            =   1320
      TabIndex        =   4
      Top             =   960
      Width           =   855
   End
   Begin VB.Label p1HpLbl 
      BackColor       =   &H00E0E0E0&
      Caption         =   "100"
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
      Left            =   2640
      TabIndex        =   3
      Top             =   600
      Width           =   375
   End
   Begin VB.Label Label1 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Player HP:"
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
      Left            =   1320
      TabIndex        =   2
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label Label3 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Player:"
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
      Left            =   1320
      TabIndex        =   1
      Top             =   240
      Width           =   855
   End
   Begin VB.Label p1NameLbl 
      BackColor       =   &H00E0E0E0&
      Caption         =   "<name>"
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
      Left            =   2640
      TabIndex        =   0
      Top             =   240
      Width           =   1095
   End
   Begin VB.Shape hudBar 
      FillColor       =   &H00E0E0E0&
      FillStyle       =   0  'Solid
      Height          =   1695
      Left            =   0
      Top             =   0
      Width           =   9255
   End
End
Attribute VB_Name = "gameFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'############################'
' Mad Bad Ninja Game         '
' Game Code                  '
' January 21, 2013           '
'############################'
Dim player1HP As Integer, player1Score As Integer
Dim player2HP As Integer, player2Score As Integer
Dim player1ImgRight As Integer, player1ImgBottom As Integer
Dim player2ImgRight As Integer, player2ImgBottom As Integer
Dim p1CanHit As Boolean, p2CanHit As Boolean
Dim randHit As Integer
Dim p1IsDead As Boolean, p2IsDead As Boolean
Dim walkingLeft As Boolean, walkingRight As Boolean
Dim p2WalkingLeft As Boolean, p2WalkingRight As Boolean
Dim p1Score As Integer, p2Score As Integer
Dim soundByte As String



Private Sub Form_Load()

    '# Define player points
    player1ImgRight = player1Img.Left + player1Img.Width
    player2ImgRight = player2Img.Left + player2Img.Width
    
    '# This method loads the <gameFrm> and calls the startup methods
    
    player1HP = 100
    player1Score = 0
    
    player2HP = 100
    player2Score = 0
    
    p2NameLbl.Caption = UCase(p2NameLbl.Caption)
    p1NameLbl.Caption = UCase(p1NameLbl.Caption)
    
    player2Img.Picture = imageFrm.blueGuyLeft.Picture
    
    player1Img.Visible = True
    player2Img.Visible = True
    
End Sub

Private Sub Form_KeyDown(keyCode As Integer, shift As Integer)

    '# Player 2 Movements
    
    If (keyCode = vbKeyLeft) Then
        player2Img.Left = player2Img.Left - 90  '# Walk left
        player2Img.Picture = imageFrm.blueGuyLeft.Picture
        
        p2WalkingRight = False
        p2WalkingLeft = True
    
    ElseIf (keyCode = vbKeyRight) Then
        player2Img.Left = player2Img.Left + 90  '# Walk right
        player2Img.Picture = imageFrm.blueGuy.Picture
        
        p2WalkingRight = True
        p2WalkingLeft = False
    
    ElseIf (keyCode = vbKeyNumpad0) Then
    
    soundByte = sndPlaySound(App.Path + "\hit.wav", 1)
        
        If (p2WalkingLeft = True) Then
            player2Img.Picture = imageFrm.blueGuyLeftPunch.Picture
            
        ElseIf (p2WalkingRight = True) Then
            player2Img.Picture = imageFrm.blueGuyPunchRight.Picture
            
        End If
        
        '# Punch timer
        punchTimer2.Enabled = True
        
        '# See if they can hit the opponent
        If (p2CanHit = True) Then
        
            Randomize
            randHit = Int(Rnd * 5) + 1
            
            p1HpLbl.Caption = p1HpLbl.Caption - randHit
            p2ScoreLbl.Caption = p2ScoreLbl.Caption + randHit
            
        End If
        
    End If
    
    '# Player 1 Movements

    If (keyCode = vbKeyA) Then                 '# Walk left
        player1Img.Left = player1Img.Left - 90
        player1Img.Picture = imageFrm.greenGuyLeft.Picture
        
        walkingLeft = True
        walkingRight = False
        
             
    ElseIf (keyCode = vbKeyD) Then             '# Walk right
        player1Img.Left = player1Img.Left + 90
        player1Img.Picture = imageFrm.greenGuy.Picture
                
        walkingRight = True
        walkingLeft = False
        
    ElseIf (keyCode = vbKeySpace) Then
    
    soundByte = sndPlaySound(App.Path + "\hit.wav", 1)
    
    If (walkingRight = True) Then
        player1Img.Picture = imageFrm.greenGuyRightPunch.Picture
        
    ElseIf (walkingLeft = True) Then
        player1Img.Picture = imageFrm.greenGuyLeftPunch.Picture

    End If
    
    '# Punch timer
    punchTimer.Enabled = True
        
        
       '# See if they can hit the opponent
        If (p1CanHit = True) Then
        
            Randomize
            randHit = Int(Rnd * 5) + 1
            
            p2HpLbl.Caption = p2HpLbl.Caption - randHit
            p1ScoreLbl.Caption = p1ScoreLbl.Caption + randHit
            
        End If
    
    End If
    
    '# Player 1 wall collision detection
    If (player1Img.Left = -30) Then
        player1Img.Left = player1Img.Left + 90
        
    ElseIf (player1Img.Left = 7800) Then
        player1Img.Left = player1Img.Left - 90
    End If
    
    '# Player 2 wall collision detection
    If (player2Img.Left = -30) Then
        player2Img.Left = player2Img.Left + 90
        
    ElseIf (player2Img.Left = 7800) Then
        player2Img.Left = player2Img.Left - 90
    End If
    
    
    '# Player punch detection
    
    If (player1Img.Left >= player2Img.Left) And (player1Img.Left <= player2Img.Left) Then
    
        p1CanHit = True
        p2CanHit = True
        
    ElseIf ((player1Img.Left + player1Img.Width) >= player2Img.Left) And ((player1Img.Left + player1Img.Width) <= (player2Img.Left + player2Img.Width)) Then
        
        p1CanHit = True
        p2CanHit = True
        
    Else
        p1CanHit = False
        p2CanHit = False
    
    End If
    
    
    If (p2HpLbl.Caption <= 0) Then
        p2IsDead = True
        MsgBox p2NameLbl.Caption & " has been killed by " & p1NameLbl.Caption & "!", , "MBNG"
        
        endGameFrm.gameDetailLbl.Caption = p2NameLbl.Caption & " has been killed by " & p1NameLbl.Caption & "!"
        
        endGameFrm.Visible = True
        gameFrm.Visible = False
        
    ElseIf (p1HpLbl.Caption <= 0) Then
        p1IsDead = True
        MsgBox p1NameLbl.Caption & " has been killed by " & p2NameLbl.Caption & "!", , "MBNG"
        
        endGameFrm.gameDetailLbl.Caption = p1NameLbl.Caption & " has been killed by " & p2NameLbl.Caption & "!"
        
        endGameFrm.Visible = True
        gameFrm.Visible = False
        
    Else
        p1IsDead = False
        p2IsDead = False
    
    End If
    
    
End Sub

Private Sub punchTimer_Timer() '# Player 1 punch timer
    
    Static count As Integer
    count = count + 1
    
    If (count = 1) Then
    
        If (walkingLeft = True) Then
            player1Img.Picture = imageFrm.greenGuyLeft.Picture
        Else
            player1Img.Picture = imageFrm.greenGuy.Picture
        End If
        
        count = 0
        punchTimer.Enabled = False
    End If

End Sub

Private Sub punchTimer2_Timer() '# Player 2 punch timer

    Static count2 As Integer
    count2 = count2 + 1
    
    If (count2 = 1) Then
    
        If (p2WalkingLeft = True) Then
            player2Img.Picture = imageFrm.blueGuyLeft.Picture
        Else
            player2Img.Picture = imageFrm.blueGuy.Picture
        End If
        
        count2 = 0
        punchTimer2.Enabled = False
    End If

End Sub
