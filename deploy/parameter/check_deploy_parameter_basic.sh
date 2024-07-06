#!/bin/bash

function TitleEcho {
  echo "/------------------------------"
  echo "/    ${1}"                     
  echo "/------------------------------"
}

# 省略形は分かりにくいので使わない
TitleEcho "-  :を省略すると空文字かどうかに関わらず変数が設定されているかどうかを判別する"
#　null なので miyake が表示
echo ${name-miyake}
name=
#　空文字列が展開される
echo ${name-miyake}

TitleEcho ":- 何か文字がセットされていればそれを表示、そうでなければデフォルトのmiyakeを表示"
# name に代入されたので okita が表示
name=okita
echo ${name:-miyake}

# name がnull になるので miyake が表示
unset name
echo ${name:-miyake}

TitleEcho ":+ 何か文字がセットされていれば右のを展開表示、そうでなければ空文字を表示"
# name に代入されたので okita が表示
name=okita
echo ${name:+miyake}
# name がnull になるので miyake が表示
unset name
echo ${name:+miyake}


TitleEcho ":= 何も文字がセットされなければ、そうでなければデフォルトのmiyakeを表示し代入する。"
# name  で miyake が表示され、さらに代入が発生する
echo ${name:=miyake}
echo ${name}

TitleEcho "コマンドライン引数が指定されていないときはrootディレクトリを表示"
ls ${1:-/}

TitleEcho "変数でも展開可能"
echo ${config_file:-$HOME/.conf}

TitleEcho "コマンドライン引数が指定されていないときはrootディレクトリを表示"
ls ${1:-/}

TitleEcho ":? 変数に値が代入されていない場合エラーにする"
# err は定義されていないのでエラーメッセージ発生
echo ${err:?error}
# echo ${err:?}
