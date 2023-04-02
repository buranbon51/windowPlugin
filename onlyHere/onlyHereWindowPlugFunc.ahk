






ohwinpluf_getWithinNumOrErrMsg(value, min, max){
	If value is not integer
	{
		rwipluf_errorOutputWindowPlug("数字以外が指定されている`n値  " . value)
		return "error"
	}
	if(value <= min){
		rwipluf_errorOutputWindowPlug("数字が小さすぎる`n値  " . value)
		return "error"
	} else if(value >= max){
		rwipluf_errorOutputWindowPlug("数字が大きすぎる`n値  " . value)
		return "error"
	}
	return value
}

ohwinpluf_errMsgIfErrorStr(str, viewMsg){
	if( str == "error" ){
		rwipluf_errorOutputWindowPlug(viewMsg)
		return True
	}
	return False
}

ohwinpluf_getWithinNumOrBasicAndErrMsg(value, basicValue, min, max, valueName){
	errMsg := valueName . "  の代入のエラー`n初期値を設定する"
	str := ohwinpluf_getWithinNumOrErrMsg(value, min, max)
	if( ohwinpluf_errMsgIfErrorStr(str, errMsg) ){
		return basicValue
	}
	return value
}

ohwinpluf_getFlagByOnOffStrOrBasicAndErrMsg(value, basicValue, valueName){
	errMsg := valueName . "  の代入のエラー`n値  " . value . "`n初期値を設定する"
	flag := func_getFlagByOnOffStrOrErrMsg(value)
	if( ohwinpluf_errMsgIfErrorStr(flag, errMsg) ){
		return basicValue
	}
	return flag
}

; リスト名を更新するときに使う
ohwinpluf_reloadListTitle(iniFile, dir, outList, GuiNum, loopCount){
	;func_fileCheckMakeFolderAndFolder(iniFile, dir)
	buff := "|"
	Loop , %loopCount%
	{
		IniRead, titleTmp, %iniFile%, __listTitle, titleName%A_Index% , set%A_Index%
		titleTmp := Trim(titleTmp)
		if(titleTmp == ""){
			titleTmp := "set" . A_Index
		}
		if(A_Index == 1){
			buff .= titleTmp  . "|"
		} else {
			buff .= "|" . titleTmp
		}
	}

	buff := RTrim(buff, "|")
	guf_setControl( buff, outList, GuiNum )
}

ohwinpluf_deleteAndMakeFile(file, parentFolder=""){
	if( func_myFileExist(file) ){
		func_folderCheckMakeFolder(parentFolder)
		FileDelete, %file%
		FileAppend, %null%, %file%
		if( rwipluf_checkErrorLevelOutput(file  . "`n`tを空にする時にエラー") ){
			return  True
		}
	}
	return  False
}
