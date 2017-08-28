#!/bin/sh
/usr/bin/mkvpropedit "$1" --edit track:a1 --set language=eng --edit track:v1 --set language=eng
#sleep 10
sleep `echo $$%30| bc`
/usr/bin/python /home/plex/PlexComskip/PlexComskip.py "$1"
#mv *.ts *.m4v
HandBrakeCLI -i "$1" -o "$1".m4v --format av_mp4 --encoder x264 --quality 20 --x264-preset veryfast
#find /home/plex/DVR/ -name "*.ts" -not -path "*/\.*" -delete
#find /home/plex/DVR -maxdepth 2 -type f -name "*.ts" -delete 
#find . -type f -name '*.ts' -delete
rm -f "$1"


#find /home/plex/DVR -name "*.ts" -delete
