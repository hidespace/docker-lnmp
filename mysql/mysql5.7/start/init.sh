#!/usr/bin/env bash

mkdir -p /ws/volumes/mysql5.7/data
cp -rf ./conf.d /ws/volumes/mysql5.7

#docker-compose up -d