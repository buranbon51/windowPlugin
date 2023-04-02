
; ウインドウの操作をする前の前準備。
; 実行元のテキストを隠して、どれかのウインドウが最前面になるのを待つ
rwipluf_beforeWindowControl(){

/*
	guwiplugf_entryWindowMinimize()
	edi_hideGuiTextPatternAnyWinActiveWait()
	; リサイズする
	windc_winRestoreIfwinMaxSize("A")
*/

	guwiplugf_entryWindowMinimize()
	IfWinExist , %gGloOnHeWiPlu_winTitle37%
	{
		Gui, 37:Minimize
	}
	windc_anyWaitActive()
	; リサイズする
	windc_winRestoreIfwinMaxSize("A")

}

; A が指定されてたら、実行元テキストを隠す
rwipluf_beforeWindowControlIfA(winTitle){

/*
	guwiplugf_entryWindowMinimize()
	edi_hideOrMinimizeGuiTextPatternWinIfA(winTitle)
	; リサイズする
	windc_winRestoreIfwinMaxSize(winTitle)
*/

	if(winTitle == "A"){
		guwiplugf_entryWindowMinimize()
		IfWinExist , %gGloOnHeWiPlu_winTitle37%
		{
			Gui, 37:Minimize
		}
		windc_anyWaitActive()
	}
	; リサイズする
	windc_winRestoreIfwinMaxSize(winTitle)

}

; エラーメッセージ表示用
rwipluf_errorOutputWindowPlug(errorMessage){

/*
	guit_errorAppend(errorMessage)
*/

	guf_appendBoxEditCursorMove(errorMessage, "BoxEdit38_1", 38, hwndEditBox38_1)
	guf_showGuiAssign(38, "NA")
}

; 簡単な説明表示用
rwipluf_easyExplainWindowPlug(str){

/*
	CoordMode, ToolTip, Relative
	timf_toolTipFunc(str, 30, 350, 3)

	guit_setExplain(str, 71)
*/

	guf_setControl( str, "BoxEdit37_1", 37 )

}

rwipluf_checkErrorLevelOutput(append){

/*
	res := guit_checkErrorLevelOutput(append)
	return res
*/

	if(ErrorLevel >= 1){
		rwipluf_errorOutputWindowPlug( "ErrorLevel   " . ErrorLevel  . "`n" . append)
		return False
	}
	return True

}

; value が範囲内の数字かどうか確認する
rwipluf_getWithinNumOrBasicAndErrMsg(value, basicValue, min, max, valueName){
/*
	value := outs_getWithinNumOrBasicAndErrMsg(value, basicValue, min, max, valueName)
	return value
*/

	value := ohwinpluf_getWithinNumOrBasicAndErrMsg(value, basicValue, min, max, valueName)
	return value

}

; value が True か False かを確認
rwipluf_getFlagByOnOffStrOrBasicAndErrMsg(value, basicValue, valueName){
/*
	value := outs_getFlagByOnOffStrOrBasicAndErrMsg(value, basicValue, valueName)
	return value
*/

	value := ohwinpluf_getFlagByOnOffStrOrBasicAndErrMsg(value, basicValue, valueName)
	return value

}

;ファイルがあるか確認し、なかったらエラー表示するだけ
rwipluf_fileCheckIfNotExistErrorMsg(file, ErrMsg){

/*
	if( func_myFileNotExit(file) ){
		rwipluf_errorOutputWindowPlug(ErrMsg)
		return False
	}
	return True
*/

	if( func_myFileNotExit(file) ){
		rwipluf_errorOutputWindowPlug(ErrMsg)
		return False
	}
	return True

}

; リスト名を更新するときに使う
rwipluf_reloadListTitleWindowPlug(iniFile, dir, outList, GuiNum, loopCount){

/*
	outs_reloadListTitle(iniFile, dir, outList, GuiNum, loopCount)
*/

	ohwinpluf_reloadListTitle(iniFile, dir, outList, GuiNum, loopCount)

}

rwipluf_deleteAndMakeFileWindowPlug(file, parentFolder){

/*
	res := outs_deleteAndMakeFile(file, parentFolder)
	return res
*/

	res := ohwinpluf_deleteAndMakeFile(file, parentFolder)
	return res

}
