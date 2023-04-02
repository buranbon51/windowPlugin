



37GuiEscape:
	Gui, 37:Hide
	return

37GuiSize:
	winTmpWidth := A_GuiWidth - 20
	winTmpHeight := A_GuiHeight - 50
	winTmpPosY := winTmpHeight + 15
	GuiControl, 37:Move, BoxEdit37_1, w%winTmpWidth%  h%winTmpHeight%
	GuiControl, 37:Move, Text37_1, y%winTmpPosY%
	return

37GuiContextMenu:
	Menu, Win_Plug_MenuMain, Show, %A_GuiX%, %A_GuiY%
	return

38GuiEscape:
	Gui, 38:Hide
	return

38GuiSize:
	winTmpWidth := A_GuiWidth - 20
	winTmpHeight := A_GuiHeight - 20
	GuiControl, 38:Move, BoxEdit38_1, w%winTmpWidth%  h%winTmpHeight%
	return

ohwinplusub_showExplain:
	guf_showGuiAssign(37)
	return

ohwinplusub_showErrorWindow:
	guf_showGuiAssign(38)
	return

ohwinplusub_windowPlugSoftExitApp:
	ExitApp
	return
