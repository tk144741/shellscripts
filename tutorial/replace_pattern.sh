#!/bin/bash

#iconv -f sjis -t utf8 ./infomation.txt | more > ./infomation_to_utf.txt


declare -a output_line;
while read input_line || [ -n "${input_line}" ];
do
  echo "${input_line}"
done < "infomation.txt"

