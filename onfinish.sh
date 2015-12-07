#!/bin/bash
USER=pkos
PASS=22022009
PORT=9091
if [ -d /mnt/Media/New ]; then
  echo "\"$TR_TORRENT_NAME\" on \"$TR_TIME_LOCALTIME\" (id: $TR_TORRENT_ID)" >> /home/pi/downloaded.log
  cp -fr "$TR_TORRENT_DIR/$TR_TORRENT_NAME" /mnt/Media/New/ >> /home/pi/downloaded.log
  transmission-remote $PORT --auth $USER:$PASS --torrent $TR_TORRENT_ID --remove
  rm -fr "$TR_TORRENT_DIR/$TR_TORRENT_NAME" 
fi
