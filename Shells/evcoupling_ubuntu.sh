#! /bin /bash
#site
sudo apt install git 
git clone https://github.com/debbiemarkslab/EVcouplings.git

#dependencies
sudo apt install python
sudo apt install python-pip

#installation
cd EVcouplings
 pip install evcouplings
pip install git+https://github.com/debbiemarkslab/EVcouplings.git
pip install -U --no-deps git+https://github.com/debbiemarkslab/EVcouplings.gi


