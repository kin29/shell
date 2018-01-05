#!/bin/sh

## 標準入出力
# キーボードで入力(標準入力)したものがそのままに出力(標準出力)される
echo hello!


## 出力リダイレクト
# 「hello!」という出力結果を画面(標準出力)でなく新規ファイルoutput.txtに出力
echo hello! > output.txt

#「>」は上書き
# dateコマンドの出力結果を既存ファイルoutput.txtに上書き
date > output.txt

#「>>」は追記
# 「add!」という出力結果を既存ファイルoutput.txtに追記
echo add! >> output.txt


## 入力リダイレクト
# キーボード(標準入力)でなくファイルからの入力をコマンドに渡す
# cat output.txtと同じ結果
# cat 0< output.txtと同じ結果
cat < output.txt

echo 6+1 > input.txt
# input.txtの式6+1を計算し、結果を出力
# bc 0< input.txtと同じ結果
bc < input.txt

# bc < echo 6+1 はファイルからの入力ではないためできない。


## パイプ
# 標準出力をコマンドに渡したいとき
# 中間ファイルが不要となる　
# echo 6+1 > input.txt && bc < input.txt と同じ結果
echo 6+1 | bc

