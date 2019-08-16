#!/usr/bin/expect

set username sonic
set passwd sonic
set timeout 3
spawn ssh -l $username 10.250.0.240
expect "password:"
send "$passwd\r"
interact
