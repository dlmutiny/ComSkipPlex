# ComSkipPlex
Commercial Skipping with PlexComskip and Plex Media Server DVR

This project utilizes PlexComskip by ekim1337 and Comskip by erikkaashoek.

This project is to be run with the Plex Media Server Post Processing Script within the DVR feature.

Record over the air television programming, remove the commercials and transcode them to an m4v container using HandBrakeCLI. I chose to convert to m4v so I can have optimal compatibility with Gen 4 AppleTV. 

Transcoding settings can be edited within /ComSkipPlex/PlexComskip.sh 
```
$ HandBrakeCLI -i "$1" -o "$1".m4v --format av_mp4 --encoder x264 --quality 20 --x264-preset veryfast
```

## Clone the repositories to your local machine

```
$ git clone https://github.com/dlmutiny/ComSkipPlex.git

$ git clone https://github.com/ekim1337/PlexComskip.git

$ git clone https://github.com/erikkaashoek/Comskip.git
```

## Setup

Dependencies: ffmpeg, PlexComskip, Comskip, Python, HandBrakeCLI, mkvpropedit

Build Comskip - https://github.com/erikkaashoek/Comskip/blob/master/README.md
```
$ cd Comskip
$ ./autogen.sh
$ ./configure
$ make
```

PlexComskip/PlexComskip.conf
Edit the first three path enteries to your local directory structure.

You can use use my comskip.ini or leave it to the default. I have configured my comskip.ini to detect North American OTA commercials on FOX, ABC, NBC, CBS. It's not perfect but works pretty dang good.

Specify abolute path to post processing script with Plex Media Server DVR settings.

Settings related to DVRs associated with your Plex Media Server. You can access these under Settings > Server > Live TV & DVR in Plex Web App.

Within the DRV Settings navigate to the Postprocessing Script option.

/home/'user name'/ComSkipPlex/PlexComskip.sh

Save



