#include <ButtonConstants.au3>
#include <AutoItConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

$Popup = GUICreate("Mapper un lecteur", 799, 119, 295, 263)
$Input1 = GUICtrlCreateInput("", 120, 40, 441, 21)
$Button1 = GUICtrlCreateButton("Ajouter", 616, 40, 59, 25)
$Button2 = GUICtrlCreateButton("Supprimer", 168, 80, 67, 25)
$Input2 = GUICtrlCreateInput("", 568, 40, 41, 21)
$Label1 = GUICtrlCreateLabel("Chemin du dossier", 16, 40, 90, 17)
$Label2 = GUICtrlCreateLabel("Lettre du lecteur", 552, 12, 81, 17)
$Label3 = GUICtrlCreateLabel("Lettre du lecteur", 16, 80, 81, 17)
$Input3 = GUICtrlCreateInput("", 120, 80, 41, 21)
GUISetState(@SW_SHOW)

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
;SHARE THE FOLDER
		Case $Button1
			$Folder = GUICtrlRead($Input1)
			$LetterFolder = GUICtrlRead($Input2)
			DriveMapAdd($LetterFolder&":", $Folder)
;DELETE THE FOLDER
		Case $Button2
			$DelFolder = GUICtrlRead($Input3)
			DriveMapDel($DelFolder&":")
	EndSwitch
WEnd