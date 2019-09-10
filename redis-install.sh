#!/bin/bash

# for ubuntu
sudo apt-get update
if [ $? -eq 0 ]; then
    sudo apt-get install redis-server
else
    exit 1
fi


# for Linux
#path=$(pwd)

#if [ ! -f "$(pwd)/redis-2.8.17.tar.gz" ];then
#    wget http://download.redis.io/releases/redis-2.8.17.tar.gz
#fi

#if [ -d "$(pwd)/redis-2.8.17" ];then
#    rm -rf $(pwd)/redis-2.8.17
#fi

#tar xzf redis-2.8.17.tar.gz
#cd $(pwd)/redis-2.8.17
#make

#$ cd src
#$ ./redis-server
