#!/usr/bin/expect

set username admin
set passwd asteros
set timeout 3
spawn ssh -l $username 10.250.0.225
expect "password:"
send "asteros\r"
interact
