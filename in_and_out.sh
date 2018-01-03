#!/bin/sh

# 普通そのままに出力される
echo hello!

# 出力リダイレクト
# hello!という出力が新規ファイルoutput.txtに入力された
echo hello! > output.txt

#「>」は上書き
# 既存ファイルoutput.txtに上書き
date > output.txt


#「>>」は追記
# 既存ファイルoutput.txtに追記
echo add! >> output.txt


