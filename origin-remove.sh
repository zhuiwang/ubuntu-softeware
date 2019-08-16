#!/bin/bash

ping -c 1 114.114.114.114 > /dev/null 2>&1
if [ $? -eq 0 ];then
    echo "Internet Connnet Normal"
else
    echo "Internet Connet Abnormal"
	exit 1
fi

sudo apt-get update > ./install.log

if [ $? -eq 0 ];then

	sudo apt-get install screenfetch >> ./install.log
else
	echo "Apt-get update fail, please check your net work"
	exit 1
fi

if [ $? -eq 0 ];then
	echo "Wellcome to use ubuntu software install scripts"
	echo "Auther by wangzhui" 
	screenfetch
	screenfetch >> ./install.log
else
	echo "Install screenfetch fail, please check your net work"
fi

echo "Removing libreoffice-common ..."
sudo apt-get remove -y libreoffice-common >> ./install.log
echo "Removing unity-webapps-common ..."
sudo apt-get remove -y unity-webapps-common >> ./install.log

sudo apt-get remove -y thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot >> ./install.log

echo "Removing gnome ..."
sudo apt-get remove -y gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku  landscape-client-ui-install >> ./install.log

echo "Removing onboard deja-dup firefox ..."
sudo apt-get remove -y onboard deja-dup >> ./install.log
sudo apt-get remove -y firefox >> ./install.log
