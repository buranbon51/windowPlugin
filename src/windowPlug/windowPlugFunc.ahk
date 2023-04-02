; 必須 glob  func  guf







;ウインドウの位置とサイズを変更し、TempのIniファイルに元の位置を保存する
;なお、最初にあったデータのみ保存する
wind_winPosSizeChange(x, y, Width, Height, TitleVar, posAbsole=1, sizeAbsole=1){
	windc_winRestoreIfwinMaxSize(TitleVar)
	WinGetPos XVar, YVar, WidthVar, HeightVar, %TitleVar%

	if(WidthVar != "")		;タイトルで指定したのが見つかった場合
	{
		; タイトルを ahk_class などで指定してた場合の対処
		WinGetTitle, TitleVar , %TitleVar%
		if(posAbsole == 1 && sizeAbsole == 1) {
			WinMove, %TitleVar% , , %x%, %y% , %Width%, %Height%
		} else if ( posAbsole == 1 ) {
			relativWidth := WidthVar + Width
			relativHeight := HeightVar + Height
			WinMove, %TitleVar% , , %x%, %y% , %relativWidth%, %relativHeight%
		} else if ( sizeAbsole == 1) {
			relativX := XVar + x
			relativY := YVar + y
			WinMove, %TitleVar% , , %relativX%, %relativY% , %Width%, %Height%
		} else {
			relativWidth := WidthVar + Width
			relativHeight := HeightVar + Height
			relativX := XVar + x
			relativY := YVar + y
			WinMove, %TitleVar% , , %relativX%, %relativY% , %relativWidth%, %relativHeight%
		}

		WinGetClass, ClassVar, %TitleVar%
		WinGetTitle, allTextTitle, ahk_class %ClassVar%
		classTitleVar := ClassVar . allTextTitle
		tmpWinPosSizeIni := glowire_userDirCommon . glowi_tmpWinPosSizeBackupIniName
		func_folderCheckMakeFolder(glowire_userDirCommon . glowi_userWindowPlugDirName)
		IniRead, outWidth, %tmpWinPosSizeIni%, %classTitleVar%, beforeWidth , 0
		if(outWidth == 0) {
			IniWrite, %WidthVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeWidth
			IniWrite, %HeightVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeHeight
			IniWrite, %XVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeX
			IniWrite, %YVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeY
		}
	}
}

; もし　タイトルがAなら待機させる
wind_myWindowPosSizeChange(x, y, Width, Height, TitleVar="A", posAbsole=1, sizeAbsole=1) {
	if(TitleVar == ""){
		TitleVar := "A"
	}
	windc_titleIfA(TitleVar)
	wind_winPosSizeChange(x, y, Width, Height, TitleVar, posAbsole, sizeAbsole)
}

;ウインドウのサイズのみを変更し、TempのIniファイルに元の位置を保存する
;なお、最初にあったデータのみ保存する
wind_winSizeChange(Width, Height, TitleVar, sizeAbsole=1){
	windc_winRestoreIfwinMaxSize(TitleVar)
	WinGetPos XVar, YVar, WidthVar, HeightVar, %TitleVar%

	if(WidthVar != "")		;タイトルで指定したのが見つかった場合
	{
		; タイトルを ahk_class などで指定してた場合の対処
		WinGetTitle, TitleVar , %TitleVar%
		if(sizeAbsole == 1) {
			WinMove, %TitleVar%, , %XVar%, %YVar% , %Width%, %Height%
		} else {
			relativWidth := WidthVar + Width
			relativHeight := HeightVar + Height
			WinMove, %TitleVar%, , %XVar%, %YVar% , %relativWidth%, %relativHeight%
		}

		WinGetClass, ClassVar, %TitleVar%
		WinGetTitle, allTextTitle, ahk_class %ClassVar%
		classTitleVar := ClassVar . allTextTitle
		tmpWinPosSizeIni := glowire_userDirCommon . glowi_tmpWinPosSizeBackupIniName
		func_folderCheckMakeFolder(glowire_userDirCommon . glowi_userWindowPlugDirName)
		IniRead, outWidth, %tmpWinPosSizeIni%, %classTitleVar%, beforeWidth , 0
		if(outWidth == 0) {
			IniWrite, %WidthVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeWidth
			IniWrite, %HeightVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeHeight
			IniWrite, %XVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeX
			IniWrite, %YVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeY
		}
	}
}

; もし　タイトルがAなら0.3秒待機させる
wind_myWindowSizeChange(Width, Height, TitleVar="A", sizeAbsole=1){
	if(TitleVar == ""){
		TitleVar := "A"
	}
	windc_titleIfA(TitleVar)
	wind_winSizeChange(Width, Height, TitleVar, sizeAbsole)
}

;ウインドウの位置のみ変更し、TempのIniファイルに元の位置を保存する
;なお、最初にあったデータのみ保存する
wind_winPosChange(x, y, TitleVar, posAbsole=1){
	windc_winRestoreIfwinMaxSize(TitleVar)
	WinGetPos XVar, YVar, WidthVar, HeightVar, %TitleVar%

	if(WidthVar != "")		;タイトルで指定したのが見つかった場合
	{
		; タイトルを ahk_class などで指定してた場合の対処
		WinGetTitle, TitleVar , %TitleVar%
		if(posAbsole == 1) {
			WinMove, %TitleVar% , , %x%, %y% , %WidthVar%, %HeightVar%
		} else {
			relativX := XVar + x
			relativY := YVar + y
			WinMove, %TitleVar% , , %relativX%, %relativY% , %WidthVar%, %HeightVar%
		}

		WinGetClass, ClassVar, %TitleVar%
		WinGetTitle, allTextTitle, ahk_class %ClassVar%
		classTitleVar := ClassVar . allTextTitle
		tmpWinPosSizeIni := glowire_userDirCommon . glowi_tmpWinPosSizeBackupIniName
		func_folderCheckMakeFolder(glowire_userDirCommon . glowi_userWindowPlugDirName)
		IniRead, outWidth, %tmpWinPosSizeIni%, %classTitleVar%, beforeWidth , 0
		if(outWidth == 0) {
			IniWrite, %WidthVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeWidth
			IniWrite, %HeightVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeHeight
			IniWrite, %XVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeX
			IniWrite, %YVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeY
		}
	}
}

; もし　タイトルがAなら0.3秒待機させる
wind_myWindowPosChange(x, y, TitleVar="A", posAbsole=1){
	if(TitleVar == ""){
		TitleVar := "A"
	}
	windc_titleIfA(TitleVar)
	wind_winPosChange(x, y, TitleVar, posAbsole)
}

wind_guiHideAndWindowPosSizeChange(x, y, Width, Height, TitleVar="A", posAbsole=1, sizeAbsole=1){
	TitleVar := Trim(TitleVar)
	posSizeGuiFlag := False
	entryGuiFlag := False
	IfWinExist, %glowi_winTitlePosSize%
	{
		Gui, 44:Hide
		posSizeGuiFlag := True
		WinWaitNotActive, %glowi_winTitlePosSize%, ,1
	}

	IfWinExist, %glowi_winTitleEntryWin%
	{
		Gui, 41:Hide
		entryGuiFlag := True
		WinWaitNotActive, %glowi_winTitleEntryWin%, ,1
	}
	wind_myWindowPosSizeChange(x, y, Width, Height, TitleVar, posAbsole, sizeAbsole)
	WinActivate, %TitleVar%
	if( posSizeGuiFlag ){
		Gui, 44:Show
	}
	if( entryGuiFlag ){
		Gui, 41:Show
	}
}

wind_guiHideAndWindowSizeChange(Width, Height, TitleVar="A", sizeAbsole=1){
	TitleVar := Trim(TitleVar)
	sizeGuiFlag := False
	entryGuiFlag := False
	IfWinExist, %glowi_winTitleSize%
	{
		Gui, 42:Hide
		sizeGuiFlag := True
		WinWaitNotActive, %glowi_winTitleSize%, ,1
	}

	IfWinExist, %glowi_winTitleEntryWin%
	{
		Gui, 41:Hide
		entryGuiFlag := True
		WinWaitNotActive, %glowi_winTitleEntryWin%, ,1
	}
	wind_myWindowSizeChange(Width, Height, TitleVar, sizeAbsole)
	WinActivate, %TitleVar%
	if( sizeGuiFlag ){
		Gui, 42:Show
	}
	if( entryGuiFlag ){
		Gui, 41:Show
	}
}

