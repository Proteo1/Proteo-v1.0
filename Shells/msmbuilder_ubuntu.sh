#! bin/bash

#msmbuiler 
wget https://files.pythonhosted.org/packages/0a/67/e1d5912a483f484e00940b40de704afbc78e3ff61936fae967bef4534abb/msmbuilder-3.8.0.tar.gz
tar xvfz msmbuilder-3.8.0.tar.gz
cd msmbuilder-3.8.0
conda install -c omnia mdtraj


pip install msmbuilder
