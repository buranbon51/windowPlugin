

Win_Plug_SubCancel:

	return

; ウインドウグループを利用した操作

Win_Plug_SubGroup2BunHeight:
	wind_Group2Bunkatu(glowi_GroupNum, True)
	return

Win_Plug_SubGroup2BunWidth:
	wind_Group2Bunkatu(glowi_GroupNum, False)
	return

Win_Plug_SubGroup3BunHeight:
	wind_Group3Bunkatu(glowi_GroupNum, True)
	return

Win_Plug_SubGroup3BunWidth:
	wind_Group3Bunkatu(glowi_GroupNum, False)
	return

Win_Plug_SubGroup4Bun:
	wind_Group4Bunkatu(glowi_GroupNum)
	return

Win_Plug_SubGroupTranp:
	wind_GroupTranp(glowi_GroupNum, 30, 30)
	return

Win_Plug_SubGroupTranpLeftToRight:
	wind_GroupTranp(glowi_GroupNum, 30, 30, 200, 0)
	return

Win_Plug_SubGroupTranpUpToDown:
	wind_GroupTranp(glowi_GroupNum, 550, 30, 0, 80)
	return

Win_Plug_SubMainGorupChange1:
	wind_mainGorupChange(1)
	return

Win_Plug_SubMainGorupChange2:
	wind_mainGorupChange(2)
	return

Win_Plug_SubMainGorupChange3:
	wind_mainGorupChange(3)
	return

Win_Plug_SubMainGorupChange4:
	wind_mainGorupChange(4)
	return

Win_Plug_SubMainGorupChange5:
	wind_mainGorupChange(5)
	return

Win_Plug_SubGroupAdd:
	rwipluf_beforeWindowControl()
	wind_groupAddKey(glowi_GroupNum)
	return

Win_Plug_SubGroupActive:
	wind_gorupActiveItem()
	return

Win_Plug_SubGroupReserveActive:
	wind_gorupReserveActiveItem()
	return

Win_Plug_SubGroupMinimize:
	WinMinimize, ahk_group %glowi_WindGroup%%glowi_GroupNum%
	return

Win_Plug_SubGroupRestore:
	WinRestore, ahk_group %glowi_WindGroup%%glowi_GroupNum%
	return

Win_Plug_SubGroupClose:
	GroupClose, %glowi_WindGroup%%glowi_GroupNum%, A
	return

Win_Plug_SubGroupSizePosEntryIniFile:
	wind_groupSizePosEntryIniFile(glowi_GroupNum)
	return

Win_Plug_SubGroupWindowToBefore:
	wind_GroupWindowToBefore(glowi_GroupNum)
	return


; ウインドウの位置とサイズを変更

Win_Plug_SubLR3bunL:
	rwipluf_beforeWindowControl()
	wind_bunkatu3(1, "A")
	return

Win_Plug_SubLR3bunC:
	rwipluf_beforeWindowControl()
	wind_bunkatu3(2, "A")
	return

Win_Plug_SubLR3bunR:
	rwipluf_beforeWindowControl()
	wind_bunkatu3(3, "A")
	return

Win_Plug_SubUD3bunU:
	rwipluf_beforeWindowControl()
	wind_bunkatu3(4, "A")
	return

Win_Plug_SubUD3bunC:
	rwipluf_beforeWindowControl()
	wind_bunkatu3(5, "A")
	return

Win_Plug_SubUD3bunD:
	rwipluf_beforeWindowControl()
	wind_bunkatu3(6, "A")
	return

Win_Plug_SubSemiMax:
	rwipluf_beforeWindowControl()
	wind_semiMax("A")
	return


Win_Plug_SubLOfLRHerf:
	rwipluf_beforeWindowControl()
	wind_bunkatu2(1, "A")
	return

Win_Plug_SubROfLRHerf:
	rwipluf_beforeWindowControl()
	wind_bunkatu2(2, "A")
	return

Win_Plug_SubUOfUDHerf:
	rwipluf_beforeWindowControl()
	wind_bunkatu2(3, "A")
	return

Win_Plug_SubDOfUDHerf:
	rwipluf_beforeWindowControl()
	wind_bunkatu2(4, "A")
	return

Win_Plug_SubLU_Bun4:
	rwipluf_beforeWindowControl()
	wind_bunkatu4(1, "A")
	return

Win_Plug_SubLD_Bun4:
	rwipluf_beforeWindowControl()
	wind_bunkatu4(2, "A")
	return

Win_Plug_SubRU_Bun4:
	rwipluf_beforeWindowControl()
	wind_bunkatu4(3, "A")
	return

Win_Plug_SubRD_Bun4:
	rwipluf_beforeWindowControl()
	wind_bunkatu4(4, "A")
	return

;		縦、横のみ最大化
Win_Plug_SubSizePosMaxUD:
	rwipluf_beforeWindowControl()
	wind_sizePosMaxUD("A")
	return

Win_Plug_SubSizePosMaxLR:
	rwipluf_beforeWindowControl()
	wind_sizePosMaxLR("A")
	return

;		数字で指定
Win_Plug_SubShowSizePos:
	guf_showGuiAssign(44)
	return

Win_Plug_SubShowSizePosRelativ:
	wind_AssiSizePos("A", False)
	return

Win_Plug_SubShowSizePosLoad:
	rwipluf_beforeWindowControl()
	wind_AssiSizePos("A", True)
	return



