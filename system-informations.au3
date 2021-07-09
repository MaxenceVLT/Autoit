#include <MsgBoxConstants.au3>

Local $sysInfos = ("- Lecteur système :  "  & @homedrive & @CRLF _
                & "- Version de l'OS :  " & @OSArch & "  " & @OSVersion & @CRLF _
				& "- Adresse IP :  " & @IPAddress1 & @CRLF _
                & "- Nom de l'ordinateur :  " & @ComputerName & @CRLF _
                & "- Nom de l'utilisateur :  " & @UserName)
MsgBox(0, "Les Informations du système" ,  $sysInfos)
