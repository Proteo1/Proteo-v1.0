#! /bin/bash

#DOWNLOADING
wget https://www.ccb.uni-saarland.de/wp-content/uploads/2016/01/BALL-SNP.tar.gz

#DEPENDENCIES
sudo apt install gcc
sudo apt install build-essential
sudo apt install libgsl0-dev liblpsolve55-dev libsvm-dev libqt4-dev libphonon-dev libeigen3-dev python-sip-dev libtbb-dev libglew-dev libloudmouth1-dev doxygen texlive-base cmake build-essential bison flex libboost-all-dev

#INSTALLATION
tar -xf BALL-SNP.tar.gz
cd BALL-SNP/BALL/build
cmake ..
make
