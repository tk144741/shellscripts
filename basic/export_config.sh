#!/bin/bash

CONFIG_FILE=./conf.txt
# ここをコメントアウトすると子プロセスに環境パスが与えられないため、
# 子プロセス側で参照が出来ない。
# 結果、空文字になる。
export CONFIG_FILE
./config.sh
