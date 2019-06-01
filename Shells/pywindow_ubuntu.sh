#! /bin/bash 
git clone https://github.com/marcinmiklitz/pywindow.git
unzip pywindow-master.zip
cd pywindow-master
sudo apt-get update
sudo apt-get install python2.7

sudo python setup.py install