wind_guiHideAndWindowPosChange(x, y, TitleVar="A", posAbsole=1){
	TitleVar := Trim(TitleVar)
	posGuiFlag := False
	entryGuiFlag := False
	IfWinExist, %glowi_winTitlePos%
	{
		Gui, 43:Hide
		posGuiFlag := True
		WinWaitNotActive, %glowi_winTitlePos%, ,1
	}

	IfWinExist, %glowi_winTitleEntryWin%
	{
		Gui, 41:Hide
		entryGuiFlag := True
		WinWaitNotActive, %glowi_winTitleEntryWin%, ,1
	}
	wind_myWindowPosChange(x, y, TitleVar, posAbsole)
	WinActivate, %TitleVar%
	if( posGuiFlag ){
		Gui, 43:Show
	}
	if( entryGuiFlag ){
		Gui, 41:Show
	}
}

;  ウインドウを変更する前に戻す。そしてTempにあるファイルのデータも消す
wind_myWindowToBefore(Title="A"){
	if(Title == "A"){
		;Sleep, 300
		windc_anyWaitActive()
	}
	; タイトルを ahk_class などで指定してた場合の対処
	WinGetTitle, TitleVar , %Title%
	WinRestore, %TitleVar%
	WinGetClass, ClassVar, %TitleVar%
	classTitleVar := ClassVar . TitleVar
	tmpWinPosSizeIni := glowire_userDirCommon . glowi_tmpWinPosSizeBackupIniName
	func_folderCheckMakeFolder(glowire_userDirCommon . glowi_userWindowPlugDirName)
	IniRead, outWidth, %tmpWinPosSizeIni%, %classTitleVar%, beforeWidth , 0
	if(outWidth == 0) {
		return
	} else {
		IniRead, outX, %tmpWinPosSizeIni%, %classTitleVar%, beforeX , 0
		IniRead, outY, %tmpWinPosSizeIni%, %classTitleVar%, beforeY , 0
		IniRead, outHeight, %tmpWinPosSizeIni%, %classTitleVar%, beforeHeight , 600

		WinMove, %TitleVar%, , %outX%, %outY% , %outWidth%, %outHeight%

		IniDelete, %tmpWinPosSizeIni%, %classTitleVar%
	}
}

wind_windowMaxOrResize(winTitle){
	if( func_isWindowMaxSize(winTitle) ){
		WinRestore, %winTitle%
		return
	}
	WinMaximize, %winTitle%
}

wind_AssiSize(winTitle, absoleFlag){
	windc_titleIfA(winTitle)
	windc_winRestoreIfwinMaxSize(winTitle)
	windc_anyWaitActive()
	WinGetActiveTitle, varTitle
	varTitle := Trim(varTitle)
	if( absoleFlag ){
		WinGetPos , varX, varY, varWidth, varHeight, %varTitle%
		GuiControl,42: , Edit42_1, %varWidth%
		GuiControl,42: , Edit42_2, %varHeight%
		GuiControl,42: , Radio42_1, 1
	} else {
		GuiControl,42: , Edit42_1, 0
		GuiControl,42: , Edit42_2, 0
		GuiControl,42: , Radio42_2, 1
	}
	GuiControl,42:Focus , Edit42_1
	GuiControl,42: , Edit42_3, %varTitle%
	guf_showGuiAssign(42)
}

wind_AssiPos(winTitle, absoleFlag){
	windc_titleIfA(winTitle)
	windc_winRestoreIfwinMaxSize(winTitle)
	windc_anyWaitActive()
	WinGetActiveTitle, varTitle
	varTitle := Trim(varTitle)
	if( absoleFlag ){
		WinGetPos , varX, varY, Width, Height, %varTitle%
		GuiControl,43: , Edit43_1, %varX%
		GuiControl,43: , Edit43_2, %varY%
		GuiControl,43: , Radio43_1, 1
	} else {
		GuiControl,43: , Edit43_1, 0
		GuiControl,43: , Edit43_2, 0
		GuiControl,43: , Radio43_2, 1
	}
	GuiControl,43:Focus , Edit43_1
	GuiControl,43: , Edit43_3, %varTitle%
	guf_showGuiAssign(43)
}

wind_AssiSizePos(winTitle, absoleFlag){
	windc_titleIfA(winTitle)
	windc_winRestoreIfwinMaxSize(winTitle)
	windc_anyWaitActive()
	WinGetActiveTitle, varTitle
	varTitle := Trim(varTitle)
	if( absoleFlag ){
		WinGetPos , varX, varY, varWidth, varHeight, %varTitle%
		GuiControl,44: , Edit44_1, %varX%
		GuiControl,44: , Edit44_2, %varY%
		GuiControl,44: , Edit44_3, %varWidth%
		GuiControl,44: , Edit44_4, %varHeight%
		GuiControl,44: , Radio44_1, 1
		GuiControl,44: , Radio44_3, 1
	} else {
		GuiControl,44: , Edit44_1, 0
		GuiControl,44: , Edit44_2, 0
		GuiControl,44: , Edit44_3, 0
		GuiControl,44: , Edit44_4, 0
		GuiControl,44: , Radio44_2, 1
		GuiControl,44: , Radio44_4, 1
	}
	GuiControl,44:Focus , Edit44_1
	GuiControl,44: , Edit44_5, %varTitle%
	guf_showGuiAssign(44)
}

wind_showMacroPos(){
	GuiControl, 41:Choose, Tab41_1 , 3
	Gui, 41:Show
}

wind_showMacroSize(){
	GuiControl, 41:Choose, Tab41_1 , 2
	Gui, 41:Show
}

wind_showMacroPosSize(){
	GuiControl, 41:Choose, Tab41_1 , 1
	Gui, 41:Show
}

wind_winPosSizeEntry(x1, y1, x2, y2, Screen, Screen_2, Title, setNum, listName) {
	Gui, 44:Show, NA
	MsgBox, 4097, 位置とサイズの登録の確認, 今表示している位置とサイズの情報を`nset%setNum% に上書きします。`nよろしいですか?, 60
	IfMsgBox, OK
	{
		wind_winPosSizeIniFileWrite(x1, y1, x2, y2, Screen, Screen_2, Title, setNum, listName)
	}
}

