
名称：WindowPlug
作者：ブランボン  
Web：https://textrunrunburanbon.com  


ウインドウの位置と大きさを保存するためのものです。
簡易的なものです。

TextRunRun から切り離した機能の様なものです。


TextRunRun のプラグインとしての使い方と、
単体のソフトとしての使い方があります。


＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
# TextRunRun のプラグインとしての使い方
＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

このソフトの
src の中にある
windowPlug
のフォルダを


TextRunRun の
trrEvery\Plugins
の中にコピーします。


そして、
trrEvery\Plugins
の中にある

pluginsStartUpExecute.ahk
のファイルに以下の行を記入します。

#Include %A_ScriptDir%\trrEvery\Plugins\windowPlug\useForPlug\windowPlugStartUp.ahk



pluginsSubroutineAndFunction.ahk
のファイルにも以下の行を記入します。

#Include %A_ScriptDir%\trrEvery\Plugins\windowPlug\useForPlug\windowPlugSubrouAndFunc.ahk


ーーーーーーーーーーーーーーーーーーーーーーーーーー
## 使い方
ーーーーーーーーーーーーーーーーーーーーーーーーーー

Gosub, Win_Plug_SubMenuMain
を使うとこのプラグインのメインといえるメニューが表示します。
（ これの特性上、ウインドウが最大化をしている場合は最大化を解除します。 ）

基本、このスクリプトを TextRunRun の常時使用のキーとして登録して使います。



＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
# 単体のソフトとしての使い方
＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝


MainWindowPlug.ahk
のファイルと同じフォルダ内に
AutoHotkey.exe
を配置します。

	AutoHotkey.exe は、
	AutoHotkeyU32.exe  や  AutoHotkeyU64.exe
	の事を指しています。

AutoHotkey.exe  に  MainWindowPlug.ahk  のファイルをパラメータとして指定して起動します。
（ AutoHotkey.exe  に  MainWindowPlug.ahk  をマウスドラッグでも可能。 ）


ただし、単体で使ったとしても使い方に工夫を凝らす事はできません。

ーーーーーーーーーーーーーーーーーーーーーーーーーー
## 使い方
ーーーーーーーーーーーーーーーーーーーーーーーーーー

タスクトレイにこのソフトのアイコンがあります。
それをクリックするとウインドウが表示します。

その中に、右クリック位置と書いてる場所があります。
そこを右クリックすると、
このプラグインのメインといえるメニューが表示します。

ーーーーーーーーーーー
###  終了の仕方
ーーーーーーーーーーー

タスクトレイにあるこのソフトのアイコンを右クリックします。
そのメニューの中にある 
WindowPlugの終了  を選んで終了します。


