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


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


## Thanks!

*  [karakaram/alt-ime-ahk](https://github.com/karakaram/alt-ime-ahk)
*  [eamat/IME.ahk](https://w.atwiki.jp/eamat/pages/17.html)
