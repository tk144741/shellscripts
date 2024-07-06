#!/bin/bash

# 配列の宣言
declare -a fruits=(apple grape orange peach)
echo ${fruits[0]}
echo ${fruits[1]}
echo ${fruits[2]}
echo ${fruits[3]}
# Error にはならない
echo ${fruits[4]}

# 配列の全て
echo ${fruits[@]}

# 配列の要素数
echo ${#fruits[@]}

