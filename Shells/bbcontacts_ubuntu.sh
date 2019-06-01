#! /bin/bash

#DOWNLOADING
git clone https://github.com/soedinglab/bbcontacts.git

#DEPENDENCIES
sudo apt install python-pip
pip install numpy
pip install scipy


#INSTALLATION
cd bbcontacts
python setup.py install
