

guwiplugf_cleatedDateWindowPlug(){

	version := "v1.00"
	cleatedDate := "2026年2月3日"
	softName := "WindowPlug"
	message := "`nプラグイン名　　：　" . softName . "`nバージョン　：　" . version . "`n作成日　　 ：　" . cleatedDate . "`n作者　　　　：　ブランボン`n"

	func_msgBoxOnlyOk(message, "バージョン情報")
}

guwiplugf_hideGui41(){
	Gui, 41:Hide
	Gui, 42:Hide
	Gui, 43:Hide
	Gui, 44:Hide
	WinWaitNotActive, %glowi_winTitleEntryWin%, ,1
	WinWaitNotActive, %glowi_winTitleSize%, ,1
	WinWaitNotActive, %glowi_winTitlePos%, ,1
	WinWaitNotActive, %glowi_winTitlePosSize%, ,1
}

guwiplugf_entryWindowMinimize(){
	IfWinExist , %glowi_winTitleEntryWin%
	{
		Gui, 41:Minimize
		WinWaitNotActive, %glowi_winTitleEntryWin%, ,1
	}
}

guwiplugf_getNumFromDpiWin(lessThan110, lessThan140, moreThan140){
	if(glowire_dpiNum <= 110){
		return lessThan110
	} else if(glowire_dpiNum <= 140){
		return lessThan140
	} else if(glowire_dpiNum >= 140){
		return moreThan140
	}
	return lessThan110
}

; 設定したフォントのサイズとDPI（PCの解像度）によって、取得する値が変えられる。
guwiplugf_getFontNumFromDpiAndOptionWin(lessThan110, lessThan140, moreThan140){
	plus = 0
	if(glowire_fontSizeAllOption == 1){
		plus := -3
	} else if(glowire_fontSizeAllOption == 2){
		plus := -2
	} else if(glowire_fontSizeAllOption == 3){
		plus := -1
	} else if(glowire_fontSizeAllOption == 5){
		plus := 1
	} else if(glowire_fontSizeAllOption == 6){
		plus := 2
	} else if(glowire_fontSizeAllOption == 7){
		plus := 3
	} else if(glowire_fontSizeAllOption == 8){
		plus := 4
	}
	lessThan110 += plus
	lessThan140 += plus
	moreThan140 += plus
	returnValue := guwiplugf_getNumFromDpiWin(lessThan110, lessThan140, moreThan140)
	return returnValue
}

guwiplugf_initGui41(){
	posX := glowire_maxWinWidth - 300
	Gui, 41:Show, Hide x%posX% y33   AutoSize , %glowi_winTitleEntryWin%
}

guwiplugf_initGui42(){
	posX := glowire_maxWinWidth - 540
	Gui, 42:Show, Hide x%posX% y30 AutoSize, %glowi_winTitleSize%
}

guwiplugf_initGui43(){
	posX := glowire_maxWinWidth - 540
	Gui, 43:Show, Hide x%posX% y30 AutoSize, %glowi_winTitlePos%
}

guwiplugf_initGui44(){
	posX := glowire_maxWinWidth - 540
	Gui, 44:Show, Hide x%posX% y30 AutoSize, %glowi_winTitlePosSize%
}
