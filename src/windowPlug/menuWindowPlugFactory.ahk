


; ウインドウグループを利用した操作
Menu, Win_Plug_MenuMainGroup, Add, グループ１(&1), Win_Plug_SubMainGorupChange1
Menu, Win_Plug_MenuMainGroup, Add, グループ２(&2), Win_Plug_SubMainGorupChange2
Menu, Win_Plug_MenuMainGroup, Add, グループ３(&3), Win_Plug_SubMainGorupChange3
Menu, Win_Plug_MenuMainGroup, Add, グループ４(&4), Win_Plug_SubMainGorupChange4
Menu, Win_Plug_MenuMainGroup, Add, グループ５(&5), Win_Plug_SubMainGorupChange5

Menu, Win_Plug_MenuGroupBunkatu, Add, 左右に２分割(&2), Win_Plug_SubGroup2BunHeight
Menu, Win_Plug_MenuGroupBunkatu, Add, 上下に２分割(&U), Win_Plug_SubGroup2BunWidth
Menu, Win_Plug_MenuGroupBunkatu, Add, 縦長に３分割(&3), Win_Plug_SubGroup3BunHeight
Menu, Win_Plug_MenuGroupBunkatu, Add, 横長に３分割(&R), Win_Plug_SubGroup3BunWidth
Menu, Win_Plug_MenuGroupBunkatu, Add, ４分割(&4), Win_Plug_SubGroup4Bun

Menu, Win_Plug_MenuGroupRepeat, Add, 左上から(&T), Win_Plug_SubGroupTranp
Menu, Win_Plug_MenuGroupRepeat, Add, 横に(&R), Win_Plug_SubGroupTranpLeftToRight
Menu, Win_Plug_MenuGroupRepeat, Add, 縦に(&V), Win_Plug_SubGroupTranpUpToDown


Menu, Win_Plug_MenuGroup, Add, グループ切り替え(&M), :Win_Plug_MenuMainGroup
Menu, Win_Plug_MenuGroup, Add, 追加(&S), Win_Plug_SubGroupAdd
Menu, Win_Plug_MenuGroup, Add, 切り替え(&A), Win_Plug_SubGroupActive
Menu, Win_Plug_MenuGroup, Add, 逆に切り替え(&D), Win_Plug_SubGroupReserveActive
Menu, Win_Plug_MenuGroup, Add
Menu, Win_Plug_MenuGroup, Add, 最小化(&9), Win_Plug_SubGroupMinimize
Menu, Win_Plug_MenuGroup, Add, リサイズ(&5), Win_Plug_SubGroupRestore
Menu, Win_Plug_MenuGroup, Add, 全て閉じる(&X), Win_Plug_SubGroupClose
Menu, Win_Plug_MenuGroup, Add
Menu, Win_Plug_MenuGroup, Add, 分割(&2), :Win_Plug_MenuGroupBunkatu
Menu, Win_Plug_MenuGroup, Add, 重ねる(&T), :Win_Plug_MenuGroupRepeat
Menu, Win_Plug_MenuGroup, Add
Menu, Win_Plug_MenuGroup, Add, 保存(&U), Win_Plug_SubGroupSizePosEntryIniFile
Menu, Win_Plug_MenuGroup, Add, 元に戻す(&B), Win_Plug_SubGroupWindowToBefore
Menu, Win_Plug_MenuGroup, Add, キャンセル(&C), Win_Plug_SubCancel




; ウインドウの位置とサイズを変更
Menu, Win_Plug_MenuSPMax, Add, 縦に最大化(&R), Win_Plug_SubSizePosMaxUD
Menu, Win_Plug_MenuSPMax, Add, 横に最大化(&G), Win_Plug_SubSizePosMaxLR

Menu, Win_Plug_MenuHerf, Add, 左右の左(&L), Win_Plug_SubLOfLRHerf
Menu, Win_Plug_MenuHerf, Add, 左右の右(&R), Win_Plug_SubROfLRHerf
Menu, Win_Plug_MenuHerf, Add, 上下の上(&U), Win_Plug_SubUOfUDHerf
Menu, Win_Plug_MenuHerf, Add, 上下の下(&D), Win_Plug_SubDOfUDHerf

Menu, Win_Plug_Menu4bun, Add, 左上(&E), Win_Plug_SubLU_Bun4
Menu, Win_Plug_Menu4bun, Add, 左下(&C), Win_Plug_SubLD_Bun4
Menu, Win_Plug_Menu4bun, Add, 右上(&T), Win_Plug_SubRU_Bun4
Menu, Win_Plug_Menu4bun, Add, 右下(&B), Win_Plug_SubRD_Bun4

Menu, Win_Plug_Menu3bun, Add, 左右の左(&D), Win_Plug_SubLR3bunL
Menu, Win_Plug_Menu3bun, Add, 左右の中(&F), Win_Plug_SubLR3bunC
Menu, Win_Plug_Menu3bun, Add, 左右の下(&G), Win_Plug_SubLR3bunR
Menu, Win_Plug_Menu3bun, Add, 上中下の上(&U), Win_Plug_SubUD3bunU
Menu, Win_Plug_Menu3bun, Add, 上中下の中(&J), Win_Plug_SubUD3bunC
Menu, Win_Plug_Menu3bun, Add, 上中下の下(&K), Win_Plug_SubUD3bunD




Menu, Win_Plug_MenuPosSize, Add, ほぼ最大化(&S), Win_Plug_SubSemiMax

Menu, Win_Plug_MenuPosSize, Add, ２分割(&2), :Win_Plug_MenuHerf
Menu, Win_Plug_MenuPosSize, Add, ３分割(&3), :Win_Plug_Menu3bun
Menu, Win_Plug_MenuPosSize, Add, ４分割(&4), :Win_Plug_Menu4bun
Menu, Win_Plug_MenuPosSize, Add, 縦横に最大化(&X), :Win_Plug_MenuSPMax

