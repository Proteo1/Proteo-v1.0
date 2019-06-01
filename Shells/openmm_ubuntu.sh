#! /bin/bash

wget --no-check-certificate https://files.pythonhosted.org/packages/6b/ac/2e2aadfa7aa7db5cf1b9677166b084d9ea37a55daebcb48ed434ebe0faa3/openmm-0.2.tar.gz

tar xvzf openmm-0.2.tar.gz
cd openmm-0.2
chmod +x setup.py
python install setup.py
