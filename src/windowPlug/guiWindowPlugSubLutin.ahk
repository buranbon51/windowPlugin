

41GuiEscape:
	guwiplugf_hideGui41()
	return

41GuiContextMenu:
	Menu, Win_Plug_MenuMain, Show, %A_GuiX%, %A_GuiY%
	return

42GuiEscape:
	Gui, 42:Show, Hide
	return

43GuiEscape:
	Gui, 43:Show, Hide
	return

44GuiEscape:
	Gui, 44:Show, Hide
	return





SubButton41_1_1:
	Gui, 44:Submit, NoHide
	Gui, 41:Submit, NoHide
	wind_winPosSizeEntry(Edit44_1, Edit44_2, Edit44_3, Edit44_4, Radio44_1, Radio44_3, Edit44_5, List41_1, Edit41_1_1)
	return

SubButton41_1_2:
	Gui, 41:Submit, NoHide
	wind_winPosSizeLoad(List41_1)
	return

SubButton41_1_3:
	Gui, 41:Submit, NoHide
	wind_winPosSizeExecute(List41_1, "", "", "", "", "", "", "")
	return

SubButton41_1_4:
	Gui, 44:Hide
	Gui, 41:Hide
	wind_AssiSizePos("A", True)
	Gui, 41:Show
	Gui, 44:Submit, NoHide
	Gui, 41:Submit, NoHide
	wind_activeWinPosSizeEntry(Edit44_1, Edit44_2, Edit44_3, Edit44_4, Radio44_1, Radio44_3, Edit44_5, List41_1, Edit41_1_1)
	return

SubButton41_2_1:
	Gui, 42:Submit, NoHide
	Gui, 41:Submit, NoHide
	wind_winSizeEntry(Edit42_1, Edit42_2, Radio42_1,Edit42_3, List41_2, Edit41_2_1)
	return

SubButton41_2_2:
	Gui, 41:Submit, NoHide
	wind_winSizeLoad(List41_2)
	return

SubButton41_2_3:
	Gui, 41:Submit, NoHide
	wind_winSizeExecute(List41_2, "", "", "", "")
	return

SubButton41_2_4:
	Gui, 42:Hide
	Gui, 41:Hide
	wind_AssiSize("A", True)
	Gui, 41:Show
	Gui, 42:Submit, NoHide
	Gui, 41:Submit, NoHide
	wind_activeWinSizeEntry(Edit42_1, Edit42_2, Radio42_1,Edit42_3, List41_2, Edit41_2_1)
	return

SubButton41_3_1:
	Gui, 43:Submit, NoHide
	Gui, 41:Submit, NoHide
	wind_winPosEntry(Edit43_1, Edit43_2, Radio43_1, Edit43_3, List41_3, Edit41_3_1)
	return

SubButton41_3_2:
	Gui, 41:Submit, NoHide
	wind_winPosLoad(List41_3)
	return

SubButton41_3_3:
	Gui, 41:Submit, NoHide
	wind_winPosExecute(List41_3, "", "", "", "")
	return

SubButton41_3_4:
	Gui, 43:Hide
	Gui, 41:Hide
	wind_AssiPos("A", True)
	Gui, 41:Show
	Gui, 43:Submit, NoHide
	Gui, 41:Submit, NoHide
	wind_activeWinPosEntry(Edit43_1, Edit43_2, Radio43_1, Edit43_3, List41_3, Edit41_3_1)
	return


SubButton42_1:
	Gui, 42:Submit, NoHide
	wind_guiHideAndWindowSizeChange(Edit42_1, Edit42_2, Edit42_3, Radio42_1)
	return

SubButton43_1:
	Gui, 43:Submit, NoHide
	wind_guiHideAndWindowPosChange(Edit43_1, Edit43_2, Edit43_3, Radio43_1)
	return

SubButton44_1:
	Gui, 44:Submit, NoHide
	wind_guiHideAndWindowPosSizeChange(Edit44_1, Edit44_2, Edit44_3, Edit44_4, Edit44_5, Radio44_1, Radio44_3)
	return
