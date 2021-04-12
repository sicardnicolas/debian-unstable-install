#!/bin/bash

echo "Run as root (su -)"

apt update

apt install -y sudo
usermod -aG sudo nico

mv /etc/apt/sources.list /etc/apt/sources.list.stable

touch /etc/apt/sources.list
echo "deb http://deb.debian.org/debian/ unstable main" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ unstable main" >> /etc/apt/sources.list

apt update
apt full-upgrade -y

apt install -y --no-install-recommends budgie-desktop lightdm firefox
apt remove lightdm
apt install -y lightdm
apt install -y terminator
apt install -y nautilus moka-icon-theme

