#! /bin/bash

#DOWNLOADING
wget http://brucelab.gs.washington.edu/XLmap/XLmap_0.2.1.tar.gz

#DEPENDENCIES
sudo apt install r-base

#INSTALLATION
Rscript XLmap.R
