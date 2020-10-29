#!/bin/bash

cd &HOME

#versões
PHP_V=php7.4

# instalação 01 - dependencias
sudo apt-get -y update && apt-get -y upgrade
sudo apt-get install -y autoconf automake libtool zlib1g-dev unzip libssl-dev  libxml2-dev libcurl4-openssl-dev git build-essential flex gcc make pkg-config g++ libfl-dev bison
sudo apt-get install -y software-properties-common curl openssl ca-certificates postfix gnupg2 default-jdk rabbitmq-server net-tools
sudo apt-get install -y optipng gifsicle jpegoptim webp libgeoip-dev luajit nginx-common redis-server
sudo apt-get install -y libvips libvips-dev libatomic-ops-dev libjemalloc-dev libperl-dev libgd-dev libxslt-dev libxml2-dev

#instalação 02 - PHP
sudo apt-get install ${PHP_V}-xmlrpc ${PHP_V}-fpm ${PHP_V}-opcache ${PHP_V}-gd ${PHP_V}-zip ${PHP_V}-curl ${PHP_V}-mbstring ${PHP_V}-redis ${PHP_V}-xml ${PHP_V}-soap ${PHP_V}-dev ${PHP_V}-imap ${PHP_V}-pdo ${PHP_V}-mysql ${PHP_V}-mysqli ${PHP_V}-bcmath ${PHP_V}-intl ${PHP_V}-xsl ${PHP_V}-apcu ${PHP_V}-memcached  ${PHP_V}-imagick
sudo pecl install lzf
sudo pecl install vips
sudo curl -s https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
