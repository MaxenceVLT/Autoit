#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

$Popup = GUICreate("Mapper un lecteur", 627, 442, 348, 114)
$Input1 = GUICtrlCreateInput("", 144, 48, 441, 21)
$Button1 = GUICtrlCreateButton("Ajouter", 288, 112, 59, 25)
$Button2 = GUICtrlCreateButton("Compiler", 272, 400, 75, 25)
$Label1 = GUICtrlCreateLabel("Chemin du dossier", 32, 48, 90, 17)
$Label2 = GUICtrlCreateLabel("Lettre du lecteur", 32, 88, 81, 17)
$Edit1 = GUICtrlCreateEdit("", 16, 168, 593, 225)
$Group1 = GUICtrlCreateGroup("Ajouter un Dossier Partagé", 16, 16, 593, 137)
$Combo1 = GUICtrlCreateCombo("A", 144, 88, 73, 25)
GUICtrlSetData($Combo1, "B|C|D|E|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z")
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUISetState(@SW_SHOW)

;↓↓==============[DISPLAY THE TEXT INTO THE FILE]==============↓↓
	Resfresh()
	Func Resfresh()
	$RefreshEdit1 = FileRead("C:\Users\Maxencce\Documents\GitHub\Autoit\mapper\v0.2\mapper.au3")
	GUICtrlSetData($Edit1,$RefreshEdit1)
	EndFunc

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $Button1
			$Folder = GUICtrlRead($Input1)
			$LetterFolder = GUICtrlRead($Combo1)
;↓↓==============[OPEN AND WRITE INTO MAPPER.AU3]==============↓↓
			$OpenMapper = FileOpen("C:\Users\Maxencce\Documents\GitHub\Autoit\mapper\v0.2\mapper.au3", 1)
			$Add = "DriveMapAdd("&'"'&$LetterFolder&":"&'"'&","&'"'&$Folder&'"'&")"&@CRLF
			FileWrite($OpenMapper,$Add)
;↓↓==============[RESFRESH THE BOX TEXT ($Edit1)]==============↓↓
			Resfresh()
;↓↓==============[CREATE A MAPPER.EXE]==============↓↓
		Case $Button2
			Run('powershell.exe -command "C:\Users\Maxencce\Documents\GitHub\Autoit\mapper\v0.2\aut2exe.exe /in C:\Users\Maxencce\Documents\GitHub\Autoit\mapper\v0.2\mapper.au3 /out C:\Users\Maxencce\Documents\GitHub\Autoit\mapper\v0.2\mapper.exe"')
	EndSwitch
WEnd