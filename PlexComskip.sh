#!/bin/sh
/usr/bin/mkvpropedit "$1" --edit track:a1 --set language=eng --edit track:v1 --set language=eng
#sleep 10
sleep `echo $$%30| bc`
/usr/bin/python /home/plex/PlexComskip/PlexComskip.py "$1"

HandBrakeCLI -i "$1" -o "$1".m4v --format av_mp4 --encoder x264 --quality 20 --x264-preset veryfast

rm -f "$1"

