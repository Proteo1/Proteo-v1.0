#! /bin/bash

#site
wget https://github.com/whwang299/VB-DCMM.git
 #installtion commands
sudo apt-get install python-pip
sudo apt-get install python3
pip3 install numpy
pip3 install scipy
pip3 install matplotlib
pip3 install cython
cd VB-DCMM
python install setup.py
