#! /bin/bash
 #site
wget https://github.com/godatadriven/evol.git 

#installation//repositories
sudo apt-get update
sudo apt-get install python-pip
sudo apt-get install python3.6
sudo apt-get install python3.7
cd evol
pip install evol
python setup.py install

