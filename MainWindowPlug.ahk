
#SingleInstance FORCE	;終了してから再起動

#KeyHistory 0
;#NoTrayIcon

; 後で設定
;DetectHiddenWindows, Off
DetectHiddenText, Off

SetWorkingDir, %A_ScriptDir%



;#Include %A_ScriptDir%\src\windowPlug\useForPlug\windowPlugStartUp.ahk

#Include %A_ScriptDir%\onlyHere\splitCommon\globalWindowPlugReplace.ahk

#Include %A_ScriptDir%\src\windowPlug\globalWindowPlug.ahk

#Include %A_ScriptDir%\src\windowPlug\easyToUse\easyToUseVarWindowPlug.ahk

#Include %A_ScriptDir%\onlyHere\onlyHereWindowPlugValue.ahk

#Include %A_ScriptDir%\src\windowPlug\option\beforehandWindowPlug.ahk

#Include %A_ScriptDir%\src\windowPlug\guiWindowPlugFactory.ahk

#Include %A_ScriptDir%\src\windowPlug\menuWindowPlugFactory.ahk

#Include %A_ScriptDir%\src\windowPlug\initSettingWindowPlug.ahk


#Include %A_ScriptDir%\onlyHere\onlyHereWindowPlugStartup.ahk

optwinplugf_checkFileAndFolderMakeFolderAndFile()

optwinplugf_startUpStartUpBuffOutput()





IfNotExist,  %A_ScriptDir%\icon.ico
{
	if(A_IsCompiled == 1){
		Menu, Tray, Icon, %A_ScriptFullPath%
	} else {
		Menu, Tray, Icon, %A_AhkPath%
	}
} else {
	Menu, Tray, Icon, %A_ScriptDir%\icon.ico
}


Menu, Win_Plug_MenuMain, Add, 終了(&X), ohwinplusub_windowPlugSoftExitApp

Menu, Tray, Add, 結果表示(&K), ohwinplusub_showExplain
Menu, Tray, Add, ウインドウのメニュー(&A), :Win_Plug_MenuMain
Menu, Tray, Add, 登録のウインドウ(&H), Win_Plug_SubShowEntryWinPosSize
Menu, Tray, Add, エラーの表示(&E), ohwinplusub_showErrorWindow
Menu, Tray, Add
Menu, Tray, Add, WindowPlugの終了(&X), ohwinplusub_windowPlugSoftExitApp

Menu, Tray, NoStandard
Menu, Tray, Default, 結果表示(&K)
Menu, Tray, Click, 1

Menu, Tray, Tip, WindowPlugSoft


DetectHiddenWindows, Off

return

#Include %A_ScriptDir%\onlyHere\onlyHereWindowPlugSubLutin.ahk


;#Include %A_ScriptDir%\src\windowPlug\useForPlug\windowPlugSubrouAndFunc.ahk

#Include %A_ScriptDir%\src\windowPlug\windowPlugSubLutins.ahk

#Include %A_ScriptDir%\src\windowPlug\guiWindowPlugSubLutin.ahk

#Include %A_ScriptDir%\src\windowPlug\guiWindowPlugFunction.ahk

#Include %A_ScriptDir%\src\windowPlug\windowPlugFunc.ahk

#Include %A_ScriptDir%\src\windowPlug\easyToUse\easyToUseWindowPlugFunc.ahk

#Include %A_ScriptDir%\src\windowPlug\option\optionWindowPlugFunc.ahk


#Include %A_ScriptDir%\onlyHere\splitCommon\replaceWindowPlugFunc.ahk

#Include %A_ScriptDir%\onlyHere\onlyHereWindowPlugFunc.ahk


#Include %A_ScriptDir%\src\commonSrc\guiCommonFunction.ahk

#Include %A_ScriptDir%\src\commonSrc\functionCommon.ahk

#Include %A_ScriptDir%\src\commonSrc\windowCommonFunc.ahk

#Include %A_ScriptDir%\src\commonSrc\otherLibFunc.ahk

