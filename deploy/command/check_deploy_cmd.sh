#!/bin/bash

function TitleEcho {
  echo "-----------------------------------------"
  echo "    ${1}"                     
  echo "-----------------------------------------"
}

# %Y-%m-%d
# timedata=`date +\%Y-\%m-\%d-\%s`

TitleEcho "\$(コマンド)　括弧内のコマンドが実行 "

# ` `　でもくくれるが不便
echo $(date +%Y-%m-%d)