wind_winPosSizeIniFileWrite(x1, y1, x2, y2, Screen, Screen_2, Title, setNum, listName) {
	setName := "set" . setNum
	listName := Trim(listName)
	Title := Trim(Title)
	if(Title == ""){
		Title = A
	}
	winPosSizeIni := glowire_userDirCommon . glowi_winPosSizeIniName
	func_folderCheckMakeFolder(glowire_userDirCommon . glowi_userWindowPlugDirName)
	MsgBox, 4100, 2つめの確認, ウインドウのタイトルを指定して登録しません。`nよろしい?`nYes  指定しない`nNo タイトル指定, 60
	IfMsgBox, No
	{
		IniWrite, %Title%, %winPosSizeIni%, %setName%, winTitle
	} else {
		IniWrite, A, %winPosSizeIni%, %setName%, winTitle
	}
	IniWrite, %x1%, %winPosSizeIni%, %setName%, formX
	IniWrite, %y1%, %winPosSizeIni%, %setName%, formY
	IniWrite, %x2%, %winPosSizeIni%, %setName%, toX
	IniWrite, %y2%, %winPosSizeIni%, %setName%, toY
	IniWrite, %Screen%, %winPosSizeIni%, %setName%, ScreenNum
	IniWrite, %Screen_2%, %winPosSizeIni%, %setName%, ScreenNum_2
	IniWrite, %listName%, %winPosSizeIni%, %setName%, listTitle
	; リスト名を　__listTitle　のカテゴリーに保存
	IniWrite, %listName%, %winPosSizeIni%, __listTitle, titleName%setNum%

	res := rwipluf_checkErrorLevelOutput("保存のエラー")
	if(res) {
		rwipluf_easyExplainWindowPlug(setName . " にウインドウの位置とサイズを登録")
	}

	;リストを更新
	rwipluf_reloadListTitleWindowPlug(winPosSizeIni, glowire_userDirCommon . glowi_userWindowPlugDirName, "List41_1", 41, 20)
	;今のリストを選択状態に
	guf_GuiControl("List41_1", 41, "Choose", setNum)
	rwipluf_checkErrorLevelOutput("リスト の更新時にエラーあり")
}

wind_winPosSizeIniFileWriteFromCommand(posX, posY, width, height, posAbsoleFlag, sizeAbsoleFlag, useWinTitle, listNumber, listName){
	listNumber := rwipluf_getWithinNumOrBasicAndErrMsg(listNumber, "1", "0", 101, "listNumber")
	posX := rwipluf_getWithinNumOrBasicAndErrMsg(posX, 100, -1000, 10000, "横の位置の変数")
	posY := rwipluf_getWithinNumOrBasicAndErrMsg(posY, 100, -1000, 5000, "縦の位置の変数")
	width := rwipluf_getWithinNumOrBasicAndErrMsg(width, 500, -1, 5000, "横幅の変数")
	height := rwipluf_getWithinNumOrBasicAndErrMsg(height, 400, -1, 5000, "高さの変数")
	posAbsoleFlag := rwipluf_getFlagByOnOffStrOrBasicAndErrMsg(posAbsoleFlag, True, "posAbsoleFlag")
	sizeAbsoleFlag := rwipluf_getFlagByOnOffStrOrBasicAndErrMsg(sizeAbsoleFlag, True, "sizeAbsoleFlag")

	setName := "set" . listNumber
	listName := Trim(listName)

	winPosSizeIni := glowire_userDirCommon . glowi_winPosSizeIniName
	func_folderCheckMakeFolder(glowire_userDirCommon . glowi_userWindowPlugDirName)

	IniWrite, %useWinTitle%, %winPosSizeIni%, %setName%, winTitle
	IniWrite, %posX%, %winPosSizeIni%, %setName%, formX
	IniWrite, %posY%, %winPosSizeIni%, %setName%, formY
	IniWrite, %width%, %winPosSizeIni%, %setName%, toX
	IniWrite, %height%, %winPosSizeIni%, %setName%, toY
	IniWrite, %posAbsoleFlag%, %winPosSizeIni%, %setName%, ScreenNum
	IniWrite, %sizeAbsoleFlag%, %winPosSizeIni%, %setName%, ScreenNum_2
	IniWrite, %listName%, %winPosSizeIni%, %setName%, listTitle
	; リスト名を　__listTitle　のカテゴリーに保存
	IniWrite, %listName%, %winPosSizeIni%, __listTitle, titleName%listNumber%

	res := rwipluf_checkErrorLevelOutput("保存のエラー")
	if(res) {
		rwipluf_easyExplainWindowPlug(setName . "にウインドウの位置とサイズを登録")
	}

	;リストを更新
	rwipluf_reloadListTitleWindowPlug(winPosSizeIni, glowire_userDirCommon . glowi_userWindowPlugDirName, "List41_1", 41, 20)
	;今のリストを選択状態に
	;guf_GuiControl("List41_1", 41, "Choose", listNumber)
	rwipluf_checkErrorLevelOutput("リスト の更新時にエラーあり")
	;guf_setControl( listName, "Edit41_1_1", 41 )
}

wind_activeWinPosSizeEntry(x1, y1, x2, y2, Screen, Screen_2, Title, setNum, listName) {
	MsgBox, 4097, 位置とサイズの登録の確認, 最前面のウインドウの`n位置とサイズの情報を`nset%setNum% に上書きします。`nよろしいですか?, 60
	IfMsgBox, OK
	{
		wind_winPosSizeIniFileWrite(x1, y1, x2, y2, Screen, Screen_2, Title, setNum, listName)
	}
}

wind_activeWinPosSizeEntryFromCommand(getWinTitle, useWinTitle, listNumber, listName){
	listNumber := rwipluf_getWithinNumOrBasicAndErrMsg(listNumber, "1", "0", 101, "listNumber")
	windc_winRestoreIfwinMaxSize(getWinTitle)
	WinGetPos , posX, posY, width, height, %getWinTitle%
	wind_winPosSizeIniFileWriteFromCommand(posX, posY, width, height, True, True, useWinTitle, listNumber, listName)
}

wind_semiMax(title){
	width := glowire_maxWinWidth - 40
	height := glowire_maxWinHeight - 32

	wind_myWindowPosSizeChange(5, 10, width, height, title, 1, 1)
}

wind_bunkatu2(typeNum, title){
	posX = 0
	posY = 0
	width := glowire_maxWinWidth - 16
	height := glowire_maxWinHeight - 6

	if(typeNum == 1){
		width := width // 2
	}else if(typeNum == 2){
		width := width // 2
		posX := width + 1
	}else if(typeNum == 3){
		height := height // 2
	}else if(typeNum == 4){
		height := height // 2
		posY := height + 1
	}

	wind_myWindowPosSizeChange(posX, posY, width, height, title, 1, 1)
}

wind_bunkatu3(typeNum, title){
	posX = 0
	posY = 0
	width := glowire_maxWinWidth - 16
	height := glowire_maxWinHeight - 6

	if(typeNum == 1){
		width := width // 3
	}else if(typeNum == 2){
		width := width // 3
		posX := width + 1
	}else if(typeNum == 3){
		width := width // 3
		posX := (width + 1) * 2
	}else if(typeNum == 4){
		height := height // 3
	}else if(typeNum == 5){
		height := height // 3
		posY := height + 1
	}else if(typeNum == 6){
		height := height // 3
		posY := (height + 1) * 2
	}

	wind_myWindowPosSizeChange(posX, posY, width, height, title, 1, 1)
}

wind_bunkatu4(typeNum, title){
	posX = 0
	posY = 0
	width := glowire_maxWinWidth - 16
	width := width // 2
	height := glowire_maxWinHeight - 6
	height := height // 2
	if(typeNum == 2){
		posY := height + 1
	}else if(typeNum == 3){
		posX := width + 1
	}else if(typeNum == 4){
		posX := width + 1
		posY := height + 1
	}
	wind_myWindowPosSizeChange(posX, posY, width, height, title, 1, 1)
}

wind_SizeMaxEdge(typeNum, title){
	custX = 0
	custY = 0
	custWidth = 0
	custHeight = 0
	windc_titleIfA(title)
	WinRestore, %title%
	WinGetPos, X, Y, Width, Height, %title%
	if(typeNum == 1){
		custY := Y
		custHeight := Height
		custWidth := X + Width
	} else if(typeNum == 2){
		custX := X
		custY := Y
		custHeight := Height

		SysGet,screenX,61
		custWidth := screenX - X - 16
	} else if(typeNum == 3){
		custX := X
		custWidth := Width
		custHeight := Y + Height
	} else if(typeNum == 4){
		custX := X
		custY := Y
		custWidth := Width

		SysGet,screenY,62
		custHeight := screenY - Y - 12
	}
	wind_winPosSizeChange(custX, custY, custWidth, custHeight, title)
}


wind_sizeBunkatu4(title){
	SysGet,screenX,61
	SysGet,screenY,62

	posX := screenX - 16
	posX := posX // 2
	posY := screenY - 6
	posY := posY // 2
	
	wind_myWindowSizeChange(posX, posY, title, 1)
}

