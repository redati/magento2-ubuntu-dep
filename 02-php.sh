#!/bin/bash

cd &HOME

#versões
PHP_V=php7.4

#instalação 02 - PHP
sudo apt-get install ${PHP_V}-xmlrpc ${PHP_V}-fpm ${PHP_V}-opcache ${PHP_V}-gd ${PHP_V}-zip ${PHP_V}-curl ${PHP_V}-mbstring ${PHP_V}-redis ${PHP_V}-xml ${PHP_V}-soap ${PHP_V}-dev ${PHP_V}-imap ${PHP_V}-pdo ${PHP_V}-mysql ${PHP_V}-mysqli ${PHP_V}-bcmath ${PHP_V}-intl ${PHP_V}-xsl ${PHP_V}-apcu ${PHP_V}-memcached  ${PHP_V}-imagick
sudo pecl install lzf
sudo pecl install vips
sudo pecl install datadog_trace
sudo curl -s https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
