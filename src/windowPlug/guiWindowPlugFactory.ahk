

; ウインドウのエントリー用
guf_guiFontFromSizeAndName(glowi_fontSizeTab, "", 41)
Gui, 41:Margin, X10 Y5
Gui, 41:Add, Tab2, X0 ym+5 w240 h405  vTab41_1 , Tab1|Tab2|Tab3
Gui, 41:Tab, 1
guf_guiFontFromSizeAndName(glowi_fontSize, glowire_fontNameAll, 41)
Gui, 41:Add, Text, xm+10 y+10, ウインドウの位置とサイズ(&E)
Gui, 41:Add, ListBox, X10 y+5 w200  R10  VScroll AltSubmit vList41_1, set1||set2|set3|set4|set5|set6|set7|set8|set9|set10|set11|set12|set13|set14|set15|set16|set17|set18|set19|set20
guf_guiFontFromSizeAndName(glowi_fontSizeSmall, "", 41)
Gui, 41:Add, Text,  X10 y+13,  リスト名(&T)
Gui, 41:Add, Edit,    x+5 yp-3  w120  vEdit41_1_1
Gui, 41:Add, Button,  xm+10 y+15 gSubButton41_1_1 , 保存(&S)
Gui, 41:Add, Button,    x+15 yp+0 gSubButton41_1_2, 読み出し(&L)
Gui, 41:Add, Button,  xm+10 y+30 gSubButton41_1_3, 実行(&O)
Gui, 41:Add, Button,  xm+10 y+10 gSubButton41_1_4, 最前面のを保存(&A)

Gui, 41:Tab, 2
guf_guiFontFromSizeAndName(glowi_fontSize, "", 41)
Gui, 41:Add, Text, xm+10 y+10, ウインドウのサイズのみ(&E)
Gui, 41:Add, ListBox, X10 y+5 w200  R10  VScroll AltSubmit vList41_2, set1||set2|set3|set4|set5|set6|set7|set8|set9|set10|set11|set12|set13|set14|set15|set16|set17|set18|set19|set20
guf_guiFontFromSizeAndName(glowi_fontSizeSmall, "", 41)
Gui, 41:Add, Text,  X10 y+13,  リスト名(&T)
Gui, 41:Add, Edit,    x+5 yp-3  w120  vEdit41_2_1
Gui, 41:Add, Button,  xm+10 y+15 gSubButton41_2_1 , 保存(&S)
Gui, 41:Add, Button,    x+15 yp+0 gSubButton41_2_2, 読み出し(&L)
Gui, 41:Add, Button,  xm+10 y+30 gSubButton41_2_3, 実行(&O)
Gui, 41:Add, Button,  xm+10 y+10 gSubButton41_2_4, 最前面のを保存(&A)

Gui, 41:Tab, 3
guf_guiFontFromSizeAndName(glowi_fontSize, "", 41)
Gui, 41:Add, Text, xm+10 y+10, ウインドウの位置のみ(&E)
Gui, 41:Add, ListBox, X10 y+5 w200  R10  VScroll AltSubmit vList41_3, set1||set2|set3|set4|set5|set6|set7|set8|set9|set10|set11|set12|set13|set14|set15|set16|set17|set18|set19|set20
guf_guiFontFromSizeAndName(glowi_fontSizeSmall, "", 41)
Gui, 41:Add, Text,  X10 y+13,  リスト名(&T)
Gui, 41:Add, Edit,    x+5 yp-3  w120  vEdit41_3_1
Gui, 41:Add, Button,  xm+10 y+15 gSubButton41_3_1 , 保存(&S)
Gui, 41:Add, Button,    x+15 yp+0 gSubButton41_3_2, 読み出し(&L)
Gui, 41:Add, Button,  xm+10 y+30 gSubButton41_3_3, 実行(&O)
Gui, 41:Add, Button,  xm+10 y+10 gSubButton41_3_4, 最前面のを保存(&A)

;Gui, 41:+AlwaysOnTop
Gui, 41:+Resize



; ウインドウのサイズの変更
guf_guiFontFromSizeAndName(glowi_fontSize, glowire_fontNameAll, 42)
Gui, 42:Add, Text,   X20  Y5, Width
Gui, 42:Add, Text,   X90  yp+0, Height
Gui, 42:Add, Edit,   X10  y+5 w60    Limit4  vEdit42_1
Gui, 42:Add, UpDown, Range-0-2000  128 ,500

