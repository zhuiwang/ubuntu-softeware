#!/bin/bash


export http_proxy=socks5://127.0.0.1:1080
export https_proxy=socks5://127.0.0.1:1080

curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
rm -rf ~/.vimrc.local
echo colorscheme peaksea >> ~/.vimrc.local
