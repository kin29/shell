#!/bin/sh

### sedコマンド
# テキストデータの加工や処理などができる。
# seqコマンドと似てるが全く違う

## 置換して、全部を出力する
# 文字列「IN」を「in」に置き換えて
echo 'KIN29' | sed s/IN/in/

# 同じ様にファイルsed.txt を加工
sed s/IN/in/ sed.txt
cat sed.txt | sed s/IN/in/


## 置換した行だけを出力する
# 文字列「IN」を「in」に置き換えて
sed -n s/in/IN/p sed.txt
cat sed.txt | sed -n s/in/IN/p






