#!/bin/bash
USER=pkos
PASS=22022009
PORT=9091
TARGET_FOLDER=/mnt/Media/New/
LOGFILE=/home/osmc/downloaded.log
if [ ! -f $LOGFILE]; then
  echo "Transmission download log" > $LOGFILE
fi
if [ -d "$TARGET_FOLDER" ]; then
  echo "\"$TR_TORRENT_DIR/$TR_TORRENT_NAME\" at \"$TR_TIME_LOCALTIME\" (id: $TR_TORRENT_ID)" >> $LOGFILE
  transmission-remote $PORT --auth $USER:$PASS --torrent $TR_TORRENT_ID --remove
  cp -fr "$TR_TORRENT_DIR/$TR_TORRENT_NAME" $TARGET_FOLDER >> $LOGFILE  
  if [ -d "$TARGET_FOLDER/$TR_TORRENT_NAME"]; then
    rm -fr "$TR_TORRENT_DIR/$TR_TORRENT_NAME"
  fi 
fi
