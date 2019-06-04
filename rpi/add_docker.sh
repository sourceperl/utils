#!/bin/bash

# add packages to allow https repository
sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates software-properties-common python-pip

# add new source to APT
curl -fsSL https://download.docker.com/linux/raspbian/gpg | sudo apt-key add -
echo "deb https://download.docker.com/linux/raspbian stretch stable" | sudo tee /etc/apt/sources.list.d/docker.list

# refresh packages index
sudo apt-get update

# add docker
sudo apt-get -y install docker-ce docker-ce-cli

# add docker-compose
sudo pip install docker-compose

# add user pi to docker group (you must close/open session to take effect)
sudo usermod -aG docker pi

# notify end of setup process
echo "setup finish, you can test docker with: \"sudo docker run hello-world\""
