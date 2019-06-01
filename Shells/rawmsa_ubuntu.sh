#! /bin/bash

#DOWNLOADING
git clone https://bitbucket.org/clami66/rawmsa.git

#INSTALLATION
sudo apt install python-pip
pip install numpy
pip install keras
pip install utils
pip install backend
pip install tensorflow
pip install tensorflow_backend
pip install conv_utils

#INSTALLATION
cd rawmsa/scripts/cmap
python predict_cmap.py
