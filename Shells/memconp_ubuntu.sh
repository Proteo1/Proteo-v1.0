#! /bin/bash

#DOWNLOADING
wget webclu.bio.wzw.tum.de/MemConP/memconp-1.1.tar.gz

#DEPENDENCIES
sudo apt install gcc
sudo apt install build-essentiL
sudo apt install openjdk-8-jre

#INSTALLATION
tar -xf memconp-1.1.tar.gz
cd memconp-1.1
./configure
make 
sudo make install
