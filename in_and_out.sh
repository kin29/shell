#!/bin/sh

# 普通そのままに出力される
echo hello!

# 出力リダイレクト
# 「hello!」という出力結果を新規ファイルoutput.txtに入力
echo hello! > output.txt

#「>」は上書き
# 既存ファイルoutput.txtにdateコマンドの結果を上書き
date > output.txt

#「>>」は追記
# 既存ファイルoutput.txtに「add!」という出力結果を追記
echo add! >> output.txt


