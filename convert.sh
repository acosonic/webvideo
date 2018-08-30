#!/bin/bash
if [ $# < 2 ]
  then
    printf "No arguments supplied, please supply input video filename, \nand output video filename separated by space.\n"
else
  then
    ffmpeg -i $1 -vcodec libvpx -r 24 -an -movflags faststart  -c:v libvpx-vp9 -crf 30 -b:v 750k $2.webm  && ffmpeg -y -i $1 -c:v libx264 -b:v 1300k -pass 1 -an -f mp4 /dev/null && ffmpeg -i $1 -c:v libx264 -b:v 1300k -pass 2 -profile:v main -level 4.0 -movflags +faststart $2.mp4
fi
