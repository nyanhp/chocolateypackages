#NoEnv
#NoTrayIcon
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1
SetControlDelay -1
 
winTitleInstall = Parsec Setup
WinWait, %winTitleInstall%, Installing
WinHide, %winTitleInstall%, Installing

WinWait, %winTitleInstall%, controller , 300
ControlClick , Button2, %winTitleInstall%, controller
WinHide, %winTitleInstall%, Installing