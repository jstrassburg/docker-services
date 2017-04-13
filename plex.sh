#!/bin/bash

NAME=plex
USER=puke

docker run -d \
  --name=$NAME \
  --restart=always \
  --net=host \
  -e VERSION=latest \
  -e PUID=`id -u $USER` -e PGID=`id -g $USER` \
  -e TZ=America/Chicago \
  -v /mnt/data/plex/config:/config \
  -v /mnt/data/video/TV\ Shows:/data/tvshows \
  -v /mnt/data/video/Movies:/data/movies \
  -v /mnt/data/video/Kids\ Movies:/data/kidsmovies \
  -v /mnt/data/video/Home\ Movies:/data/homemovies \
  -v /mnt/data/music:/data/music \
  -v /mnt/data/plex/transcode:/transcode \
  linuxserver/plex
