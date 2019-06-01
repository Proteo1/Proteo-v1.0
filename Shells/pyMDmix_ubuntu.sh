#! /bin/bash

#DOWNLOADING
git clone https://github.com/CBDD/pyMDmix.git


#DEPENDENCIES
sudo apt install python-pip
pip install numpy
pip install scipy
pip install matplotlib
pip install ScientificPython
pip install Numeric
pip install pypvm
pip install biggles
pip install Bio
sudo apt install csh flex patch gfortran g++ make xorg-dev bison libbz2-dev
sudo apt-get install openmpi-bin libopenmpi-dev 
sudo apt-get install mpich libmpich-dev
sudo apt install subversion
sudo apt-get install pvm pvm-dev xterm
sudo apt-get install gcc make autoconf libtool gawk
sudo apt-get install python-dev python-numpy python-numeric
sudo apt-get install python-scientific
sudo apt-get install gnuplot plotutils libplot-dev
#INSTALLATION
cd pyMDmix
pyhton setup.py install
cd ~
mkdir py
cd py
svn co https://biskit.svn.sourceforge.net/svnroot/biskit/trunk biskit
ln -s ~/py/biskit/Biskit ~/py/
export PYTHONPATH=$PYTHONPATH:~/py
BPath=~/py/biskit/scripts/
export PATH=$PATH:$BPath/Biskit:$BPath/Dock:$BPath/Mod
