#!/bin/bash

IMAGE='diginc/pi-hole'
IP=192.168.1.128

docker run \
  -p 53:53/tcp -p 53:53/udp -p 80:80 \
  --cap-add=NET_ADMIN \
  -e ServerIP="$IP" \
  -e DNS1="8.8.8.8" \
  -e DNS2="8.8.4.4" \
  -v /mnt/data/docker-volumes/pihole:/etc/pihole \
  --restart=always --name pihole -d \
  $IMAGE