; ウインドウのサイズのみ変更
Win_Plug_SubBun4:
	rwipluf_beforeWindowControl()
	wind_sizeBunkatu4("A")
	return

;		右端限界まで最大化
Win_Plug_SubSizeMaxR:
	rwipluf_beforeWindowControl()
	wind_SizeMaxEdge(2, "A")
	return

;		下限界まで最大化
Win_Plug_SubSizeMaxD:
	rwipluf_beforeWindowControl()
	wind_SizeMaxEdge(4, "A")
	return

Win_Plug_SubSizeMaxU:
	rwipluf_beforeWindowControl()
	wind_SizeMaxEdge(3, "A")
	return

Win_Plug_SubSizeMaxL:
	rwipluf_beforeWindowControl()
	wind_SizeMaxEdge(1, "A")
	return

;		数字で指定
Win_Plug_SubShowSize:
	guf_showGuiAssign(42)
	return

Win_Plug_SubShowSizeRelativ:
	wind_AssiSize("A", False)
	return

Win_Plug_SubShowSizeLoad:
	rwipluf_beforeWindowControl()
	wind_AssiSize("A", True)
	return



;  ウインドウの位置のみ変更
Win_Plug_SubPosCenter:				; ど真ん中に
	rwipluf_beforeWindowControl()
	wind_posCustamCenter("A")
	return


;		端っこにひっつける
Win_Plug_SubPosMaxL:
	rwipluf_beforeWindowControl()
	wind_PosMaxEdge(1, "A")
	return

Win_Plug_SubPosMaxR:
	rwipluf_beforeWindowControl()
	wind_PosMaxEdge(2, "A")
	return

Win_Plug_SubPosMaxU:
	rwipluf_beforeWindowControl()
	wind_PosMaxEdge(3, "A")
	return

Win_Plug_SubPosMaxD:
	rwipluf_beforeWindowControl()
	wind_PosMaxEdge(4, "A")
	return

Win_Plug_SubPosMaxLU:
	rwipluf_beforeWindowControl()
	wind_PosMaxEdge(5, "A")
	return

Win_Plug_SubPosMaxLD:
	rwipluf_beforeWindowControl()
	wind_PosMaxEdge(6, "A")
	return

Win_Plug_SubPosMaxRU:
	rwipluf_beforeWindowControl()
	wind_PosMaxEdge(7, "A")
	return

Win_Plug_SubPosMaxRD:
	rwipluf_beforeWindowControl()
	wind_PosMaxEdge(8, "A")
	return

;		数字で指定
Win_Plug_SubShowPos:
	guf_showGuiAssign(43)
	return

Win_Plug_SubShowPosRelativ:
	wind_AssiPos("A", False)
	return

Win_Plug_SubShowPosLoad:
	rwipluf_beforeWindowControl()
	wind_AssiPos("A", True)
	return


;  ウインドウを変更する前に戻す。そしてTempにあるファイルのデータも消す
Win_Plug_SubBeforePosSize:
	rwipluf_beforeWindowControl()
	wind_myWindowToBefore("A")
	return

Win_Plug_SubSaveSizePos:
	rwipluf_beforeWindowControl()
	wind_sizePosEntryToolTipOutPut("A")
	return

Win_Plug_SubShowEntryWinPosSize:
	wind_showMacroPosSize()
	return

Win_Plug_SubShowEntryWinPos:
	wind_showMacroPos()
	return

Win_Plug_SubShowEntryWinSize:
	wind_showMacroSize()
	return

Win_Plug_SubMenuMain:
	rwipluf_beforeWindowControl()
	Menu, Win_Plug_MenuMain, Show, %Win_Plug_O_menuPosX%, %Win_Plug_O_menuPosY%
	return

Win_Plug_SubMenuPos:
	rwipluf_beforeWindowControl()
	Menu, Win_Plug_MenuPos, Show, %Win_Plug_O_menuPosX%, %Win_Plug_O_menuPosY%
	return

Win_Plug_SubMenuSize:
	rwipluf_beforeWindowControl()
	Menu, Win_Plug_MenuSize, Show, %Win_Plug_O_menuPosX%, %Win_Plug_O_menuPosY%
	return

Win_Plug_SubMenuPosSize:
	rwipluf_beforeWindowControl()
	Menu, Win_Plug_MenuPosSize, Show, %Win_Plug_O_menuPosX%, %Win_Plug_O_menuPosY%
	return

Win_Plug_SubMenuGroup:
	rwipluf_beforeWindowControl()
	Menu, Win_Plug_MenuGroup, Show, %Win_Plug_O_menuPosX%, %Win_Plug_O_menuPosY%
	return

Win_Plug_SubShowVersion:
	guwiplugf_cleatedDateWindowPlug()
	return

SubGroupErrorMsg:
	rwipluf_errorOutputWindowPlug(glowi_WindGroup . glowi_GroupNum . "に登録されていません")
	return

/*
Win_Plug_SubTmpDeleteWin:
	if( rwipluf_deleteAndMakeFileWindowPlug(glowire_userDirCommon . glowi_tmpWinPosSizeBackupIniName, glowire_userDirCommon . glowi_userWindowPlugDirName) ){
		rwipluf_easyExplainWindowPlug("ウインドウの位置とサイズの一時ファイルを削除", GuiNum)
	}
	return
*/

