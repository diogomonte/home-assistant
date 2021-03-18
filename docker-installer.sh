#!/bin/bash

set -X

# Install Docker
echo "Installing docker"
curl -sSL https://get.docker.com | sh

# Add permission to Pi user to run docker commands
echo "Adding perming to pi user"
sudo usermod -aG docker pi

#install proper dependencies
echo "Installing proper dependencies for docker"
sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get install -y python3 python3-pip
sudo apt-get remove python-configparser

# install docker compose
echo "Installing docker compose"
sudo pip3 -v install docker-compose
