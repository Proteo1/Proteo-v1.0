#! /bin/bash
#site
wget https://github.com/shirtsgroup/physical_validation.git

#installation commands//
sudo apt-get install python-pip
pip install numpy
pip install scipy 
pip install matplotlib
pip install pymbar
cd physical_validation
python install setup.py

