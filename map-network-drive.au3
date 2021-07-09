#include <ButtonConstants.au3>
#include <AutoItConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

$Popup = GUICreate("Popup", 799, 91, 295, 263)
$Input1 = GUICtrlCreateInput("", 120, 16, 441, 21)
$Button1 = GUICtrlCreateButton("Ajouter", 616, 16, 59, 25)
$Button2 = GUICtrlCreateButton("Supprimer", 168, 56, 67, 25)
$Input2 = GUICtrlCreateInput("", 568, 16, 41, 21)
$Label1 = GUICtrlCreateLabel("Chemin du dossier", 16, 16, 90, 17)
$Label2 = GUICtrlCreateLabel("Lettre du lecteur", 16, 56, 81, 17)
$Input3 = GUICtrlCreateInput("", 120, 56, 41, 21)
GUISetState(@SW_SHOW)

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button1
			$Folder = GUICtrlRead($Input1)
			$LetterFolder = GUICtrlRead($Input2)
			DriveMapAdd($LetterFolder&":", $Folder)
		Case $Button2
			$DelFolder = GUICtrlRead($Input3)
			DriveMapDel($DelFolder&":")
	EndSwitch
WEnd