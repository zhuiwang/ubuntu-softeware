#!/bin/bash

path=$(pwd)
if [ ! -f "/usr/sbin/privoxy" ];then
    sudo apt-get install privoxy
    if [ $? -eq 0 ];then
        sudo cp $path/config /etc/privoxy/config
    fi
fi

ssr stop
sudo service privoxy start
ssr start

export http_proxy=http://172.17.0.1:8123
export https_proxy=https://172.17.0.1:8123

curl ip.gs

