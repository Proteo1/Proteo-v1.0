#! /bin/bash

#DOWNLOADING
git clone https://github.com/mskwark/pconsc.git

#DPENDENCIES
sudo apt install python-pip
sudo apt install gcc
sudo apt install build-essential
sudo apt install hhsuite
wget http://eddylab.org/software/hmmer/hmmer.tar.gz
tar -xf hmmer.tar.gz
cd hmmer-3.2.1
./configure 
make
make check                 
sudo make install               
cd easel 
sudo make install   
cd ..
cd ..

#INSTALLATION
python predict.py
