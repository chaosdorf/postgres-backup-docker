#!/bin/sh

while true
do
  DATE=$(date +%y.%m.%d-%H:%M:%S)
  FILE=pg-$DATE.sql.gz
  echo creating backup file: $FILE
  pg_dumpall | gzip > /backup/$FILE
  sleep 1h
done
