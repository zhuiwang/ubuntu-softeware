#!/bin/bash

echo "start install package"
sudo apt-get install -y libcurl3-gnutls=7.47.0-1ubuntu2 --allow-downgrades >> ./install.log
sudo apt-get install vim-common=2:7.4.1689-3ubuntu1 --allow-downgrades >> ./install.log

sudo apt-get install -y vim curl git ifstat wget gawk exuberant-ctags >> ./install.log
