#!/bin/bash
# Auther wangzhui
# This is a script for install wechatpythonstatudy web local environment

for x in `gem list --no-versions`; do sudo gem uninstall $x -a -x -I; done >> ./install.log
webpath="/home/$USER/wechatpythonstudy.github.io"
#sudo apt-get remove -y git ruby-dev ruby > ./install.log
#sudo apt-get remove -y zlib1g=1:1.2.8.dfsg-2ubuntu4 >> ./install.log
#sudo apt-get install git ruby-dev ruby zlib1g=1:1.2.8.dfsg-2ubuntu4
sudo apt-get update >> ./install.log
if [ $? -eq 0 ];then
    sudo apt-get install -y git ruby-dev ruby gem >> ./install.log
    sudo apt-get install zlib1g=1:1.2.8.dfsg-2ubuntu4 -y --allow-downgrades >> ./install.log 
fi

if [ $? -eq 0 ];then
    echo "Install git ruby-dev ruby 7.47.0-1ubuntu2 zlib1g=1:1.2.8.dfsg-2ubuntu4 Success!"
else
    echo "Install environment fail!"
    exit 1
fi
if [ ! -d $webpath ];then
    echo "Clone repo to $webpath"
    #git clone git@github.com:wechatpythonstudy/wechatpythonstudy.github.io.git $webpath
    git clone https://github.com/wechatpythonstudy/wechatpythonstudy.github.io.git $webpath
fi

if [ -d $webpath ];then
    cd $webpath
    echo "sudo gem install jekyll"
    sudo gem install jekyll >> ./install.log
    echo "sudo gem install bundle"
    sudo gem install bundle >> ./install.log
    echo "bundle install"
    bundle install >> ./install.log
    echo "bundle exec jekyll serve"
    bundle exec jekyll serve
fi

