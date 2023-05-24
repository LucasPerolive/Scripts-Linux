#!/bin/bash

sudo apt-get install curl -y
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/

if [ $? -eq 0 ]
then
  echo "O Kubectl foi instalado com sucesso!"
else
  echo "Nao foi possivel instalar o Kubectl!"
fi
