#include <Date.au3>

Global $Alert1 = 11&":"&39
Global $Alert2 = 11&":"&42

While 1

If _NowTime(4) == $Alert1 Then
	MsgBox(0,"Alert","Il est: "&_NowTime(4)&@crlf&"Faire le check des Logs Événements")
	Sleep(60000)
ElseIf _NowTime(4) == $Alert2 Then
	MsgBox(0,"Alert","Il est: "&_NowTime(4)&@crlf&"Faire le check Flask sur le ServWEB_01")
	Sleep(60000)

EndIf
WEnd

