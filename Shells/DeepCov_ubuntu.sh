#! /bin/bash

#DOWNLOADING
git clone https://github.com/psipred/DeepCov.git

#DEPENDENCIES
sudo apt install gcc
sudo apt install build-essential
sudo apt install pyhton-pip
sudo apt install python3
pip install numpy
pip install Theano
pip install Lasagne
pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip
sudo apt install python3-numpy
sudo apt install python3-theano
sudo apt install python3-lasagne

#INSTALLATION
 sudo bash setup.sh 