; 端っこに移動
wind_PosMaxEdge(typeNum, title){
	windc_titleIfA(title)
	WinRestore, %title%
	WinGetPos, X, Y, Width, Height, %title%

	custX = 0
	custY = 0

	title := Trim(title)

	if(typeNum == 1){
		custY := Y
	}else if(typeNum == 2){
		SysGet,screenX,61
		custX := screenX - Width - 16
		custY := Y
	}else if(typeNum == 3){
		custX := X
	}else if(typeNum == 4){
		SysGet,screenY,62
		custX := X
		custY := screenY - Height - 12
	}else if(typeNum == 5){

	}else if(typeNum == 6){
		SysGet,screenY,62
		custY := screenY - Height - 12
	}else if(typeNum == 7){
		SysGet,screenX,61
		custX := screenX - Width - 16
	}else {
		SysGet,screenX,61
		SysGet,screenY,62
		custX := screenX - Width - 16
		custY := screenY - Height - 12
	}

	wind_winPosChange(custX, custY, title)
}

wind_sizePosMaxUD(title){
	windc_titleIfA(title)
	WinRestore, %title%
	WinGetPos, X, Y, Width, Height, %title%
	SysGet,screenY,62				;タスクバー分も計算する
	custHeight := screenY - 12
	wind_winPosSizeChange(X, 0, Width, custHeight, title)
}

wind_sizePosMaxLR(title){
	windc_titleIfA(title)
	WinRestore, %title%
	WinGetPos, X, Y, Width, Height, %title%
	SysGet,screenX,61
	custWidth := screenX - 16
	wind_winPosSizeChange(0, Y, custWidth, Height, title)
}


wind_posCustamCenter(title){
	windc_titleIfA(title)
	WinRestore, %title%
	WinGetPos, X, Y, Width, Height, %title%
	herfX := (A_ScreenWidth - Width) // 2
	herfY := (A_ScreenHeight - Height) //2
	wind_winPosChange(herfX, herfY, title)
}

wind_iniReadToGlobal(setName, iniFile, fromFlag=False, Screen2Flage=False) {
	if(fromFlag) {
		IniRead, glowi_windowX2,   %iniFile%, %setName%, formX , 100
		IniRead, glowi_windowY2,   %iniFile%, %setName%, formY , 100
	}
	IniRead, glowi_windowX1,     %iniFile%, %setName%, toX , 200
	IniRead, glowi_windowY1,     %iniFile%, %setName%, toY , 200
	IniRead, glowi_windowScreenNum, %iniFile%, %setName%, ScreenNum , 1
	if(Screen2Flage) {
		IniRead, glowi_windowScreenNum_2, %iniFile%, %setName%, ScreenNum_2 , 1
	}
	IniRead, glowi_windowWinTitle,%iniFile%, %setName%, winTitle , A
}

wind_winPosSizeLoad(setNum){
	MsgBox, 4097, 読み込みの確認, 今の状態を変更します。`nよろしいですか?, 60
	IfMsgBox, OK
	{
		setName := "set" . setNum
		winPosSizeIni := glowire_userDirCommon . glowi_winPosSizeIniName
		res := rwipluf_fileCheckIfNotExistErrorMsg(winPosSizeIni, "保存してあるファイルが見つからない。`nウインドウ位置とサイズ保存ファイル")
		if( res == False ){
			return
		}
		wind_iniReadToGlobal(setName, winPosSizeIni, True, True)
		guf_setControl( glowi_windowX2, "Edit44_1", 44 )
		guf_setControl( glowi_windowY2, "Edit44_2", 44 )
		guf_setControl( glowi_windowX1, "Edit44_3", 44 )
		guf_setControl( glowi_windowY1, "Edit44_4", 44 )

		guf_switchRadio2Pattern(glowi_windowScreenNum ,"Radio44_1", "Radio44_2", 44)
		guf_switchRadio2Pattern(glowi_windowScreenNum ,"Radio44_3", "Radio44_4", 44)

		guf_setControl( glowi_windowWinTitle, "Edit44_5", 44 )
		IniRead, varListTitle,%winPosSizeIni%, %setName%, listTitle , %A_Space%
		guf_setControl( varListTitle, "Edit41_1_1", 41 )
		Gui, 44:Show, NA
	}
}

wind_winPosSizeLoadFromCommand(listNumber){
	listNumber := rwipluf_getWithinNumOrBasicAndErrMsg(listNumber, "1", "0", 101, "listNumber")

	setName := "set" . listNumber
	winPosSizeIni := glowire_userDirCommon . glowi_winPosSizeIniName
	res := rwipluf_fileCheckIfNotExistErrorMsg(winPosSizeIni, "保存してあるファイルが見つからない。`nウインドウ位置とサイズ保存ファイル")
	if( res == False ){
		return
	}
	wind_iniReadToGlobal(setName, winPosSizeIni, True, True)
	guf_setControl( glowi_windowX2, "Edit44_1", 44 )
	guf_setControl( glowi_windowY2, "Edit44_2", 44 )
	guf_setControl( glowi_windowX1, "Edit44_3", 44 )
	guf_setControl( glowi_windowY1, "Edit44_4", 44 )

	guf_switchRadio2Pattern(glowi_windowScreenNum ,"Radio44_1", "Radio44_2", 44)
	guf_switchRadio2Pattern(glowi_windowScreenNum ,"Radio44_3", "Radio44_4", 44)

	guf_setControl( glowi_windowWinTitle, "Edit44_5", 44 )
	IniRead, varListTitle,%winPosSizeIni%, %setName%, listTitle , %A_Space%
	guf_setControl( varListTitle, "Edit41_1_1", 41 )
	guf_GuiControl("List41_1", 41, "Choose", listNumber)
	Gui, 44:Show, NA
}

wind_winPosSizeExecute(setNum, posX, posY, width, height, winTitle, posAbsoleStr, sizeAbsoleStr){
	setName := "set" . setNum
	winPosSizeIni := glowire_userDirCommon . glowi_winPosSizeIniName
	res := rwipluf_fileCheckIfNotExistErrorMsg(winPosSizeIni, "保存してあるファイルが見つからない。`nウインドウ位置とサイズ保存ファイル")
	if( res == False ){
		return
	}
	wind_iniReadToGlobal(setName, winPosSizeIni, True, True)
	if( posX == "" ){
		posX = %glowi_windowX2%
	}
	if( posY == "" ){
		posY = %glowi_windowY2%
	}
	if( width == "" ){
		width = %glowi_windowX1%
	}
	if( height == "" ){
		height = %glowi_windowY1%
	}
	if( winTitle == "" ){
		winTitle := glowi_windowWinTitle
	}
	posAbsoleFlag = 1
	sizeAbsoleFlag = 1
	if( posAbsoleStr == "" ){
		posAbsoleFlag = %glowi_windowScreenNum%
	} else {
		posAbsoleFlag := rwipluf_getFlagByOnOffStrOrBasicAndErrMsg(posAbsoleStr, True, "posAbsoleFlag")
	}
	if( sizeAbsoleStr == "" ){
		sizeAbsoleFlag = %glowi_windowScreenNum_2%
	} else {
		sizeAbsoleFlag := rwipluf_getFlagByOnOffStrOrBasicAndErrMsg(sizeAbsoleStr, True, "sizeAbsoleFlag")
	}
	posX := rwipluf_getWithinNumOrBasicAndErrMsg(posX, 100, -1000, 10000, "横の位置の変数")
	posY := rwipluf_getWithinNumOrBasicAndErrMsg(posY, 100, -1000, 5000, "縦の位置の変数")
	width := rwipluf_getWithinNumOrBasicAndErrMsg(width, 500, -1, 5000, "横幅の変数")
	height := rwipluf_getWithinNumOrBasicAndErrMsg(height, 400, -1, 5000, "高さの変数")

	wind_guiHideAndWindowPosSizeChange(posX, posY, width, height, winTitle, posAbsoleFlag, sizeAbsoleFlag)
}

wind_winSizeEntry(x2, y2, Screen,Title, setNum, listName) {
	Gui, 42:Show, NA
	MsgBox, 4097, サイズの登録の確認, 今表示している位置情報を`nset%setNum% に上書きします。`nよろしいですか?, 60
	IfMsgBox, OK
	{
		wind_winSizeIniFileWrite(x2, y2, Screen,Title, setNum, listName)
	}
}

