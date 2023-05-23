#!/bin/bash

sudo apt update

sudo apt-get install xrdp -y
sudo apt-get install lxde -y

echo "Mude a senha de usuario para acessar por RDP:"
echo "sudo passwd <user>"
