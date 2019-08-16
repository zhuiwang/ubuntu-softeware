#!/usr/bin/expect

set username wangzhui
set passwd wangzhui
set timeout 3
spawn sudo service privoxy start
expect "password for wangzhui:"
send "wangzhui\r"
spawn sslocal  -c /etc/shadowsocks/config.json
interact
