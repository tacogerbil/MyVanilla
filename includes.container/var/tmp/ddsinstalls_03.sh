#!/bin/bash
apt install curl gpg
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/ 
sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/ubuntu/22.04/prod jammy main" > /etc/apt/sources.list.d/microsoft-ubuntu-jammy-prod.list' 

rm microsoft.gpg
apt update
apt install -y gnome-keyring
apt install -y libjavascriptcoregtk-4.0-18
apt install -y libwebkit2gtk-4.0-37
apt install -y msalsdk-dbusclient
apt install -y intune-portal