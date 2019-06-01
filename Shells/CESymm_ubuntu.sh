#! /bin/bash

#DOWNLOADING
wget https://github.com/rcsb/symmetry/releases/download/symmetry-2.1.0/cesymm-2.1.0.tar.gz

#DEPENDENCIES
sudo apt-get install openjdk-8-jre

#INSTALLATION
tar -xf cesymm-2.1.0.tar.gz
cd cesymm-2.1.0/
sudo bash runCESymm.sh


