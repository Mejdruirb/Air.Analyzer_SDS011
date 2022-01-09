#!/bin/bash
# install.sh

cd ../

sudo apt-get update
sudo apt-get install -y python3 python3-pip python3-dev libffi-dev libssl-dev

pip3 install pyserial adafruit-io

curl -sSL https://get.docker.com | sh
sudo usermod -aG docker ${USER}
sudo pip3 install docker-compose
sudo systemctl enable docker
newgrp docker
