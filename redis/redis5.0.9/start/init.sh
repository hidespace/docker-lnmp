#!/usr/bin/env bash

WS_PATH=/ws/volumes
REDIS=redis5.0.9

mkdir -p $WS_PATH/$REDIS/{data,conf}
/bin/cp -rf ./conf/* $WS_PATH/$REDIS/conf

#docker-compose up -d


