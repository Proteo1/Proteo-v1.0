#! /bin/bash

#DOWNLOADING
git clone https://github.com/sib-swiss/Knoto-ID.git

#DEPENDENCIES
sudo apt install r-base -y
sudo apt install gcc
sudo apt install build-essential
sudo apt install cmake
sudo apt-get install libboost-all-dev
sudo apt-get install aptitude
sudo apt install pandoc
Rscript Knoto-ID.R

#INSTALLATION
cd Knoto-ID/
mkdir build
cd build/
cmake -DCMAKE_INSTALL_PREFIX=install_path/   -DCMAKE_BUILD_TYPE=Release .. 
make
make doc
make test
make install

