#!/bin/bash

if [ ! -f "/etc/apt/sources.list.d/google-chrome.list" ];then
    sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
fi

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt-get update
if [ $? -eq 0 ];then
    sudo apt-get install google-chrome-stable
fi
