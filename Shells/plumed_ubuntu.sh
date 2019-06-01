#! /bin/bash 

wget --no-check-certificate https://github.com/plumed/plumed2/releases/download/v2.5.1/plumed-2.5.1.tgz
tar xvzf plumed-2.5.1.tgz

 cd plumed-2.5.1
./configure --prefix=$HOME/opt
 make
 make doc 