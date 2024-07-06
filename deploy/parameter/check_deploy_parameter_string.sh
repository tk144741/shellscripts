#!/bin/bash

function TitleEcho {
  echo "-----------------------------------------"
  echo "    ${1}"                     
  echo "-----------------------------------------"
}

# 文字列の切り出し
TitleEcho "\${変数名:数値} : 変数の値の一部を取り出す"

# 先頭から表示
TitleEcho "\${name: 5} 先頭から位置指定"
name=/usr/lib/kernel/
echo ${name:5}

# 末尾から表示
TitleEcho "\${name: -5} 末尾から位置指定"
# 数値に負の値 *スペースが必要
echo ${name: -5}

# 範囲を指定して表示
TitleEcho "\${name:0:5} 範囲を指定"
echo ${name:0:5}

TitleEcho "\${name:0:100} 指定が長かったら末尾と解釈される"
echo ${name:0:100}

TitleEcho "\${name:0:-1} 負の値を使えば一文字前まで"
echo ${name:0:-1}

# 配列
TitleEcho "\${arr[@]:1} 配列の先頭からの位置指定"
arr=(aaa bbb ccc ddd)
echo ${arr[@]:1}
TitleEcho "\${arr[@]:1:2} 配列の範囲指定"
echo ${arr[@]:1:2}

# 文字数に展開
TitleEcho "\${#変数名} : 変数に含まれている文字数に展開、変数が設定されていない、Null ならば0"

TitleEcho "\${#name} 文字数を出力"
name=/usr/lib/kernel/
echo ${#name}

