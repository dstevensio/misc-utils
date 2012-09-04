#!/bin/bash
if [ ! -f PATH_TO_NGINX_LOGS/nginx.pid ];
then
    cd PATH_TO_NGINX_INSTALL && ./sbin/nginx
    TIMESTAMP=$(date +%y-%m-%d-%H:%M:%S)
    echo 'nginx down / started it again at' ${TIMESTAMP} ' CST'
fi
