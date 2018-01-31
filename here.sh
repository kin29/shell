#!/bin/sh

# これだと見にくい。複数行にしたい。
# echo "I am kin29." > result.txt
# echo "I like lego." >> result.txt

cat <<EOF > result.txt
I am kin29.
I like lego.
EOF