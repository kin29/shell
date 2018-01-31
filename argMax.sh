#!/bin/sh

# コマンド行の最大文字数を確認
max=`getconf ARG_MAX`

# コマンド文字列をカウント
cmd_cnt=`echo $1 | wc -m`

# 最大文字数を超える場合は -t で回避
[ "$cmd_cnt" -gt "$max" ]
ls | cp -t ./dummy/


