#! /bin/bash

git clone https://codeload.github.com/jdrudolph/photon/zip/master
unzip photon-master.zip
cd photon-master
sudo python setup.py install
pip install photon_ptm
pip install --upgrade
