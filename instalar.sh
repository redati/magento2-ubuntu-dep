#!/bin/bash


#versões
ELASTIC=7.x
MYSQL=ps80
PCRE_VERSION=8.44

#instalação 03 - MYSQL
cd $HOME
wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb
sudo dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb
sudo percona-release setup $MYSQL
sudo apt-get install percona-server-server
apt-get install -y phpmyadmin

#instalação 04 - ELASTICSEARCH
curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/${ELASTIC}/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-${ELASTIC}.list
sudo apt -y update
sudo apt -y install elasticsearch

#instalação 03 - TENGINE
