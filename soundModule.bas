Attribute VB_Name = "Module1"
Declare Function sndPlaySound Lib "winmm" Alias "sndPlaySoundA" (ByVal lpszsoundname As String, ByVal uflags As Long) As Long
