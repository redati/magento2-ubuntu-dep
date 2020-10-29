#!/bin/bash

#versões

PHP_V=php7.4
ELASTIC=7.x
MYSQL=ps80
PCRE_VERSION=8.44
ZLIB_VERSION=1.2.11


# instalação 01 - dependencias
sudo apt-get -y update && apt-get -y upgrade
sudo apt-get install -y autoconf automake libtool zlib1g-dev unzip libssl-dev  libxml2-dev libcurl4-openssl-dev git build-essential flex gcc make pkg-config g++ libfl-dev bison
sudo apt-get install -y software-properties-common curl openssl ca-certificates postfix gnupg2 default-jdk rabbitmq-server net-tools
sudo apt-get install -y optipng gifsicle jpegoptim webp libgeoip-dev luajit nginx-common redis-server
sudo apt-get install -y libvips libvips-dev

#instalação 02 - PHP
sudo apt-get install ${PHP_V}-xmlrpc ${PHP_V}-fpm ${PHP_V}-opcache ${PHP_V}-gd ${PHP_V}-zip ${PHP_V}-curl ${PHP_V}-mbstring ${PHP_V}-redis ${PHP_V}-xml ${PHP_V}-soap ${PHP_V}-dev ${PHP_V}-imap ${PHP_V}-pdo ${PHP_V}-mysql ${PHP_V}-mysqli ${PHP_V}-bcmath ${PHP_V}-intl ${PHP_V}-xsl ${PHP_V}-apcu ${PHP_V}-memcached  ${PHP_V}-imagick
sudo pecl install lzf
sudo pecl install vips

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
