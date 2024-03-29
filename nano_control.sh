#!/bin/bash

export NANOLEAFS_IP="192.168.82.125"

ts=$(date +%s)
echo "TIME: $ts"
if [ $(( ts % 3 )) -eq 1 ]; then
 echo "green"
 curl -s --location --request PUT "http://$NANOLEAFS_IP:16021/api/v1/$AUTH_TOKEN/state" --data "{\"hue\" : {\"value\":120}}"
elif [ $(( ts % 3 )) -eq 2 ]; then
 echo "yellow"
 curl -s --location --request PUT "http://$NANOLEAFS_IP:16021/api/v1/$AUTH_TOKEN/state" --data "{\"hue\" : {\"value\":39}}"
else
 echo "red"
 curl -s --location --request PUT "http://$NANOLEAFS_IP:16021/api/v1/$AUTH_TOKEN/state" --data "{\"hue\" : {\"value\":7}}"
fi
