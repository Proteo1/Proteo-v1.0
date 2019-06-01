#! /bin/bash
git clone https://github.com/kassonlab/gmxapi.git

#install dependencies
#go to site to download 
#installation 
sudo apt update
sudo apt-get install pythonpip
pip install mdtraj
pip install python
cd gmxapi
python install setup.py


