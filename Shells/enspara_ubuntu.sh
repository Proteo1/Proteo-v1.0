#! /bin/bash

#DOWNLOADING
git clone https://github.com/bowman-lab/enspara.git

#Install
sudo apt install python-pip
pip install numpy
pip install cython
pip install mpi4py
pip install -c omnia mdtraj
cd enspara
python install setup.py