Gui, 42:Add, Edit,   x+10 yp+0 w60   Limit4  vEdit42_2
Gui, 42:Add, UpDown, Range-0-1500  128 ,400
guf_guiFontFromSizeAndName(glowi_fontSizeSmall, "", 42)
Gui, 42:Add, Button, X10  y+5 gSubButton42_1 Default, On(&O)

;Gui, 42:Add, Text,   X10  y+15, From Screen Or now Size
Gui, 42:Add, Radio,  xp+5 y+15 vRadio42_1 Checked ,絶対指定(&S)
Gui, 42:Add, Radio,  x+10 yp+0 vRadio42_2 ,プラス指定(&N)

Gui, 42:Add, Text,   X10  y+10, ウインドウタイトル(&T)
Gui, 42:Add, Edit,   xp+5 y+5 w150  vEdit42_3, A

Gui, 42:+AlwaysOnTop
Gui, 42:+Resize
;Gui, 42:-Border


; ウインドウ位置の変更
guf_guiFontFromSizeAndName(glowi_fontSize, glowire_fontNameAll, 43)
Gui, 43:Add, Text,   X20 Y5, X
Gui, 43:Add, Text,   X90 yp+0, Y
Gui, 43:Add, Edit,   X10 y+5 w60    Limit4  vEdit43_1
Gui, 43:Add, UpDown, Range-2000-2000 128 ,100

Gui, 43:Add, Edit,   x+10 yp+0 w60    Limit4  vEdit43_2
Gui, 43:Add, UpDown, Range-1500-1500 128  ,100
guf_guiFontFromSizeAndName(glowi_fontSizeSmall, "", 43)
Gui, 43:Add, Button, X10 y+5 gSubButton43_1 Default, On(&O)

;Gui, 43:Add, Text,   X10  y+15, From Screen Or now Posi
Gui, 43:Add, Radio,  xp+5 y+15 vRadio43_1 Checked ,絶対指定(&S)
Gui, 43:Add, Radio,  x+10 yp+0 vRadio43_2 ,プラス指定(&N)

Gui, 43:Add, Text,   X10 y+10, ウインドウタイトル(&T)
Gui, 43:Add, Edit,   xp+5 y+5 w150  vEdit43_3, A

Gui, 43:+AlwaysOnTop
Gui, 43:+Resize
;Gui, 43:-Border


; ウインドウ位置とサイズの変更
guf_guiFontFromSizeAndName(glowi_fontSize, glowire_fontNameAll, 44)
Gui, 44:Add, Text,   X20 Y5, X
Gui, 44:Add, Text,   X90 yp+0, Y
Gui, 44:Add, Edit,   X10 y+5 w60    Limit4 vEdit44_1
Gui, 44:Add, UpDown, Range-2000-2000 128 ,100

Gui, 44:Add, Edit,   x+10 yp+0 w60    Limit4 vEdit44_2
Gui, 44:Add, UpDown, Range-1500-1500 128 ,100

Gui, 44:Add, Text,   X20 y+15, Width
Gui, 44:Add, Text,   X90 yp+0, Height

Gui, 44:Add, Edit,   X10 y+5 w60     Limit4 vEdit44_3
Gui, 44:Add, UpDown, Range-0-2000 128 ,500

Gui, 44:Add, Edit,   x+10 yp+0 w60    Limit4  vEdit44_4
Gui, 44:Add, UpDown, Range-0-1500 128 ,400

guf_guiFontFromSizeAndName(glowi_fontSizeSmall, "", 44)
Gui, 44:Add, Button, X10 y+5 gSubButton44_1 Default, On(&O)

Gui, 44:Add, Text,   X10  y+15, 位置の指定
Gui, 44:Add, Radio,  xp+5 y+5  vRadio44_1 Checked ,絶対指定(&S)
Gui, 44:Add, Radio,  x+10 yp+0 vRadio44_2 ,プラス指定(&N)
Gui, 44:Add, Text,   X10  y+10, サイズの指定
Gui, 44:Add, Radio,  xp+5 y+5  vRadio44_3 Checked ,絶対指定(&R)
Gui, 44:Add, Radio,  x+10 yp+0 vRadio44_4 ,プラス指定(&I)

Gui, 44:Add, Text,   X10 y+15, ウインドウタイトル(&T)
Gui, 44:Add, Edit,   xp+5 y+10 w150  vEdit44_5, A

Gui, 44:+AlwaysOnTop
Gui, 44:+Resize
;Gui, 44:-Border


