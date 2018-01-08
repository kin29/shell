#!/bin/sh

## awkコマンド
# テキストデータの加工や処理などができる。

# 1が表示される 
echo 1 2 | awk '{print $1}' 

# 計算もできる
# 3(=1+2)が表示される 
echo 1 2 | awk '{print $1+$2}' 

# 「；(セミコロン)」で複数処理できる
echo 1 2 | awk '{x=$1+$2; print x}'

# seqコマンドと組み合わせる
seq 1 10 | awk '{x=$1+100; print x}'