wind_winSizeIniFileWrite(x2, y2, Screen,Title, setNum, listName) {
	setName := "set" . setNum
	listName := Trim(listName)
	Title := Trim(Title)
	if(Title == ""){
		Title = A
	}
	winSizeIni := glowire_userDirCommon . glowi_winSizeIniName
	func_folderCheckMakeFolder(glowire_userDirCommon . glowi_userWindowPlugDirName)
	MsgBox, 4100, 2つめの確認, ウインドウのタイトルを指定して登録しません。`nよろしい?`nYes  指定しない`nNo タイトル指定, 60
	IfMsgBox, No
	{
		IniWrite, %Title%, %winSizeIni%, %setName%, winTitle
	} else {
		IniWrite, A, %winSizeIni%, %setName%, winTitle
	}
	IniWrite, %x2%, %winSizeIni%, %setName%, toX
	IniWrite, %y2%, %winSizeIni%, %setName%, toY
	IniWrite, %Screen%, %winSizeIni%, %setName%, ScreenNum
	IniWrite, %listName%, %winSizeIni%, %setName%, listTitle
	; リスト名を　__listTitle　のカテゴリーに保存
	listName := Trim(listName)
	IniWrite, %listName%, %winSizeIni%, __listTitle, titleName%setNum%

	res := rwipluf_checkErrorLevelOutput("保存のエラー")
	if(res) {
		rwipluf_easyExplainWindowPlug(setName . " にウインドウのサイズを登録")
	}

	;リストを更新
	rwipluf_reloadListTitleWindowPlug(winSizeIni, glowire_userDirCommon . glowi_userWindowPlugDirName, "List41_2", 41, 20)
	;今のリストを選択状態に
	guf_GuiControl("List41_2", 41, "Choose", setNum)
	rwipluf_checkErrorLevelOutput("リスト の更新時にエラーあり")
}

wind_winSizeIniFileWriteFromCommand(width, height, absoleFlag, useWinTitle, listNumber, listName){
	listNumber := rwipluf_getWithinNumOrBasicAndErrMsg(listNumber, "1", "0", 101, "listNumber")
	width := rwipluf_getWithinNumOrBasicAndErrMsg(width, 500, -1, 5000, "横幅の変数")
	height := rwipluf_getWithinNumOrBasicAndErrMsg(height, 400, -1, 5000, "高さの変数")
	absoleFlag := rwipluf_getFlagByOnOffStrOrBasicAndErrMsg(absoleFlag, True, "absoleFlag")

	setName := "set" . listNumber
	listName := Trim(listName)

	winSizeIni := glowire_userDirCommon . glowi_winSizeIniName
	func_folderCheckMakeFolder(glowire_userDirCommon . glowi_userWindowPlugDirName)

	IniWrite, %useWinTitle%, %winSizeIni%, %setName%, winTitle
	IniWrite, %width%, %winSizeIni%, %setName%, toX
	IniWrite, %height%, %winSizeIni%, %setName%, toY
	IniWrite, %absoleFlag%, %winSizeIni%, %setName%, ScreenNum
	IniWrite, %listName%, %winSizeIni%, %setName%, listTitle
	; リスト名を　__listTitle　のカテゴリーに保存
	IniWrite, %listName%, %winSizeIni%, __listTitle, titleName%listNumber%

	res := rwipluf_checkErrorLevelOutput("保存のエラー")
	if(res) {
		rwipluf_easyExplainWindowPlug(setName . "にウインドウのサイズを登録")
	}

	;リストを更新
	rwipluf_reloadListTitleWindowPlug(winSizeIni, glowire_userDirCommon . glowi_userWindowPlugDirName, "List41_2", 41, 20)
	;今のリストを選択状態に
	;guf_GuiControl("List41_2", 41, "Choose", listNumber)
	rwipluf_checkErrorLevelOutput("リスト の更新時にエラーあり")
	;guf_setControl( listName, "Edit41_2_1", 41 )
}

wind_winSizeLoad(setNum){
	MsgBox, 4097, 読み込みの確認, 今の状態を変更します。`nよろしいですか?, 60
	IfMsgBox, OK
	{
		setName := "set" . setNum
		winSizeIni := glowire_userDirCommon . glowi_winSizeIniName
		res := rwipluf_fileCheckIfNotExistErrorMsg(winSizeIni, "保存してあるファイルが見つからない。`nウインドウサイズ保存ファイル")
		if( res == False ){
			return
		}
		wind_iniReadToGlobal(setName, winSizeIni, False, False)
		guf_setControl( glowi_windowX1, "Edit42_1", 42 )
		guf_setControl( glowi_windowY1, "Edit42_2", 42 )

		guf_switchRadio2Pattern(glowi_windowScreenNum ,"Radio42_1", "Radio42_2", 42)

		guf_setControl( glowi_windowWinTitle, "Edit42_3", 42 )
		IniRead, varListTitle,%winSizeIni%, %setName%, listTitle , %A_Space%
		guf_setControl( varListTitle, "Edit41_2_1", 41 )
		Gui, 42:Show, NA
	}
}

wind_winSizeLoadFromCommand(listNumber){
	listNumber := rwipluf_getWithinNumOrBasicAndErrMsg(listNumber, "1", "0", 101, "listNumber")

	setName := "set" . listNumber
	winSizeIni := glowire_userDirCommon . glowi_winSizeIniName
	res := rwipluf_fileCheckIfNotExistErrorMsg(winSizeIni, "保存してあるファイルが見つからない。`nウインドウサイズ保存ファイル")
	if( res == False ){
		return
	}
	wind_iniReadToGlobal(setName, winSizeIni, False, False)
	guf_setControl( glowi_windowX1, "Edit42_1", 42 )
	guf_setControl( glowi_windowY1, "Edit42_2", 42 )

	guf_switchRadio2Pattern(glowi_windowScreenNum ,"Radio42_1", "Radio42_2", 42)

	guf_setControl( glowi_windowWinTitle, "Edit42_3", 42 )
	IniRead, varListTitle,%winSizeIni%, %setName%, listTitle , %A_Space%
	guf_setControl( varListTitle, "Edit41_2_1", 41 )
	guf_GuiControl("List41_2", 41, "Choose", listNumber)
	Gui, 42:Show, NA
}

wind_winSizeExecute(setNum, width, height, winTitle, absoleStr) {
	setName := "set" . setNum
	winSizeIni := glowire_userDirCommon . glowi_winSizeIniName
	res := rwipluf_fileCheckIfNotExistErrorMsg(winSizeIni, "保存してあるファイルが見つからない。`nウインドウサイズ保存ファイル")
	if( res == False ){
		return
	}
	wind_iniReadToGlobal(setName, winSizeIni, False, False)
	if( width == "" ){
		width = %glowi_windowX1%
	}
	if( height == "" ){
		height = %glowi_windowY1%
	}
	if( winTitle == "" ){
		winTitle := glowi_windowWinTitle
	}
	absoleFlag = 1
	if( absoleStr == "" ){
		absoleFlag = %glowi_windowScreenNum%
	} else {
		absoleFlag := rwipluf_getFlagByOnOffStrOrBasicAndErrMsg(absoleStr, True, "absoleFlag")
	}
	width := rwipluf_getWithinNumOrBasicAndErrMsg(width, 500, -1, 5000, "横幅の変数")
	height := rwipluf_getWithinNumOrBasicAndErrMsg(height, 400, -1, 5000, "高さの変数")
	wind_guiHideAndWindowSizeChange(width, height, winTitle, absoleFlag)
}

