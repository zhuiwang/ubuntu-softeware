#!/usr/bin/expect

set server_username wangzhui
set server_passwd wangzhui
set timeout 3
spawn scp $server_username@10.250.0.240:~/enp130s0f1_0628*.pcap /data/wireshark-sonic/
expect "password:"
send "$server_passwd\r"
interact


set switch_username admin
set switch_passwd asteros
set timeout 3
spawn scp $switch_username@10.250.0.225:~/ethernet*_0628*.pcap /data/wireshark-sonic/
expect "password:"
send "$switch_passwd\r"
interact
