#!/bin/bash

sudo supervisorctl -uziztour -pziz123321 status | grep $1 || tee /etc/supervisor.conf/$1.conf << EOF
[program:$1]
command=/data/appdir/jdk/bin/java -jar  $1.jar
autostart=true ;
autorestart=true
redirect_stderr=true ;
user=root
directory=/www/$1/
stdout_logfile = /data/logs/supervisor/$1.log
EOF

sudo supervisorctl -uziztour -pziz123321 update $1
