#! /bin/bash

#DOWNLOADING
wget zhanglab.ccmb.med.umich.edu/STRUM/download/STRUM.tar.bz2

#DEPENDENCIES
sudo apt-get install perl




#INSTAllATION
tar -xvf STRUM.tar.bz2
cd STRUM
sudo ./runSTRUM.pl
