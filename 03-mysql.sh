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


https://www.percona.com/blog/2020/12/02/enabling-jemalloc-on-percona-server-for-mysql-5-7-and-8-0-series/
apt-get install libjemalloc1

nano /lib/systemd/system/mysql.service

check EnvironmentFile=-/etc/default/mysql

cat /etc/default/mysql
LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so.1


$check
apt install percona-toolkit
pt-mysql-summary | grep -A5 -i "memory management"
