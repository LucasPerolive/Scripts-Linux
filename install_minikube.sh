#!/bin/bash

curl -Lo minikube https://storage.googleapis.com/minikube/releases/v1.12.1/minikube-linux-amd64 \ && chmod +x minikube
sudo install minikube /usr/local/bin/

if [ $? -eq 0 ]
then
  echo "O minikube foi instalado com sucesso!"
else
  echo "Não foi possivel instalar o minikube!"
fi
