#!/bin/bash
cd /www/$1/
cnpm install
if [ $1 = "biz" -a $1 = "h5" ];then
   npm run build
fi
pm2 list | grep $1 || NODE_ENV=$2 pm2 start app.js -i max --name $1
pm2 reload $1
pm2 dump
