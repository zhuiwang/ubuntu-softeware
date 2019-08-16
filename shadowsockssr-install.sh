#!/bin/bash

ssrpath="/usr/local/bin/ssr"
ubuntu_software_path=$(pwd)
echo $ubuntu_software_path

if [ ! -f "$ssrpath" ];then
    wget http://www.djangoz.com/ssr
    sudo mv ssr /usr/local/bin
    sudo chmod 766 /usr/local/bin/ssr
    ssr install
fi
if [ ! -f "$ubuntu_software_path/LATEST.tar.gz" ];then
    wget https://download.libsodium.org/libsodium/releases/LATEST.tar.gz
    tar zxf LATEST.tar.gz
    cd libsodium*
    ./configure
    sudo make && sudo make install
fi

cd $ubuntu_software_path

cp /etc/ld.so.conf $ubuntu_software_path/ld.so.conf
if [ ! -f "$ubuntu_software_path/ldchange.log" ];then
    echo "/lib" >> $ubuntu_software_path/ld.so.conf
    echo "/usr/lib64" >> $ubuntu_software_path/ld.so.conf
    echo "/usr/local/lib" >> $ubuntu_software_path/ld.so.conf
    echo "/etc/ld.so.conf has been change" >> $ubuntu_software_path/ldchange.log
    sudo cp $ubuntu_software_path/ld.so.conf /etc/ld.so.conf
fi

sudo ldconfig

#sudo apt-get install shadowsocks
sudo cp $ubuntu_software_path/config.json /usr/local/share/shadowsocksr/config.json
export http_proxy=socks5://127.0.0.1:1080
export https_proxy=socks5://127.0.0.1:1080
ssr stop
ssr start
curl ip.gs
#sudo apt-get install privoxy
#sudo sslocal -c /etc/shadowsocks/config.json &
