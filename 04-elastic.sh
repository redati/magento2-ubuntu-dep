#!/bin/bash


#versões
ELASTIC=7.x

curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/${ELASTIC}/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-${ELASTIC}.list
sudo apt -y update
sudo apt -y install elasticsearch
