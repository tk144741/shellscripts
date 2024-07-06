#!/bin/bash

function TitleEcho {
  echo "-----------------------------------------"
  echo "    ${1}"                     
  echo "-----------------------------------------"
}

# パターンを指定して切り出す
TitleEcho "\${変数名#パターン} : パターンマッチした部分を取り除いた値に展開 (前方から)"
TitleEcho "\${pref1#Ao} : pref1=Aomori : Ao が一致し、その部分を除去 mori が表示"
pref1=Aomori
echo ${pref1#Ao}

TitleEcho "\${pref2#Ao} : pref2=Akita : マッチしていないので何も取り除かれない"
pref2=Akita
echo ${pref2#Ao}

file=home.tar.gz
TitleEcho "\${file#*.} : file=home.tar.gz : 拡張子を取り出す(最短マッチ)"
echo ${file#*.}

TitleEcho "\${file##*.} : file=home.tar.gz : 拡張子を取り出す(最長マッチ)"
echo ${file##*.}

TitleEcho "\${変数名%パターン} : パターンマッチした部分を取り除いた値に展開 (後方から)"

TitleEcho "\${file%.*} : file=home.tar.gz : ファイル名を取り出す(最短マッチ)"
echo ${file%.*}

TitleEcho "\${file%%.*} : file=home.tar.gz : ファイル名を取り出す(最長マッチ)"
echo ${file%%.*}

path=/var/local/backup/file.txt
TitleEcho "\${path##*/} : path=/var/local/backup/file.txt : パスからディレクトリ部分を取り除く"
echo ${path##*/}
TitleEcho "\${path%/*} : path=/var/local/backup/file.txt : パスからファイル名部分を取り除く"
echo ${path%/*}

arr=(home.tar.gx file.zip)
TitleEcho "\${arr[@]%%.*} : arr=(home.tar.gx file.zip) : 配列に対する各操作"
echo ${arr[@]%%.*}

# パターン一致したら置換
TitleEcho "\${変数名/パターン/置換文字列} : 一致した部分を置換文字列に"
file=home.tar.gz
TitleEcho "\${file/./_} : file=home.tar.gz : .を_に置換(最初ののみ)"
echo ${file/./_}
TitleEcho "\${file//./_} : file=home.tar.gz : .を_に置換(全て)"
echo ${file//./_}

# 後方一致したら置換
file1=file.html
file2=file.html.org
TitleEcho "\${file1/%.html/.html.bak} : file1=file.html : 末尾がhtml なので .html.bakに置換"
echo ${file1/%.html/.html.bak}
TitleEcho "\$${file2/%.html/.bak} : file2=file.html.org : 末尾がhtml でないので なにもしない"
echo ${file2/%.html/.bak}
