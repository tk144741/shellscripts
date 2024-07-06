#!/bin/bash

declare -a countries=(Japan France Germany Finland)

#copy
declare -a countries2=(${countries[@]})

# Delete
unset countries[1]

echo ${countries[0]}
echo ${countries[1]}
echo ${countries[2]}
echo ${countries[3]}
echo
echo ${countries2[0]}
echo ${countries2[1]}
echo ${countries2[2]}
echo ${countries2[3]}

#append
declare -a countries3=(Brasil [6]=EU ${countries2[@]})
echo
echo ${countries3[0]}
echo ${countries3[1]}
echo ${countries3[2]}
echo ${countries3[3]}
echo ${countries3[4]}
echo ${countries3[5]}
echo ${countries3[6]}
echo ${countries3[7]}
echo ${countries3[8]}
echo ${countries3[9]}
echo ${countries3[10]}

#値のある index の取得
echo ${!countries3[@]}
