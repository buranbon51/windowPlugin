
Win_Plug_SetO_menuPosX(posX=20){
	Win_Plug_O_menuPosX := rwipluf_getWithinNumOrBasicAndErrMsg(posX, 20, -1, 3000, "Win_Plug_O_menuPosX")
}

Win_Plug_SetO_menuPosY(posY=10){
	Win_Plug_O_menuPosY := rwipluf_getWithinNumOrBasicAndErrMsg(posY, 10, -1, 3000, "Win_Plug_O_menuPosY")
}

Win_Plug_beforeRestore(winTitle="A"){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_myWindowToBefore(winTitle)
}

Win_Plug_backupPosSize(winTitle="A"){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_sizePosEntryOutPut(winTitle)
}

Win_Plug_posChange(posX, posY, winTitle="A", absoleFlag=True){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_myWindowPosChange(posX, posY, winTitle, absoleFlag)
}

Win_Plug_sizeChange(width, height, winTitle="A", absoleFlag=True){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_myWindowSizeChange(width, height, winTitle, absoleFlag)
}

Win_Plug_posSizeChange(posX, posY, width, height, winTitle="A", posAbsoleFlag=True, sizeAbsoleFlag=True){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_myWindowPosSizeChange(posX, posY, width, height, winTitle, posAbsoleFlag, sizeAbsoleFlag)
}

Win_Plug_posChangeOnlyX(posX, winTitle="A"){
	rwipluf_beforeWindowControlIfA(winTitle)
	WinGetPos , X, posY, width, height, %winTitle%
	wind_myWindowPosChange(posX, posY, winTitle, True)
}

Win_Plug_posChangeOnlyY(posY, winTitle="A"){
	rwipluf_beforeWindowControlIfA(winTitle)
	WinGetPos , posX, Y, width, height, %winTitle%
	wind_myWindowPosChange(posX, posY, winTitle, True)
}

Win_Plug_sizeChangeOnlyWidth(width, winTitle="A"){
	rwipluf_beforeWindowControlIfA(winTitle)
	WinGetPos , X, Y, W, height, %winTitle%
	wind_myWindowSizeChange(width, height, winTitle, True)
}

Win_Plug_sizeChangeOnlyHeight(height, winTitle="A"){
	rwipluf_beforeWindowControlIfA(winTitle)
	WinGetPos , X, Y, width, H, %winTitle%
	wind_myWindowSizeChange(width, height, winTitle, True)
}

Win_Plug_posChangeFromEntryList(listNumber, winTitle=""){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_winPosExecute(listNumber, "", "", winTitle, "")
}

Win_Plug_sizeChangeFromEntryList(listNumber, winTitle=""){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_winSizeExecute(listNumber, "", "", winTitle, "")
}

Win_Plug_posSizeChangeFromEntryList(listNumber, winTitle=""){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_winPosSizeExecute(listNumber, "", "", "", "", winTitle, "", "")
}

Win_Plug_posChangeFromEntryListPlusAssign(listNumber, posX="", posY="", winTitle="", absoleStr=""){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_winPosExecute(listNumber, posX, posY, winTitle, absoleStr)
}

Win_Plug_sizeChangeFromEntryListPlusAssign(listNumber, width="", height="", winTitle="", absoleStr=""){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_winSizeExecute(listNumber, width, height, winTitle, absoleStr)
}

Win_Plug_posSizeChangeFromEntryListPlusAssign(listNumber, posX="", posY="", width="", height="", winTitle="", posAbsoleStr="", sizeAbsoleStr=""){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_winPosSizeExecute(listNumber, posX, posY, width, height, winTitle, posAbsoleStr, sizeAbsoleStr)
}

Win_Plug_posChangeSave(listNumber, posX, posY, useWinTitle, absoleFlag, listName){
	;rwipluf_beforeWindowControl()
	wind_winPosIniFileWriteFromCommand(posX, posY, absoleFlag, useWinTitle, listNumber, listName)
}

Win_Plug_sizeChangeSave(listNumber, width, height, useWinTitle, absoleFlag, listName){
	;rwipluf_beforeWindowControl()
	wind_winSizeIniFileWriteFromCommand(width, height, absoleFlag, useWinTitle, listNumber, listName)
}

Win_Plug_posSizeChangeSave(listNumber, posX, posY, width, height, useWinTitle, posAbsoleFlag, sizeAbsoleFlag, listName){
	;rwipluf_beforeWindowControl()
	wind_winPosSizeIniFileWriteFromCommand(posX, posY, width, height, posAbsoleFlag, sizeAbsoleFlag, useWinTitle, listNumber, listName)
}

Win_Plug_posChangeSaveWinTitle(listNumber, getWinTitle="A", useWinTitle="A", listName=""){
	rwipluf_beforeWindowControlIfA(getWinTitle)
	wind_activeWinPosEntryFromCommand(getWinTitle, useWinTitle, listNumber, listName)
}

Win_Plug_sizeChangeSaveWinTitle(listNumber, getWinTitle="A", useWinTitle="A", listName=""){
	rwipluf_beforeWindowControlIfA(getWinTitle)
	wind_activeWinSizeEntryFromCommand(getWinTitle, useWinTitle, listNumber, listName)
}

Win_Plug_posSizeChangeSaveWinTitle(listNumber, getWinTitle="A", useWinTitle="A", listName=""){
	rwipluf_beforeWindowControlIfA(getWinTitle)
	wind_activeWinPosSizeEntryFromCommand(getWinTitle, useWinTitle, listNumber, listName)
}

Win_Plug_posChangeLoad(listNumber){
	wind_winPosLoadFromCommand(listNumber)
}

Win_Plug_sizeChangeLoad(listNumber){
	wind_winSizeLoadFromCommand(listNumber)
}

Win_Plug_posSizeChangeLoad(listNumber){
	wind_winPosSizeLoadFromCommand(listNumber)
}

Win_Plug_posChangeLoadWinTitle(winTitle){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_AssiPos(winTitle, True)
}

Win_Plug_sizeChangeLoadWinTitle(winTitle){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_AssiSize(winTitle, True)
}

Win_Plug_posSizeChangeLoadWinTitle(winTitle){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_AssiSizePos(winTitle, True)
}

Win_Plug_gorupMain(number){
	wind_mainGorupChange(number)
}

Win_Plug_groupAdd(number, winTitle="A"){
	rwipluf_beforeWindowControlIfA(winTitle)
	groupName := glowi_WindGroup  . number
	GroupAdd, %groupName%, %winTitle%, , SubGroupErrorMsg
	rwipluf_easyExplainWindowPlug(groupName  . "  に "  . winTitle  . "  のウインドウを追加")
}

Win_Plug_maxOrResize(winTitle="A"){
	rwipluf_beforeWindowControlIfA(winTitle)
	wind_windowMaxOrResize(winTitle)
}
