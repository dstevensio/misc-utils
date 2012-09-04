#!/bin/bash

if [ $(ps -fu$USER | grep [r]edis-server | wc -l | tr -s "\n") -eq 0 ]
then
        TIMESTAMP=$(date +%y-%m-%d-%H:%M:%S)
        echo "redis server was down / starting it at ${TIMESTAMP}"
        export PATH=PATH_TO_REDIS_BINARY:$PATH
        cd PATH_TO_REDIS_CONFIG_FILE && redis-server redis.conf > /dev/null
fi
