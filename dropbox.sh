#!/bin/bash

NAME=dropbox

docker run -d \
  --name=$NAME \
  --restart=always \
  --net=host \
  -e VERSION=latest \
  -e DBOX_UID=`id -u` -e DBOX_GID=`id -g` \
  -v $HOME/Dropbox:/dbox/Dropbox \
  janeczku/dropbox
