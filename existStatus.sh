#!/bin/sh

# 存在しないディレクトリnoexist
ls noexist 2> /dev/null

# ls notexistdir 2> /dev/nullの終了ステータスを$retに格納
ret=$?

#[ "$ret" -eq "0" ] || echo "error: $ret" でも同じ感じ。
# $retが1ならば「error: 1」echoする。
[ "$ret" -eq "1" ] && echo "error: $ret"
