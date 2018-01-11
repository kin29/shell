#!/bin/sh

### awkコマンド
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


## 条件に当てはまるものだけの出力
# 私が生まれてからオリンピック開催年を出力
seq 1993 2019 | awk '$1%4==0{print}'

# 私が生まれてからオリンピック開催回数を出力
seq 1993 2019 | awk '$1%4==0{print}' | wc -l


#forループで九九の計算式を出力
for a in `seq 1 9`;do for b in `seq 1 9`; do echo $a $b ; done ; done | awk '{print $1 "*" $2 "=" $1*$2}'


# awk.txtはファイルなので「|」はいらない
# awk '{print $1 * $2;}' dummy/awk.txtと同じ
awk '{print $1 + $2;}' < dummy/awk.txt