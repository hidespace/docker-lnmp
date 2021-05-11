#!/usr/bin/env bash

VOL_PATH=/ws/volumes
REDIS=redis5.0.9

mkdir -p $VOL_PATH/$REDIS/{data,conf} && /bin/cp -rf ./conf/* $VOL_PATH/$REDIS/conf

#docker-compose -f docker-compose.yml up -d