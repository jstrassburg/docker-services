#!/bin/bash

NAME=dropbox
USER=dropbox

docker run -d \
  --name=$NAME \
  --restart=always \
  --net=host \
  -e VERSION=latest \
  -e DBOX_UID=`id -u $USER` -e DBOX_GID=`id -g $USER` \
  -v /mnt/data/dropbox:/dbox/Dropbox \
  janeczku/dropbox
