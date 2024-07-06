#!/bin/bash

declare -a prefectures=(Hokkaido Aomori [3]=Miyagi [5]=Yamagata Fukushima)
echo ${prefectures[0]}
echo ${prefectures[1]}
echo ${prefectures[2]} # blank
echo ${prefectures[3]}
echo ${prefectures[4]} # blank
echo ${prefectures[5]}
echo ${prefectures[6]}
