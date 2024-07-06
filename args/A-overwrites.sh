#!/bin/bash

declare -A user=([id]=5 [name]=miyake)
#overwrite
user[name]=MiyakeHideaki

#append
user[country]=Japan

echo ${user[id]}
echo ${user[name]}
echo ${user[country]}

#delete
unset user[name]

echo ${user[id]}
echo ${user[name]}
echo ${user[country]}

#キー一覧の取得
echo ${!user[@]}
