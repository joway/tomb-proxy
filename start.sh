#!/bin/sh
LOG_LEVEL=${LOG_LEVEL:-"info"}

echo "start application"
sed 's/{LOG_LEVEL}/'$LOG_LEVEL'/' conf/nginx-template.conf > conf/nginx.conf
openresty -p `pwd`/ -c conf/nginx.conf
