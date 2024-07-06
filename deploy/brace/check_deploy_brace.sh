#!/bin/bash

# file-1001.txt file-1002.txt file-old.txt file-new.txt
touch file-{1001,1002,old,new}.txt

# /work /work/project 
# /work/project/src
# /work/project/log
# /work/project/test
# /work/project/h

mkdir -p work/project/{src,log,test,h}

# file-8.txt file-9.txt file-10.txt file-11.txt
touch file-{8..11}.txt
# file-c.txt file-d.txt file-e.txt file-f.txt
touch file-{c..f}.txt
# file-12.txt file-14.txt file-16.txt
touch file-{12..16..2}.txt
