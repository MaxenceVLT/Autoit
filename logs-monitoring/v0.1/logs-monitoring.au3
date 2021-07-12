#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>

$Form1 = GUICreate("Logs Monitoring", 747, 200, 192, 124)
$Button1 = GUICtrlCreateButton("Lire", 336, 152, 75, 25)
$Edit1 = GUICtrlCreateEdit("", 8, 32, 729, 113)
$Label1 = GUICtrlCreateLabel("", 16, 8, 708, 17)
$Group1 = GUICtrlCreateGroup("Rafraichissement", 448, 152, 161, 41)
$Radio1 = GUICtrlCreateRadio("START", 456, 168, 65, 17)
$Radio2 = GUICtrlCreateRadio("STOP", 544, 168, 57, 17)
GUISetState(@SW_SHOW)

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

;↓↓==============[SELECT A FILE]==============↓↓
		Case $Button1
			$Log1 = FileOpenDialog("Ouvrir un fichier log", "C:\", "(*.*)")
			GUICtrlSetData($Label1,$Log1)
			Resfresh_Edit1()
;↓↓==============[RESTART THE FUNCTION 'Refresh_Edit1']==============↓↓
		Case $Radio1
			If GUICtrlRead($Radio1) = 1 Then
				Resfresh_Edit1()
			EndIf

	EndSwitch
WEnd

	Func Resfresh_Edit1()
		While 1
;↓↓==============[READ THE FILE SELECTED]==============↓↓
			If GUICtrlRead($Radio1) = 1 Then
				$Read1 = FileRead($Log1)
				GUICtrlSetData($Edit1,$Read1)
				Sleep(2500)
;↓↓==============[EXIT THE FUNCTION 'Refresh_Edit1']==============↓↓
			ElseIf GUICtrlRead($Radio2) = 1 Then
				ExitLoop 1
			EndIf
		WEnd
	EndFunc