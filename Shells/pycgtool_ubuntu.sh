#! /bin /bash

wget https://github.com/jag1g13/pycgtool.git
#installation commands//
sudo apt-get install python-pip
sudo apt-get install python3
pip install numpy
pip install cython
pip install simpletraj
cd pycgtool
python setup.py install

