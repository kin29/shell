#!/bin/sh

## シェル変数
x=3
echo $x  #echo xではない。

# コマンドを変数に入れたい時は「`」で囲む
d=`date`
echo $d


## seqコマンド
# 1から10までの数値を並べる
seq 1 10


## forループ
for a in 1 2 3; do echo $a; done

# seq 1 3は文字じゃなくてコマンドなので「`」で囲む
for b in `seq 1 3`; do echo $b; done
