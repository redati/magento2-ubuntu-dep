#!/bin/bash


#versões
MYSQL=ps80

#instalação 03 - MYSQL
cd $HOME
wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb
sudo dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb
sudo percona-release setup $MYSQL
sudo apt-get install percona-server-server
apt-get install -y phpmyadmin
