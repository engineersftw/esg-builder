#!/bin/sh

FILE=$1
TIMECODE=$2

folder="${1%/*}"
file=$(basename "$1")
filename="${file%.*}"

mkdir -p $folder/thumbnails

ffmpeg -ss $TIMECODE -i $FILE -frames:v 1 $folder/thumbnails/$filename-thumbnail.jpg
ffmpeg -ss $TIMECODE -i $FILE -frames:v 1 $folder/thumbnails/$filename-thumbnail.png
