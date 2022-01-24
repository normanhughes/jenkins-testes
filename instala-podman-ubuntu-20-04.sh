#!/bin/bash
. /etc/os-release
echo "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /" | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list
curl -L "https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/Release.key" | sudo apt-key add -
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install podman

#install podman-compose using python
sudo apt-get -y install python3-pip
pip3 install podman-compose

# mensagem 
echo 'Instalado podman e podman-compose com sucesso!'
echo 'LEMBRE DE SEMPRE USAR SUDO PARA OS COMANDOS NOS DOIS!'