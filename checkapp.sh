#!/bin/bash

if [ $(ps -fu$USER | grep [n]ode | wc -l | tr -s "\n") -eq 0 ]
then
        TIMESTAMP=$(date +%y-%m-%d-%H:%M:%S)
        echo "node app was down / starting it at ${TIMESTAMP}"
        export NODE_ENV=production
        export PATH=~/bin:$PATH
        cd PATH_TO_SCRIPT && forever start SCRIPT_NAME.js > /dev/null
fi
