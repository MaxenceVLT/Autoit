#include <ScreenCapture.au3>

Run("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe -new http://www.google.com/","",@SW_MAXIMIZE)
WinWait("[CLASS:Chrome_WidgetWin_1]","Google - Google Chrome",2)
_ScreenCapture_SetBMPFormat(4)
_ScreenCapture_Capture("D:\Maxence\Pictures"&"\test.bmp")

Exit