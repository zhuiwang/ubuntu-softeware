#!/bin/bash

# unsinstall old verson
sudo apt-get remove docker docker-engine docker.io containerd runc

# update the apt package

sudo apt-get update

# Install packages to allow apt to use a repository over HTTPS:

sudo apt-get install  \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common

# Add Docker’s official GPG key:

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

# 

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce

apt-cache madison docker-ce
