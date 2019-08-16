#!/usr/bin/expect

set username wangzhui
set passwd wangzhui
set timeout 30
spawn sudo ifconfig enp0s31f6 mtu 1400 up
expect "password for wangzhui:"
send "wangzhui\r"
sleep 4
spawn sudo ip route add default via 192.168.10.1 dev enp0s31f6
expect "password for wangzhui:"
send "wangzhui\r"
sleep 1
spawn sudo ip route add default via 192.168.10.1 dev enp0s31f6
expect "password for wangzhui:"
send "wangzhui\r"
sleep 1
spawn sudo ip route add 172.16.20.1 via 192.168.10.2 dev enp0s31f6
expect "password for wangzhui:"
send "wangzhui\r"
sleep 1
spawn sudo ip route add 45.79.87.85 via 192.168.10.2 dev enp0s31f6
expect "password for wangzhui:"
send "wangzhui\r"
sleep 1
spawn sudo service privoxy start
expect "password for wangzhui:"
send "wangzhui\r"
sleep 1
spawn ssr start
expect "password for wangzhui:"
send "wangzhui\r"
interact
