#!/bin/bash
sudo apt update -y

sudo apt-get install  curl apt-transport-https ca-certificates software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo snap install docker

sudo systemctl status docker >> /dev/null
if [ $? -eq 0 ]
then
  echo "Docker incializado!"
else
  echo "Nao foi possivel inicializar o docker!"
fi
