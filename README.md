# my-hot-key

ThinkPad USキーボードのためのAutoHotKeyスクリプトです。

## IMEの ON/OFF を左右`alt`キーで行う

IMEの ON/OFF は　karakaram氏の[karakaram/alt-ime-ahk](https://github.com/karakaram/alt-ime-ahk)を使用しています。
(`my_hot_key.ahk`から`IME.ahk`をインクルードするので、`alt-ime-ahk.ahk`内の`#Include IME.ahk`行をコメントアウトしています。)


## VS Code使用時の PgUp/PgDown キーの変更

カーソル左右移動時に`PgUp/PgDown`キーを押し間違えてしまうため。VS Code 使用時の`PgUp/PgDown` キーの操作を変更。


*  `PgUp` + `Up` 押下で `PgUp`
*  `PgUp` + `Down` 押下で `PgDn`
*  `PgDn` + `Up` 押下で `PgUp`
*  `PgDn` + `Down` 押下で `PgDn`


## Installation

```
git clone --recursive https://github.com/icm7216/my-hot-key.git
```


## Capslock を Ctrl に変更について

AutoHotkey を使って Capslock を Ctrl に変更は、 AutoHotkey だけでは解決できないようです。
*  [既知の不具合 - AutoHotkeyJp](https://sites.google.com/site/autohotkeyjp/reference/misc/Trouble#TOC-CapsLock-)
*  [既知の不具合 - AutoHotkey Wiki](http://ahkwiki.net/Trouble#CapsLock.E3.82.84.E3.81.8B.E3.81.AA.E3.82.AD.E3.83.BC.E7.AD.89.E3.81.B8.E3.81.AE.E5.89.B2.E3.82.8A.E5.BD.93.E3.81.A6.E3.81.8C.E4.B8.8A.E6.89.8B.E3.81.8F.E3.81.84.E3.81.8B.E3.81.AA.E3.81.84)
  
そこで Capslock を Ctrl に変更は keySwap を使用しています。
*  [愛とゆりの部屋 - keySwap](http://www.asahi-net.or.jp/~ee7k-nsd/)


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


## Thanks!

*  [karakaram/alt-ime-ahk](https://github.com/karakaram/alt-ime-ahk)
*  [eamat/IME.ahk](https://w.atwiki.jp/eamat/pages/17.html)
