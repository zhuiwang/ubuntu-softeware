#!/bin/bash

# unsinstall old verson
sudo apt-get remove docker docker-engine docker.io containerd runc

# update the apt package
sudo apt-get update

# Install packages to allow apt to use a repository over HTTPS:

if [ $? -eq 0 ];then
    sudo apt-get install  \
        apt-transport-https \
        ca-certificates \
        gnupg2 \
        software-properties-common
else
    exit 1
fi
# Add Docker’s official GPG key:

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

# 

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
#
sudo apt-get update

if [ $? -eq 0 ];then
    sudo apt-get install -y docker-ce
else
    echo "update fail exit with code 1"
fi

echo "add $USER to docker group"
sudo usermod -aG docker $USER
sudo chmod 777 /var/run/docker.sock
docker run hello-world
#apt-cache madison docker-ce
