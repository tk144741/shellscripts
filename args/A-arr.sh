#!/bin/bash

declare -A user=([id]=5 [name]=miyake)
echo ${user[id]}
echo ${user[name]}

# 値全て取得
echo ${user[@]}

# 要素数取得
echo ${#user[@]}
