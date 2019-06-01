#! /bin/bash

#DOWNLOADING
git clone --recursive https://github.com/soedinglab/CCMpred.git

#DEPENDENCIES
sudo apt install gcc
sudo apt install build-essential
sudo apt install cmake
sudo install python-pip
pip install numpy
pip install biopython

#INSTALLATION
cd CCMpred/
cmake .
make