Menu, Win_Plug_MenuPosSize, Add
Menu, Win_Plug_MenuPosSize, Add, 数字で指定(&A), Win_Plug_SubShowSizePos
Menu, Win_Plug_MenuPosSize, Add, プラス指定(&R), Win_Plug_SubShowSizePosRelativ
Menu, Win_Plug_MenuPosSize, Add, 取得(&G), Win_Plug_SubShowSizePosLoad
Menu, Win_Plug_MenuPosSize, Add
Menu, Win_Plug_MenuPosSize, Add, 登録を表示(&M), Win_Plug_SubShowEntryWinPosSize
Menu, Win_Plug_MenuPosSize, Add
Menu, Win_Plug_MenuPosSize, Add, 保存(&U), Win_Plug_SubSaveSizePos
Menu, Win_Plug_MenuPosSize, Add, 元に戻す(&B), Win_Plug_SubBeforePosSize
Menu, Win_Plug_MenuPosSize, Add, キャンセル(&C), Win_Plug_SubCancel





; ウインドウのサイズのみ変更
Menu, Win_Plug_MenuSizeMax, Add, 左を伸ばす(&D), Win_Plug_SubSizeMaxL
Menu, Win_Plug_MenuSizeMax, Add, 上を伸ばす(&R), Win_Plug_SubSizeMaxU
Menu, Win_Plug_MenuSizeMax, Add, 右を伸ばす(&G), Win_Plug_SubSizeMaxR
Menu, Win_Plug_MenuSizeMax, Add, 下を伸ばす(&V), Win_Plug_SubSizeMaxD


Menu, Win_Plug_MenuSize, Add, ４分の１のサイズ(&4), Win_Plug_SubBun4
Menu, Win_Plug_MenuSize, Add, 限界まで(&L), :Win_Plug_MenuSizeMax

Menu, Win_Plug_MenuSize, Add
Menu, Win_Plug_MenuSize, Add, 数字で指定(&A), Win_Plug_SubShowSize
Menu, Win_Plug_MenuSize, Add, プラス指定(&R), Win_Plug_SubShowSizeRelativ
Menu, Win_Plug_MenuSize, Add, 取得(&G), Win_Plug_SubShowSizeLoad
Menu, Win_Plug_MenuSize, Add
Menu, Win_Plug_MenuSize, Add, 登録を表示(&M), Win_Plug_SubShowEntryWinSize
Menu, Win_Plug_MenuSize, Add
Menu, Win_Plug_MenuSize, Add, 保存(&U), Win_Plug_SubSaveSizePos
Menu, Win_Plug_MenuSize, Add, 元に戻す(&B), Win_Plug_SubBeforePosSize

Menu, Win_Plug_MenuSize, Add, キャンセル(&C), Win_Plug_SubCancel






; ウインドウの位置のみ変更
Menu, Win_Plug_MenuPosTip, Add, 上(&R), Win_Plug_SubPosMaxU
Menu, Win_Plug_MenuPosTip, Add, 下(&V), Win_Plug_SubPosMaxD
Menu, Win_Plug_MenuPosTip, Add, 左(&D), Win_Plug_SubPosMaxL
Menu, Win_Plug_MenuPosTip, Add, 右(&G), Win_Plug_SubPosMaxR
Menu, Win_Plug_MenuPosTip, Add, 左上(&E), Win_Plug_SubPosMaxLU
Menu, Win_Plug_MenuPosTip, Add, 左下(&C), Win_Plug_SubPosMaxLD
Menu, Win_Plug_MenuPosTip, Add, 右上(&T), Win_Plug_SubPosMaxRU
Menu, Win_Plug_MenuPosTip, Add, 右下(&B), Win_Plug_SubPosMaxRD

Menu, Win_Plug_MenuPos, Add, 中央に(&F), Win_Plug_SubPosCenter
Menu, Win_Plug_MenuPos, Add, 端っこ(&E), :Win_Plug_MenuPosTip

Menu, Win_Plug_MenuPos, Add
Menu, Win_Plug_MenuPos, Add, 数字で指定(&A), Win_Plug_SubShowPos
Menu, Win_Plug_MenuPos, Add, プラス指定(&R), Win_Plug_SubShowPosRelativ
Menu, Win_Plug_MenuPos, Add, 取得(&G), Win_Plug_SubShowPosLoad
Menu, Win_Plug_MenuPos, Add
Menu, Win_Plug_MenuPos, Add, 登録を表示(&M), Win_Plug_SubShowEntryWinPos
Menu, Win_Plug_MenuPos, Add
Menu, Win_Plug_MenuPos, Add, 保存(&U), Win_Plug_SubSaveSizePos
Menu, Win_Plug_MenuPos, Add, 元に戻す(&B), Win_Plug_SubBeforePosSize

Menu, Win_Plug_MenuPos, Add, キャンセル(&C), Win_Plug_SubCancel



; 全て
Menu, Win_Plug_MenuMain, Add, 移動(&P), :Win_Plug_MenuPos
Menu, Win_Plug_MenuMain, Add, サイズ(&S), :Win_Plug_MenuSize
Menu, Win_Plug_MenuMain, Add, サイズと移動(&O), :Win_Plug_MenuPosSize
Menu, Win_Plug_MenuMain, Add, グループ(&G), :Win_Plug_MenuGroup
Menu, Win_Plug_MenuMain, Add
Menu, Win_Plug_MenuMain, Add, バージョン情報(&V), Win_Plug_SubShowVersion
Menu, Win_Plug_MenuMain, Add, キャンセル(&C), Win_Plug_SubCancel
