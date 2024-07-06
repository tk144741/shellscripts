#!/bin/bash

function TitleEcho {
  echo "/------------------------------"
  echo "/    ${1}"                     
  echo "/------------------------------"
}

declare cmd

cmd=`ls string.?`
TitleEcho "$ ls string.?"
echo "${cmd}"

cmd=`ls string.???`
TitleEcho "$ ls string.???"
echo "${cmd}"

cmd=`ls *.txt`
TitleEcho "$ ls *.txt"
echo "${cmd}"

cmd=`ls string*.c`
TitleEcho "$ string*.c"
echo "${cmd}"

cmd=`ls string.[ch]`
TitleEcho "$ string.[ch]"
echo "${cmd}"

cmd=`ls file[1-3].txt`
TitleEcho "$ file[1-3].txt"
echo "${cmd}"

cmd=`ls file[!24].txt`
TitleEcho "$ file[!24].txt"
echo "${cmd}"

cmd=`ls *.[ch]`
TitleEcho "$ ls *.[ch]"
echo "${cmd}"

cmd=`ls *.jpg`
TitleEcho "$ ls *.jpg"
echo "${cmd}"

cmd=`ls .*en[12]`
TitleEcho "$ ls .*en[12]"
echo "${cmd}"