wind_activeWinSizeEntry(x2, y2, Screen,Title, setNum, listName) {
	MsgBox, 4097, サイズの登録の確認, 最前面のウインドウの`nサイズの情報を`nset%setNum% に上書きします。`nよろしいですか?, 60
	IfMsgBox, OK
	{
		wind_winSizeIniFileWrite(x2, y2, Screen,Title, setNum, listName)
	}
}

wind_activeWinSizeEntryFromCommand(getWinTitle, useWinTitle, listNumber, listName){
	listNumber := rwipluf_getWithinNumOrBasicAndErrMsg(listNumber, "1", "0", 101, "listNumber")
	windc_winRestoreIfwinMaxSize(getWinTitle)
	WinGetPos , posX, posY, width, height, %getWinTitle%
	wind_winSizeIniFileWriteFromCommand(width, height, True, useWinTitle, listNumber, listName)
}

wind_winPosEntry(x2, y2, Screen, Title, setNum, listName) {
	Gui, 43:Show, NA
	MsgBox, 4097, 位置の登録の確認, 今表示している位置情報を`nset%setNum% に上書きします。`nよろしいですか?, 60
	IfMsgBox, OK
	{
		wind_winPosIniFileWrite(x2, y2, Screen, Title, setNum, listName)
	}
}

wind_winPosIniFileWrite(x2, y2, Screen, Title, setNum, listName) {
	setName := "set" . setNum
	listName := Trim(listName)
	Title := Trim(Title)
	if(Title == ""){
		Title = A
	}
	winPosIni := glowire_userDirCommon . glowi_winPosIniName
	func_folderCheckMakeFolder(glowire_userDirCommon . glowi_userWindowPlugDirName)
	MsgBox, 4100, 2つめの確認, ウインドウのタイトルを指定して登録しません。`nよろしい?`nYes  指定しない`nNo タイトル指定, 60
	IfMsgBox, No
	{
		IniWrite, %Title%, %winPosIni%, %setName%, winTitle
	} else {
		IniWrite, A, %winPosIni%, %setName%, winTitle
	}
	IniWrite, %x2%, %winPosIni%, %setName%, toX
	IniWrite, %y2%, %winPosIni%, %setName%, toY
	IniWrite, %Screen%, %winPosIni%, %setName%, ScreenNum
	IniWrite, %listName%, %winPosIni%, %setName%, listTitle
	; リスト名を　__listTitle　のカテゴリーに保存
	listName := Trim(listName)
	IniWrite, %listName%, %winPosIni%, __listTitle, titleName%setNum%

	res := rwipluf_checkErrorLevelOutput("保存のエラー")
	if(res) {
		rwipluf_easyExplainWindowPlug(setName . " にウインドウの位置を登録")
	}

	;リストを更新
	rwipluf_reloadListTitleWindowPlug(winPosIni, glowire_userDirCommon . glowi_userWindowPlugDirName, "List41_3", 41, 20)
	;今のリストを選択状態に
	guf_GuiControl("List41_3", 41, "Choose", setNum)
	rwipluf_checkErrorLevelOutput("リスト の更新時にエラーあり")
}

wind_winPosIniFileWriteFromCommand(posX, posY, absoleFlag, useWinTitle, listNumber, listName){
	listNumber := rwipluf_getWithinNumOrBasicAndErrMsg(listNumber, "1", "0", 101, "listNumber")
	posX := rwipluf_getWithinNumOrBasicAndErrMsg(posX, 100, -1000, 10000, "横の位置の変数")
	posY := rwipluf_getWithinNumOrBasicAndErrMsg(posY, 100, -1000, 5000, "縦の位置の変数")
	absoleFlag := rwipluf_getFlagByOnOffStrOrBasicAndErrMsg(absoleFlag, True, "absoleFlag")

	setName := "set" . listNumber
	listName := Trim(listName)

	winPosIni := glowire_userDirCommon . glowi_winPosIniName
	func_folderCheckMakeFolder(glowire_userDirCommon . glowi_userWindowPlugDirName)

	IniWrite, %useWinTitle%, %winPosIni%, %setName%, winTitle
	IniWrite, %posX%, %winPosIni%, %setName%, toX
	IniWrite, %posY%, %winPosIni%, %setName%, toY
	IniWrite, %absoleFlag%, %winPosIni%, %setName%, ScreenNum
	IniWrite, %listName%, %winPosIni%, %setName%, listTitle
	; リスト名を　__listTitle　のカテゴリーに保存

	IniWrite, %listName%, %winPosIni%, __listTitle, titleName%listNumber%

	res := rwipluf_checkErrorLevelOutput("保存のエラー")
	if(res) {
		rwipluf_easyExplainWindowPlug(setName . "にウインドウの位置を登録")
	}

	;リストを更新
	rwipluf_reloadListTitleWindowPlug(winPosIni, glowire_userDirCommon . glowi_userWindowPlugDirName, "List41_3", 41, 20)
	;今のリストを選択状態に
	;guf_GuiControl("List41_3", 41, "Choose", listNumber)
	rwipluf_checkErrorLevelOutput("リスト の更新時にエラーあり")
	;guf_setControl( listName, "Edit41_3_1", 41 )
}

wind_winPosLoad(setNum){
	MsgBox, 4097, 読み込みの確認, 今の状態を変更します。`nよろしいですか?, 60
	IfMsgBox, OK
	{
		setName := "set" . setNum
		winPosIni := glowire_userDirCommon . glowi_winPosIniName
		res := rwipluf_fileCheckIfNotExistErrorMsg(winPosIni, "保存してあるファイルが見つからない。`nウインドウ位置保存ファイル")
		if( res == False ){
			return
		}
		wind_iniReadToGlobal(setName, winPosIni, False, False)
		guf_setControl( glowi_windowX1, "Edit43_1", 43 )
		guf_setControl( glowi_windowY1, "Edit43_2", 43 )

		guf_switchRadio2Pattern(glowi_windowScreenNum ,"Radio43_1", "Radio43_2", 43)

		guf_setControl( glowi_windowWinTitle, "Edit43_3", 43 )
		IniRead, varListTitle,%winPosIni%, %setName%, listTitle , %A_Space%
		guf_setControl( varListTitle, "Edit41_3_1", 41 )
		Gui, 43:Show, NA
	}
}

wind_winPosLoadFromCommand(listNumber){
	listNumber := rwipluf_getWithinNumOrBasicAndErrMsg(listNumber, "1", "0", 101, "listNumber")

	setName := "set" . listNumber
	winPosIni := glowire_userDirCommon . glowi_winPosIniName
	res := rwipluf_fileCheckIfNotExistErrorMsg(winPosIni, "保存してあるファイルが見つからない。`nウインドウ位置保存ファイル")
	if( res == False ){
		return
	}
	wind_iniReadToGlobal(setName, winPosIni, False, False)
	guf_setControl( glowi_windowX1, "Edit43_1", 43 )
	guf_setControl( glowi_windowY1, "Edit43_2", 43 )

	guf_switchRadio2Pattern(glowi_windowScreenNum ,"Radio43_1", "Radio43_2", 43)

	guf_setControl( glowi_windowWinTitle, "Edit43_3", 43 )
	IniRead, varListTitle,%winPosIni%, %setName%, listTitle , %A_Space%
	guf_setControl( varListTitle, "Edit41_3_1", 41 )
	guf_GuiControl("List41_3", 41, "Choose", listNumber)
	Gui, 43:Show, NA
}

wind_winPosExecute(setNum, posX, posY, winTitle, absoleStr){
	setName := "set" . setNum
	winPosIni := glowire_userDirCommon . glowi_winPosIniName
	res := rwipluf_fileCheckIfNotExistErrorMsg(winPosIni, "保存してあるファイルが見つからない。`nウインドウ位置保存ファイル")
	if( res == False ){
		return
	}
	wind_iniReadToGlobal(setName, winPosIni, False, False)
	if( posX == "" ){
		posX = %glowi_windowX1%
	}
	if( posY == "" ){
		posY = %glowi_windowY1%
	}
	if( winTitle == "" ){
		winTitle := glowi_windowWinTitle
	}
	absoleFlag = 1
	if( absoleStr == "" ){
		absoleFlag = %glowi_windowScreenNum%
	} else {
		absoleFlag := rwipluf_getFlagByOnOffStrOrBasicAndErrMsg(absoleStr, True, "absoleFlag")
	}
	posX := rwipluf_getWithinNumOrBasicAndErrMsg(posX, 100, -1000, 10000, "横の位置の変数")
	posY := rwipluf_getWithinNumOrBasicAndErrMsg(posY, 100, -1000, 5000, "縦の位置の変数")
	wind_guiHideAndWindowPosChange(posX, posY, winTitle, absoleFlag)
}

