#!/bin/bash

#versões

PHP_V='php7.4'
PCRE_VERSION=8.44
ZLIB_VERSION=1.2.11


# instalação 01
apt-get update && apt-get upgrade

apt-get install -y autoconf automake libtool zlib1g-dev unzip libssl-dev  libxml2-dev libcurl4-openssl-dev git build-essential flex gcc make pkg-config g++ libfl-dev bison
apt-get install -y software-properties-common curl openssl ca-certificates postfix gnupg2 default-jdk rabbitmq-server net-tools
apt-get install -y optipng gifsicle jpegoptim webp libgeoip-dev luajit nginx-common redis-server
apt-get install -y libvips libvips-dev

apt-get install ${PHP_V}-xmlrpc ${PHP_V}-fpm ${PHP_V}-opcache ${PHP_V}-gd ${PHP_V}-zip ${PHP_V}-curl ${PHP_V}-mbstring ${PHP_V}-redis ${PHP_V}-xml ${PHP_V}-soap ${PHP_V}-dev ${PHP_V}-imap ${PHP_V}-pdo ${PHP_V}-mysql ${PHP_V}-mysqli ${PHP_V}-bcmath ${PHP_V}-intl ${PHP_V}-xsl ${PHP_V}-apcu ${PHP_V}-memcached  ${PHP_V}-imagick
pecl install lzf
pecl install vips

apt-get install -y phpmyadmin
