#!/bin/bash

read -s -p "Enter Password: " mypassword

docker run -d --name="crashplan" \
  --restart=always \
  --net="bridge" \
  -p 4242:4242 \
  -p 4243:4243 \
  -p 4280:4280 \
  -e TZ="America/Chicago" \
  -e VNC_PASSWD="$password" \
  -v /mnt/data/docker-volumes/crashplan:/config:rw \
  -v /mnt/data/:/backup \
  gfjardim/crashplan
