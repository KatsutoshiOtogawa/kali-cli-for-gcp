#!/usr/bin/env bash

echo "# kali-last-snapshot is " >> /etc/apt/sources.list
echo "deb http://http.kali.org/kali kali-last-snapshot main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://http.kali.org/kali kali-last-snapshot main contrib non-free" >> /etc/apt/sources.list
mkdir /etc/apt/preferences.d

wget https://raw.githubusercontent.com/KatsutoshiOtogawa/kali-cli-for-gcp/main/10/etc/apt/preferences.d/kali-linux.pref

mv kali-linux.pref /etc/apt/preferences.d/ 

wget -qO- https://archive.kali.org/archive-key.asc | apt-key add

apt update
apt upgrade -y 
