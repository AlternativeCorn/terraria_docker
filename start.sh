#!/bin/bash
[ -z "$WORLD" ] && echo "Need to set WORLD" && exit 1;
ldd ./Bin/TerrariaServer.bin.x86_64
./Bin/TerrariaServer \
  -port ${PORT:-7777} \
  -players ${MAX_PLAYERS:-4} \
  -pass ${PASSWORD:-''} \
  -motd ${MOTD:-Terarria Server} \
  -world $WORLD \
  -secure \
  -steam \
  -lobby friends
