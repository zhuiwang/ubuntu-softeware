#!/bin/bash

export http_proxy=http://172.17.0.1:8123
export https_proxy=https://172.17.0.1:8123

curl ip.gs

if [ $? -eq 0 ];then
    if [ ! -d "/home/$USER/.vim/bundle" ];then
        curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
        if [ -f "/home/$USER/.vimrc.local" ];then
            rm -rf ~/.vimrc.local
        fi
        echo colorscheme elflord >> ~/.vimrc.local
    fi
fi

