#!/bin/bash

export NANOLEAFS_IP="192.168.82.125"

if [ "$ITER" -eq "" ]; then
 export ITER=1
 echo "SET ITER: $ITER"
fi

export ITER=$((ITER+1))

echo "ITER: $ITER"

if [ $(( ITER % 3 )) -eq 1 ]; then
 echo "green"
 curl --location --request PUT "http://$NANOLEAFS_IP:16021/api/v1/$AUTH_TOKEN/state" --data "{\"hue\" : {\"value\":120}}"
elif [ $(( ITER % 3 )) -eq 2 ]; then
 echo "yellow"
 curl --location --request PUT "http://$NANOLEAFS_IP:16021/api/v1/$AUTH_TOKEN/state" --data "{\"hue\" : {\"value\":39}}"
else
 echo "red"
 curl --location --request PUT "http://$NANOLEAFS_IP:16021/api/v1/$AUTH_TOKEN/state" --data "{\"hue\" : {\"value\":7}}"
fi
