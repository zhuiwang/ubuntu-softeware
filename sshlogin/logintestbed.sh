#!/usr/bin/expect

set username wangzhui
set passwd wangzhui
set timeout 3
spawn ssh -l $username 10.250.0.240
expect "password:"
send "wangzhui\r"
interact