wind_activeWinPosEntry(x2, y2, Screen, Title, setNum, listName) {
	MsgBox, 4097, 位置の登録の確認, 最前面のウインドウの`n位置情報を`nset%setNum% に上書きします。`nよろしいですか?, 60
	IfMsgBox, OK
	{
		wind_winPosIniFileWrite(x2, y2, Screen, Title, setNum, listName)
	}
}

wind_activeWinPosEntryFromCommand(getWinTitle, useWinTitle, listNumber, listName){
	listNumber := rwipluf_getWithinNumOrBasicAndErrMsg(listNumber, "1", "0", 101, "listNumber")
	windc_winRestoreIfwinMaxSize(getWinTitle)
	WinGetPos , posX, posY, width, height, %getWinTitle%
	wind_winPosIniFileWriteFromCommand(posX, posY, True, useWinTitle, listNumber, listName)
}

; wind_myWindowToBefore()  用にウインドウを保存する
wind_sizePosEntryIniFile(TitleVar="A"){
	classTitleVar =
	if(TitleVar == "A"){
		;Sleep, 300
		WinWaitActive , A, , 1
	}
	WinRestore, %TitleVar%
	WinGetPos XVar, YVar, WidthVar, HeightVar, %TitleVar%

	if(WidthVar != ""){		;タイトルで指定したのが見つかった場合
		WinGetClass, ClassVar, %TitleVar%
		WinGetTitle, allTextTitle, ahk_class %ClassVar%
		classTitleVar := ClassVar . allTextTitle
		tmpWinPosSizeIni := glowire_userDirCommon . glowi_tmpWinPosSizeBackupIniName
		func_folderCheckMakeFolder(glowire_userDirCommon . glowi_userWindowPlugDirName)
		IniWrite, %WidthVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeWidth
		IniWrite, %HeightVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeHeight
		IniWrite, %XVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeX
		IniWrite, %YVar%, %tmpWinPosSizeIni%, %classTitleVar%, beforeY
		return  allTextTitle
	} else {
		rwipluf_errorOutputWindowPlug("指定したウインドウがみつからない`n" . TitleVar)
	}
}

; 上の関数の結果を表示する
wind_sizePosEntryOutPut(TitleVar="A"){
	title := wind_sizePosEntryIniFile(TitleVar)
	res := rwipluf_checkErrorLevelOutput("ウインドウの登録時にエラーがあり`nwinTitle  " . title)
	if(res){
		rwipluf_easyExplainWindowPlug(title  . "`nのウインドウを登録")
	}
}

; 上の関数の結果をツールチップに表示する
wind_sizePosEntryToolTipOutPut(TitleVar="A"){
	title := wind_sizePosEntryIniFile(TitleVar)
	res := rwipluf_checkErrorLevelOutput("ウインドウの登録時にエラーがあり`nwinTitle  " . title)
	if(res){
		rwipluf_easyExplainWindowPlug(title  . "`nのウインドウを登録")
	}
}

wind_windBackup(com2, GuiNum){
	if(com2 != ""){
		wind_sizePosEntryOutPut(com2)
	} else {
		rwipluf_beforeWindowControl()
		wind_sizePosEntryOutPut()
	}
}

wind_windBackupGroup(com2, GuiNum){
	If com2 is integer
	{
		rwipluf_beforeWindowControl()
		wind_groupSizePosEntryIniFile(com2)
	} else {
		rwipluf_easyExplainWindowPlug("&windBackupGroup  グループのナンバー`n" . GuiNum)
	}
}

wind_windRestore(com2, GuiNum){
	if(com2 != ""){
		wind_myWindowToBefore(com2)
	} else {
		rwipluf_beforeWindowControl()
		wind_myWindowToBefore()
	}
}

wind_windRestoreGroup(com2, GuiNum){
	If com2 is integer
	{
		rwipluf_beforeWindowControl()
		wind_GroupWindowToBefore(com2)
	} else {
		rwipluf_easyExplainWindowPlug("&windRestoreGroup  グループのナンバー`n" . GuiNum)
	}
}

wind_windRepeat(com2, com3, com4, com5, com6, GuiNum){
	flag := True
	If com2 is not integer
	{
		flag := False
	}
	If com3 is not integer
	{
		flag := False
	}
	If com4 is not integer
	{
		flag := False
	}
	If com5 is not integer
	{
		flag := False
	}
	If com6 is not integer
	{
		flag := False
	}
	if(flag){
		com3 := (com3 == "") ? 30 : com3
		com4 := (com4 == "") ? 30 : com4
		com5 := (com5 == "") ? 30 : com5
		com6 := (com6 == "") ? 30 : com6
		wind_GroupTranp(com2, com3, com4, com5, com6)
	} else {
		rwipluf_easyExplainWindowPlug("&GroupTranp  グループのナンバー  [posX, posY, Xplus, Yplus]")
	}
}

wind_groupAdd(GroupName){
	WinGetActiveTitle, OutputVar
	GroupAdd, %GroupName%, %OutputVar%, , SubGroupErrorMsg
	rwipluf_easyExplainWindowPlug(GroupName  . "  に "  . OutputVar  . "  のウインドウを追加")
}

wind_gorupActiveKey(num){
	GroupActivate, %glowi_WindGroup%%num%
}

wind_groupAddKey(num){
	GroupName := glowi_WindGroup  . num
	wind_groupAdd(GroupName)
}

wind_gorupActiveItem(){
	windc_anyWaitActive()
	wind_gorupActiveKey(glowi_GroupNum)
}

wind_gorupReserveActive(num){
	GroupActivate, %glowi_WindGroup%%num%, R
}

wind_gorupReserveActiveItem(){
	windc_anyWaitActive()
	wind_gorupReserveActive(glowi_GroupNum)
}

wind_mainGorupChange(num){
	glowi_GroupNum := num
	GroupName := glowi_WindGroup  . num
	rwipluf_easyExplainWindowPlug("グループのメインを"  . GroupName  . "  に変更")
}

wind_getClassTitleVar(TitleVar="A"){
	if(TitleVar == "A")
	{
		;Sleep, 300
		windc_anyWaitActive()
	}
	WinGetClass, ClassVar, %TitleVar%
	WinGetTitle, allTextTitle, ahk_class %ClassVar%
	classTitleVar := ClassVar . allTextTitle
	return  classTitleVar
}

wind_GroupWindowToBefore(num){
	GroupName := "ahk_group " . glowi_WindGroup  . num
	wind_gorupActiveKey(num)
	title1 := wind_getClassTitleVar(GroupName)
	wind_myWindowToBefore(GroupName)

	wind_gorupActiveKey(num)
	title2 := wind_getClassTitleVar()
	if(title1 == title2){
		wind_gorupActiveKey(num)
		title2 := wind_getClassTitleVar()
		if(title1 == title2){
			return
		}
	}
	wind_myWindowToBefore(GroupName)

	wind_gorupActiveKey(num)
	title3 := wind_getClassTitleVar()
	if(title1 == title3 || title2 == title3){
		wind_gorupActiveKey(num)
		title3 := wind_getClassTitleVar()
		if(title1 == title3 || title2 == title3){
			return
		}
	}
	wind_myWindowToBefore(GroupName)

	wind_gorupActiveKey(num)
	title4 := wind_getClassTitleVar()
	if(title1 == title4 || title2 == title4 || title3 == title4){
		wind_gorupActiveKey(num)
		title4 := wind_getClassTitleVar()
		if(title1 == title4 || title2 == title4 || title3 == title4){
			return
		}
	}
	wind_myWindowToBefore(GroupName)

	wind_gorupActiveKey(num)
	title5 := wind_getClassTitleVar()
	if(title1 == title5 || title2 == title5 || title3 == title5 || title4 == title5){
		wind_gorupActiveKey(num)
		title5 := wind_getClassTitleVar()
		if(title1 == title5 || title2 == title5 || title3 == title5 || title4 == title5){
			return
		}
	}
	wind_myWindowToBefore(GroupName)
}

