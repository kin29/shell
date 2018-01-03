#!/bin/sh

# 普通そのままに出力される
echo hello!

## 出力リダイレクト
# 「hello!」という出力結果を新規ファイルoutput.txtに入力
echo hello! > output.txt

#「>」は上書き
# 既存ファイルoutput.txtにdateコマンドの結果を上書き
date > output.txt

#「>>」は追記
# 既存ファイルoutput.txtに「add!」という出力結果を追記
echo add! >> output.txt


## 入力リダイレクト
# cat output.txtと同じ結果!?
cat < output.txt

echo 6+1 > input.txt
# input.txtの式6+1を計算し、結果を出力
bc < input.txt


## パイプ
# 中間ファイルが不要となる
echo 6+1 | bc

