#!/bin/bash
list=($(dir Raw_Data --ignore=*.*))
for item in "${list[@]}"
do
	i=1;
	mkdir Data
	ffmpeg -i Raw_Data/$item/$item.mp4 -r 60/1 Data/$item%03d.bmp
	filename=($(ls Data))
	mkdir Data/$item 
	for file in "${filename[@]}"
	do
		ffmpeg -i Data/$file -vf scale=60:-1 Data/$item/resize$i.bmp
		i=$((i+1));
	done;
	rm -rf Data/*.bmp
done;
