#! /bin/bash

#DOWNLOADING
git clone https://github.com/wzmao/RDb2C.git

#DEPENDENCIES
sudo apt install python-pip
pip install numpy
pip install multiprocessing
pip install os
pip install scipy
pip install sklearn

#INSTALLATION
cd RDb2C
tar -xf RDb2C_Train.tar.gz
cd RDb2C_Train/
python train.py
