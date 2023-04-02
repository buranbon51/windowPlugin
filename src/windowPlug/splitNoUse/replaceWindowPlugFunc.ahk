
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
	if(A_Gui != ""){
		edi_hideOrMinimizeGuiTextPattern(A_Gui, True, False, False)
		windc_anyWaitActive()
	}
	; リサイズする
	windc_winRestoreIfwinMaxSize("A")

}

; A が指定されてたら、実行元テキストを隠す
rwipluf_beforeWindowControlIfA(winTitle){

/*
	edi_hideOrMinimizeGuiTextPatternWinIfA(winTitle)
	; リサイズする
	windc_winRestoreIfwinMaxSize(winTitle)
*/

	if(winTitle == "A"){
		guwiplugf_entryWindowMinimize()
		if(A_Gui != ""){
			edi_hideOrMinimizeGuiTextPattern(A_Gui, True, False, False)
			windc_anyWaitActive()
		}
	}
	; リサイズする
	windc_winRestoreIfwinMaxSize(winTitle)

}

; エラーメッセージ表示用
rwipluf_errorOutputWindowPlug(errorMessage){

/*
	guit_errorAppend(errorMessage)
*/

	guit_errorAppend(errorMessage)

}

; 簡単な説明表示用
rwipluf_easyExplainWindowPlug(str){

/*
	CoordMode, ToolTip, Relative
	timf_toolTipFunc(str, 30, 350, 3)

	guit_setExplain(str, 71)
*/

	guit_setExplain(str, 71)

}

rwipluf_checkErrorLevelOutput(append){

/*
	res := guit_checkErrorLevelOutput(append)
	return res
*/

	res := guit_checkErrorLevelOutput(append)
	return res

}

; value が範囲内の数字かどうか確認する
rwipluf_getWithinNumOrBasicAndErrMsg(value, basicValue, min, max, valueName){
/*
	value := outs_getWithinNumOrBasicAndErrMsg(value, basicValue, min, max, valueName)
	return value
*/

	value := outs_getWithinNumOrBasicAndErrMsg(value, basicValue, min, max, valueName)
	return value

}

; value が True か False かを確認
rwipluf_getFlagByOnOffStrOrBasicAndErrMsg(value, basicValue, valueName){
/*
	value := outs_getFlagByOnOffStrOrBasicAndErrMsg(value, basicValue, valueName)
	return value
*/

	value := outs_getFlagByOnOffStrOrBasicAndErrMsg(value, basicValue, valueName)
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

	outs_reloadListTitle(iniFile, dir, outList, GuiNum, loopCount)

}

rwipluf_deleteAndMakeFileWindowPlug(file, parentFolder){

/*
	res := outs_deleteAndMakeFile(file, parentFolder)
	return res
*/

	res := outs_deleteAndMakeFile(file, parentFolder)
	return res

}
