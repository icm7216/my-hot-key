/*
  ThinkPad USキーボード環境用

  *  IME ON/OFF
  *  PgUp/PgDown
*/


/*
  alt-ime-ahk をインクルード
  [karakaram/alt-ime-ahk](https://github.com/karakaram/alt-ime-ahk)

  注意！
  このスクリプトから IME.ahk をインクルードするので、 alt-ime-ahk.ahk 内の #Include IME.ahk 行をコメントアウトしておく。
  インクルードの対象ファイルは相対パスで指定。
*/
#Include alt-ime-ahk/IME.ahk
#Include alt-ime-ahk/alt-ime-ahk.ahk


/*
  カーソル左右移動時に PgUp/PgDown キーを押し間違えてしまうため。
  VS Code 使用時の PgUp/PgDown キーの操作を変更。

  PgUp + Up で PgUp
  PgUp + Down で PgDn
  
  PgDn + Up で PgUp
  PgDn + Down で PgDn
*/
#IfWinActive,ahk_exe Code.exe
; PgUp/PgDownキーを無効化
PgUp::Send {Blind}{vk07}
PgDn::Send {Blind}{vk07}

; PgUp + Up/Down
PgUp & Up::Send, {PgUp}        ; PgUp + Up
PgUp & Down::Send, {PgDn}      ; PgUp + Down

; PgDn + Up/Down
PgDn & Up::Send, {PgUp}        ; PgDown + Up
PgDn & Down::Send, {PgDn}      ; PgDown + Down
#IfWinActive



/*
　<< Casplock を Ctrl に変更について >>

  AutoHotkey を使って Casplock を Ctrl に変更は、うまく動かなかった。

  この問題は AutoHotkey だけでは解決できないそうだ。
  *  [既知の不具合 - AutoHotkeyJp](https://sites.google.com/site/autohotkeyjp/reference/misc/Trouble#TOC-CapsLock-)
  *  [既知の不具合 - AutoHotkey Wiki](http://ahkwiki.net/Trouble#CapsLock.E3.82.84.E3.81.8B.E3.81.AA.E3.82.AD.E3.83.BC.E7.AD.89.E3.81.B8.E3.81.AE.E5.89.B2.E3.82.8A.E5.BD.93.E3.81.A6.E3.81.8C.E4.B8.8A.E6.89.8B.E3.81.8F.E3.81.84.E3.81.8B.E3.81.AA.E3.81.84)
  
  そこで Casplock の変更は keySwap を使用する。
  [愛とゆりの部屋 - keySwap](http://www.asahi-net.or.jp/~ee7k-nsd/)
*/


/*
  << 現在は未使用 >>

  右Ctrl + カーソルキー にPageUp/PageDown/Home/Endをマップする。

  [Win10 AutoHotKeyで、右Ctrl+矢印キーでPageUp/PageDown/Home/Endする](https://qiita.com/standard-software/items/6e4ad65da23041c075de)

  RightCtrl + Up Arrow     >>  PageUp
  RightCtrl + Down Arrow   >>  PageDown
  RightCtrl + Left Arrow   >>  Home
  RightCtrl + Right Arrow  >>  End

  >^ is Right Ctrl key
  <^ is Left  Ctrl key
  +  is Shift key
*/
; >^Up::Send {PgUp}         ; (R_ctrl) + Up
; >^Down::Send {PgDn}       ; (R_ctrl) + Down
; >^Left::Send {Home}       ; (R_ctrl) + Left
; >^Right::Send {End}       ; (R_ctrl) + End

; >^+Up::Send +{PgUp}       ; (R_ctrl)+(Shift) + Up
; >^+Down::Send +{PgDn}     ; (R_ctrl)+(Shift) + Down
; >^+Left::Send +{Home}     ; (R_ctrl)+(Shift) + Left
; >^+Right::Send +{End}     ; (R_ctrl)+(Shift) + Right

; >^<^Up::Send ^{PgUp}      ; (R_ctrl)+(L_ctrl) + Up
; >^<^Down::Send ^{PgDn}    ; (R_ctrl)+(L_ctrl) + Down
; >^<^Left::Send ^{Home}    ; (R_ctrl)+(L_ctrl) + Left
; >^<^Right::Send ^{End}    ; (R_ctrl)+(L_ctrl) + Right

; >^<^+Up::Send ^+{PgUp}    ; (R_ctrl)+(L_ctrl)+(Shift) + Up
; >^<^+Down::Send ^+{PgDn}  ; (R_ctrl)+(L_ctrl)+(Shift) + Down
; >^<^+Left::Send ^+{Home}  ; (R_ctrl)+(L_ctrl)+(Shift) + Left
; >^<^+Right::Send ^+{End}  ; (R_ctrl)+(L_ctrl)+(Shift) + Right
