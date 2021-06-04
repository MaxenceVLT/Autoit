#include <Date.au3>
$alert = MsgBox(4,"Alert - Monitoring des logs Websphere  ","Nous sommes le "& _NowDate()&" à "&_NowTime(4)& @crlf &"Voulez-vous le lancer Script ?")

if $alert = 6 then
MsgBox(0,"Validation","Le script va se lancer",3)
Run("python C:\Users\Maxence\Documents\monitoring-web-logs-websphere.py")
EndIf
if $alert = 7 then
MsgBox(0,"Annulation","Le script ne va pas se lancer",3)
EndIf