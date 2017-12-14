#!/bin/sh

sleep `echo $$%30| bc`
HandBrakeCLI -i "$1" -o "$1".m4v --format av_mp4 --encoder x264 --quality 20 --x264-preset veryfast
rm -f "$1"
