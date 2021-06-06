#include <Date.au3>

;↓↓==[DAYS OF THE WEEK]==↓↓
Global $monday = _DateDayOfWeek(2,$DMW_LOCALE_LONGNAME)
Global $tuesday = _DateDayOfWeek(3,$DMW_LOCALE_LONGNAME)
Global $wednesday  = _DateDayOfWeek(4,$DMW_LOCALE_LONGNAME)
Global $thursday = _DateDayOfWeek(5,$DMW_LOCALE_LONGNAME)
Global $friday = _DateDayOfWeek(6,$DMW_LOCALE_LONGNAME)
Global $saturday = _DateDayOfWeek(7,$DMW_LOCALE_LONGNAME)
Global $sunday =  _DateDayOfWeek(1,$DMW_LOCALE_LONGNAME)

;↓↓==============[DAILY ALERTS]==============↓↓
Global $dailyAlert1 = 13&":"&30
Global $dailyAlert2 = 14&":"&59

;↓↓==============[SPECIAL ALERTS]==============↓↓
;↓↓==[ MONDAY ]==↓↓
Global $mondayAlert1 = 00&":"&00
;↓↓==[ TUESDAY ]==↓↓
Global $tuesdayAlert1 = 00&":"&00
;↓↓==[ WEDNESDAY ]==↓↓
Global $wednesdayAlert1 = 08&":"&59
;↓↓==[ THURSDAY ]==↓↓
Global $thursdayAlert1 = 00&":"&00
;↓↓==[ FRIDAY ]==↓↓
Global $fridayAlert1 = 00&":"&00
;↓↓==[ SATURDAY ]==↓↓
Global $saturdayAlert1 = 14&":"&59
;↓↓==[ SUNDAY ]==↓↓
Global $sundayAlert1 = 10&":"&37



While 1
;↓↓==============[DAILY ALERTS]==============↓↓
If _NowTime(4) == $dailyAlert1 Then
	MsgBox(0,"Alerte Quotidienne",_DateDayOfWeek(@WDAY,$DMW_LOCALE_LONGNAME)&","&_NowTime(4)&@crlf&"Faire le check des Logs Événements")
	Sleep(60000)
ElseIf _NowTime(4) == $dailyAlert2 Then
	MsgBox(0,"Alerte Quotidienne",_DateDayOfWeek(@WDAY,$DMW_LOCALE_LONGNAME)&","&_NowTime(4)&@crlf&"Faire le check Flask sur le ServWEB_01")
	Sleep(60000)

;↓↓==============[SPECIAL ALERTS]==============↓↓
;↓↓==[ MONDAY ]==↓↓

;↓↓==[ TUESDAY ]==↓↓

;↓↓==[ WEDNESDAY ]==↓↓
ElseIf _NowTime(4) & _DateDayOfWeek(@WDAY,$DMW_LOCALE_LONGNAME) == $wednesdayAlert1 & $wednesday Then
	MsgBox(0,"Alerte Spécial",_DateDayOfWeek(@WDAY,$DMW_LOCALE_LONGNAME)&","&_NowTime(4)&@crlf&"Regarder les incidents")
	Sleep(60000)
;↓↓==[ THURSDAY ]==↓↓

;↓↓==[ FRIDAY ]==↓↓

;↓↓==[ SATURDAY ]==↓↓
ElseIf _NowTime(4) & _DateDayOfWeek(@WDAY,$DMW_LOCALE_LONGNAME) == $saturdayAlert1 & $saturday Then
	MsgBox(0,"Alerte Spécial",_DateDayOfWeek(@WDAY,$DMW_LOCALE_LONGNAME)&","&_NowTime(4)&@crlf&"Commenter l'Activité de la semaine dans le blog")
	Sleep(60000)
;↓↓==[ SUNDAY ]==↓↓
ElseIf _NowTime(4) & _DateDayOfWeek(@WDAY,$DMW_LOCALE_LONGNAME) == $sundayAlert1 & $sunday Then
	MsgBox(0,"Alerte Spécial",_DateDayOfWeek(@WDAY,$DMW_LOCALE_LONGNAME)&","&_NowTime(4)&@crlf&"Faire et envoyer le mail de rapport de la semaine")
	Sleep(60000)

EndIf
WEnd