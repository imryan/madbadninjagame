VERSION 5.00
Begin VB.Form frmStartScreen 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   6405
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9885
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6405
   ScaleWidth      =   9885
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Height          =   7095
      Left            =   0
      Picture         =   "sTARTsCREEN.frx":0000
      ScaleHeight     =   7035
      ScaleWidth      =   9915
      TabIndex        =   0
      Top             =   0
      Width           =   9975
      Begin VB.CommandButton cmdClose 
         Caption         =   "X"
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
         Left            =   120
         TabIndex        =   2
         Top             =   6000
         Width           =   255
      End
      Begin VB.CommandButton Command1 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Start"
         BeginProperty Font 
            Name            =   "Fixedsys"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4080
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   2040
         Width           =   1695
      End
   End
End
Attribute VB_Name = "frmStartScreen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()

End Sub
