#!/bin/bash

sudo apt-get install shadowsocks
sudo cp ./shadowsocks.d/config.json /etc/shadowsocks/config.json
export http_proxy=socks5://127.0.0.1:1080
export https_proxy=socks5://127.0.0.1:1080

sudo apt-get install privoxy
sudo sslocal -c /etc/shadowsocks/config.json &
