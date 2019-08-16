#!/bin/bash

ubuntu_software_path=$(pwd)
echo $ubuntu_software_path

# Do not change the order below
source ./origin-remove.sh
cd $ubuntu_software_path
source ./package-install.sh
cd $ubuntu_software_path
source ./shadowsockssr-install.sh
cd $ubuntu_software_path
source ./docker-install.sh
cd $ubuntu_software_path
source ./http-privoxy.sh
cd $ubuntu_software_path


# Add your install script
source ./git-config.sh
cd $ubuntu_software_path
source ./spf13-vim-install.sh
cd $ubuntu_software_path
source ./chrome-install.sh
cd $ubuntu_software_path
source ./install-gem-jekyll-bundle.sh
cd $ubuntu_software_path
source ./typora.sh
cd $ubuntu_software_path

