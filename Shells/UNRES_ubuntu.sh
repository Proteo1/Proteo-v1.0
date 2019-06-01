#! /bin/bash

wget https://unres.pl/sites/unres/files/latest/unrespack-v.3.2.1.tar.gz
tar xvzf unrespack-v.3.2.1.tar.gz
cd unrespack-v.3.2.1
mkdir build 
cd build

cmake ..
make 
sudo make install
