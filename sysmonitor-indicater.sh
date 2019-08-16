#!/bin/bash
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
sudo apt-get update

if [ $? -eq 0 ];then
    sudo apt-get install indicator-sysmonitor
fi
