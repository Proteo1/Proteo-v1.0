#! /bin/bash

#site
git clone https://github.com/Qiskit/qiskit-aqua.git
#installation commands//
sudo apt-get update
sudo apt-get install python-pip
pip install qiskit

cd qiskit-aqua
python install setup.py
