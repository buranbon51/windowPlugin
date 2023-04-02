

optwinplugf_appendStartUpStartUpBuff(append){
	glowi_startUpStartUpBuff .= append . "`n"
}

optwinplugf_startUpStartUpBuffOutput(){
	if(glowi_startUpStartUpBuff != ""){
		rwipluf_errorOutputWindowPlug(glowi_startUpStartUpBuff)
	}
}

optwinplugf_easyFileCheckMakeFolderAndFile(file, parentFolder, defaultStr=""){
	IfNotExist, %file%
	{
		type := FileExist(parentFolder)
		if(type == ""){
			FileCreateDir, %parentFolder%
		} else {
			IfNotInString, type, D
			{
				optwinplugf_appendStartUpStartUpBuff(parentFolder . "`nはフォルダ名ではない")
				return
			}
		}
		FileAppend , %defaultStr%, %file%
	}
}

optwinplugf_checkFileAndFolderMakeFolderAndFile(){
	defaultWord := "#設定をする。何も記入しなければ初期値を使用する。`n#fontSize=12`n#fontSizeSmall=10`n#fontSizeTab=10`n#fontName=`n"
	optwinplugf_easyFileCheckMakeFolderAndFile(glowire_userDirCommon . glowi_optionTxtFileName, glowire_userDirCommon . glowi_userWindowPlugDirName, defaultWord)
}

; 指定した文字の 右の文字を返す。なければ 空の文字を返す
optwinplugf_rightStrOrNullFromSearchStr(str, searchStr){
	IfNotInString, str, %searchStr%
	{
		return  ""
	}
	StringGetPos, count, str, %searchStr%
	StringLen, length, searchStr
	count += length
	StringTrimLeft, rStr , str, %count%
	rStr  := Trim(rStr )
	return  rStr 
}

; 指定した文字の 左の文字を返す。なければ 空の文字を返す
optwinplugf_leftStrOrNullFromSearchStr(str, searchStr){
	IfNotInString, str, %searchStr%
	{
		return  ""
	}
	StringGetPos, count, str, %searchStr%
	StringLeft, leftStr, str, %count%
	leftStr := Trim(leftStr)
	return  leftStr
}

optwinplugf_fontSizeOptionSet(oneLineText, basicValue){
	rightStr := optwinplugf_rightStrOrNullFromSearchStr(oneLineText, "=")
	if(rightStr == ""){
		rightStr = %basicValue%
	}
	If rightStr is integer
	{
		if(rightStr <= 0){
			optwinplugf_appendStartUpStartUpBuff("WindowPlugのフォントサイズのエラー`n0 以下の値になっているのでエラー`n" . oneLineText . "`n")
			rightStr = %basicValue%
		} else if(rightStr >= 51){
			optwinplugf_appendStartUpStartUpBuff("WindowPlugのフォントサイズのエラー`n数字が大きすぎるのでエラーにする`n" . oneLineText . "`n")
			rightStr = %basicValue%
		}
		return rightStr
	}
	optwinplugf_appendStartUpStartUpBuff("WindowPlugのフォントサイズのエラー`n数字以外が指定されているのでエラー`n" . oneLineText . "`n")
	rightStr = %basicValue%
	return rightStr
}

optwinplugf_optionSettingAny(oneLineText, fromTxtFlag){
	leftStr := optwinplugf_leftStrOrNullFromSearchStr(oneLineText, "=")
	if(leftStr == ""){

	} else {
		StringLower, leftStr, leftStr
		if(leftStr == "fontsize"){
			glowi_fontSize := optwinplugf_fontSizeOptionSet(oneLineText, 12)
		} else if(leftStr == "fontsizesmall"){
 			glowi_fontSizeSmall := optwinplugf_fontSizeOptionSet(oneLineText, 10)
		} else if(leftStr == "fontsizetab"){
 			glowi_fontSizeTab := optwinplugf_fontSizeOptionSet(oneLineText, 10)
		} else if(leftStr == "fontname"){
			glowire_fontNameAll := optwinplugf_rightStrOrNullFromSearchStr(oneLineText, "=")
			glowire_fontNameAll := Trim(glowire_fontNameAll)
		} else {
			errorMsg := "WindowPlugのエラー`n使用できないオプションがある`n"
			optwinplugf_appendStartUpStartUpBuff(errorMsg . oneLineText)
		}
	}
}

optwinplugf_optionSettingFromTxtFile(){
	comment := "#"		; コメントの文字
	loopCount = 0

	IfNotExist, %glowire_userDirCommon%%glowi_optionTxtFileName%
	{
		return
	}

	Loop, Read, %glowire_userDirCommon%%glowi_optionTxtFileName%
	{
		; 現時点では 5 回までのループ
		if(loopCount >= 5){
			break
		}

		oneLineText := Trim(A_LoopReadLine)
		if(oneLineText != ""){
			StringLeft, leftChar, oneLineText, 1
			if(leftChar != comment){		; # が左にあったらコメント扱い
				loopCount++
				optwinplugf_optionSettingAny(oneLineText, True)
			}
		}
	}
}
