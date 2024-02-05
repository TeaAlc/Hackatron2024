#!/bin/bash

export NANOLEAFS_IP="192.168.82.125"
rnd=$RANDOM
echo "RND: $rnd"

if [ $rnd -gt 16000 ]; then
 curl --location --request PUT "http://$NANOLEAFS_IP:16021/api/v1/$AUTH_TOKEN/state" --data "{\"hue\" : {\"value\":120}}"
else
 curl --location --request PUT "http://$NANOLEAFS_IP:16021/api/v1/$AUTH_TOKEN/state" --data "{\"hue\" : {\"value\":7}}"
fi
