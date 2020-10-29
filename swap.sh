#!/bin/bash

cd /
dd if=/dev/zero of=/swapfile bs=1M count=6144
mkswap /swapfile
swapon /swapfile
echo /etc/fstab "/swapfile swap swap defaults 0 0"