wind_Group2Bunkatu(num, heightFlag=True){
	GroupName := "ahk_group " . glowi_WindGroup  . num
	title1 := wind_getClassTitleVar(GroupName)
	if(heightFlag){
		wind_bunkatu2(1, GroupName)
	} else {
		wind_bunkatu2(3, GroupName)
	}

	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title2 := wind_getClassTitleVar(GroupName)
	if(title1 == title2){
		wind_gorupActiveKey(num)
		;Sleep, 300
		windc_anyWaitActive()
		wind_getClassTitleVar("A")
	}
	if(heightFlag){
		wind_bunkatu2(2, GroupName)
	} else {
		wind_bunkatu2(4, GroupName)
	}
}

wind_Group3Bunkatu(num, heightFlag=True){
	GroupName := "ahk_group " . glowi_WindGroup  . num
	title1 := wind_getClassTitleVar(GroupName)
	if(heightFlag){
		wind_bunkatu3(1, GroupName)
	} else {
		wind_bunkatu3(4, GroupName)
	}

	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title2 := wind_getClassTitleVar(GroupName)
	if(title1 == title2){
		wind_gorupActiveKey(num)
		;Sleep, 300
		windc_anyWaitActive()
		title2 := wind_getClassTitleVar("A")
	}
	if(heightFlag){
		wind_bunkatu3(2, GroupName)
	} else {
		wind_bunkatu3(5, GroupName)
	}

	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title3 := wind_getClassTitleVar(GroupName)
	if(title1 == title3 || title2 == title3){
		wind_gorupActiveKey(num)
		;Sleep, 300
		windc_anyWaitActive()
		title3 := wind_getClassTitleVar("A")
	}
	if(heightFlag){
		wind_bunkatu3(3, GroupName)
	} else {
		wind_bunkatu3(6, GroupName)
	}
}

wind_Group4Bunkatu(num){
	GroupName := "ahk_group " . glowi_WindGroup  . num
	title1 := wind_getClassTitleVar(GroupName)
	wind_bunkatu4(1, GroupName)

	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title2 := wind_getClassTitleVar(GroupName)
	if(title1 == title2){
		wind_gorupActiveKey(num)
		;Sleep, 300
		windc_anyWaitActive()
		title2 := wind_getClassTitleVar("A")
	}
	wind_bunkatu4(2, GroupName)

	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title3 := wind_getClassTitleVar(GroupName)
	if(title1 == title3 || title2 == title3){
		wind_gorupActiveKey(num)
		;Sleep, 300
		windc_anyWaitActive()
		title3 := wind_getClassTitleVar("A")
	}
	wind_bunkatu4(3, GroupName)

	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title4 := wind_getClassTitleVar(GroupName)
	if(title1 == title4 || title2 == title4 || title3 == title4){
		wind_gorupActiveKey(num)
		;Sleep, 300
		windc_anyWaitActive()
		title4 := wind_getClassTitleVar("A")
	}
	wind_bunkatu4(4, GroupName)
}

wind_groupSizePosEntryIniFile(num){
	buff =
	GroupName := "ahk_group " . glowi_WindGroup  . num
	title1 := wind_getClassTitleVar(GroupName)
	buff := wind_sizePosEntryIniFile(GroupName)
	buff .= "`n"
	rwipluf_checkErrorLevelOutput("")

	posX += Xplus
	posY += Yplus
	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title2 := wind_getClassTitleVar()
	if(title1 == title2){			; 同じウインドウかどうかを
		wind_gorupActiveKey(num)		; 試しに２回確認する
		;Sleep, 300
		windc_anyWaitActive()
		title2 := wind_getClassTitleVar("A")
		if(title1 == title2){
			rwipluf_easyExplainWindowPlug(buff  . "1 つ登録")
			return
		}
	}
	buff .= wind_sizePosEntryIniFile(GroupName)
	buff .= "`n"
	rwipluf_checkErrorLevelOutput("")

	posX += Xplus
	posY += Yplus
	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title3 := wind_getClassTitleVar("A")
	if(title1 == title3 || title2 == title3){
		wind_gorupActiveKey(num)
		;Sleep, 300
		windc_anyWaitActive()
		title3 := wind_getClassTitleVar("A")
		if(title1 == title3 || title2 == title3){
			rwipluf_easyExplainWindowPlug(buff  . "2 つ登録")
			return
		}
	}
	buff .= wind_sizePosEntryIniFile(GroupName)
	buff .= "`n"
	rwipluf_checkErrorLevelOutput("")

	posX += Xplus
	posY += Yplus
	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title4 := wind_getClassTitleVar("A")
	if(title1 == title4 || title2 == title4 || title3 == title4){
		wind_gorupActiveKey(num)
		;Sleep, 300
		windc_anyWaitActive()
		title4 := wind_getClassTitleVar("A")
		if(title1 == title4 || title2 == title4 || title3 == title4){
			rwipluf_easyExplainWindowPlug(buff  . "3 つ登録")
			return
		}
	}
	buff .= wind_sizePosEntryIniFile(GroupName)
	buff .= "`n"
	rwipluf_checkErrorLevelOutput("")

	posX += Xplus
	posY += Yplus
	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title5 := wind_getClassTitleVar("A")
	if(title1 == title5 || title2 == title5 || title3 == title5 || title4 == title5){
		wind_gorupActiveKey(num)
		;Sleep, 300
		windc_anyWaitActive()
		title5 := wind_getClassTitleVar("A")
		if(title1 == title5 || title2 == title5 || title3 == title5 || title4 == title5){
			rwipluf_easyExplainWindowPlug(buff  . "4 つ登録")
			return
		}
	}
	buff .= wind_sizePosEntryIniFile(GroupName)
	buff .= "`n"
	rwipluf_checkErrorLevelOutput("")
	rwipluf_easyExplainWindowPlug(buff  . "5 つ登録")
}

wind_GroupTranp(num, posX=30, posY=30, Xplus=30, Yplus=30){
	GroupName := "ahk_group " . glowi_WindGroup  . num
	title1 := wind_getClassTitleVar(GroupName)
	wind_myWindowPosChange(posX, posY, GroupName, 1)

	posX += Xplus
	posY += Yplus
	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title2 := wind_getClassTitleVar(GroupName)
	if(title1 == title2){			; 同じウインドウかどうかを
		wind_gorupActiveKey(num)		; ２回試しに試みる
		;Sleep, 300
		windc_anyWaitActive()
		title2 := wind_getClassTitleVar("A")
		if(title1 == title2){
			return
		}
	}
	wind_myWindowPosChange(posX, posY, GroupName, 1)

	posX += Xplus
	posY += Yplus
	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title3 := wind_getClassTitleVar(GroupName)
	if(title1 == title3 || title2 == title3){
		wind_gorupActiveKey(num)
		;Sleep, 300
		windc_anyWaitActive()
		title3 := wind_getClassTitleVar("A")
		if(title1 == title3 || title2 == title3){
			return
		}
	}
	wind_myWindowPosChange(posX, posY, GroupName, 1)

	posX += Xplus
	posY += Yplus
	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title4 := wind_getClassTitleVar(GroupName)
	if(title1 == title4 || title2 == title4 || title3 == title4){
		wind_gorupActiveKey(num)
		;Sleep, 300
		windc_anyWaitActive()
		title4 := wind_getClassTitleVar("A")
		if(title1 == title4 || title2 == title4 || title3 == title4){
			wind_gorupActiveKey(num)
			return
		}
	}
	wind_myWindowPosChange(posX, posY, GroupName, 1)

	posX += Xplus
	posY += Yplus
	wind_gorupActiveKey(num)
	;Sleep, 300
	windc_anyWaitActive()
	title5 := wind_getClassTitleVar(GroupName)
	if(title1 == title5 || title2 == title5 || title3 == title5 || title4 == title5){
		wind_gorupActiveKey(num)
		;Sleep, 300
		windc_anyWaitActive()
		title5 := wind_getClassTitleVar(GroupName)
		if(title1 == title5 || title2 == title5 || title3 == title5 || title4 == title5){
			wind_gorupActiveKey(num)
			wind_gorupActiveKey(num)
			return
		}
	}
	wind_myWindowPosChange(posX, posY, GroupName, 1)
}
