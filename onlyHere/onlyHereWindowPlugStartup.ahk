



guf_guiFontFromSizeAndName(glowi_fontSize, glowire_fontNameAll, 37)
Gui, 37:Add, Edit, X10 Y5 h180 vBoxEdit37_1 Multi VScroll
Gui, 37:Add, Text, X10 y+10 vText37_1, 右クリック位置
Gui, 37:+Resize
Gui, 37:Color, E8AAFF


guf_guiFontFromSizeAndName(glowi_fontSize, glowire_fontNameAll, 38)
Gui, 38:Add, Edit, X10 Y5 h200 vBoxEdit38_1 Multi VScroll HwndhwndEditBox38_1
Gui, 38:+AlwaysOnTop
Gui, 38:+Resize
Gui, 38:Color, E87CB9


Gui, 37:Show, Hide x200 y300 w270 h200, %gGloOnHeWiPlu_winTitle37%
Gui, 38:Show, Hide x200 y30 w270 h220, %gGloOnHeWiPlu_winTitle38%
