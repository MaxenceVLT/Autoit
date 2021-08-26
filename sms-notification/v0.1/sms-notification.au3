#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

Global $SMS_Notification = GUICreate("SMS_Notification", 316, 196, 488, 209)
Global $Login = GUICtrlCreateInput("", 16, 48, 121, 21)
Global $Key = GUICtrlCreateInput("", 176, 48, 121, 21)
Global $Message = GUICtrlCreateInput("", 16, 120, 281, 21)
Global $Button1 = GUICtrlCreateButton("Envoyer", 120, 160, 75, 25)
Global $Label1 = GUICtrlCreateLabel("Login", 56, 24, 36, 17)
Global $Label2 = GUICtrlCreateLabel("Key", 224, 24, 36, 17)
Global $Label3 = GUICtrlCreateLabel("Message", 136, 96, 50, 17)
GUISetState(@SW_SHOW)

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
	    Case $Button1
			$send = InetRead("https://smsapi.free-mobile.fr/sendmsg?user="&GUICtrlRead($Login)&"&pass="&GUICtrlRead($Key)&"&msg="&GUICtrlRead($Message)&"")
	EndSwitch
 WEnd
