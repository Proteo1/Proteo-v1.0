#! /bin/bash
git clone https://github.com/pierrepo/PBxplore.git
unzip PBxplore-master.zip
cd PBxplore-master
sudo apt update
pip3 install numpy
pip3 install MDAnalysis
pip3 install Matplotlib
pip3 install WebLogo 3


sudo python setup.py install
