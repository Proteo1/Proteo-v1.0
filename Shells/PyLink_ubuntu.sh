#! /bin/bash

#DOWNLOADING
wget https://pylink.cent.uw.edu.pl/plug_files/PyLink_Linux.tar.gz

#DEPENDENCIES
sudo apt install python-pip
sudo apt install pymol
sudo apt install python-numpy
sudo apt install python-scipy
sudo apt install python-matplotlib
pip install Pillow


#INSTALLATION
tar -xf PyLink_Linux.tar.gz
cd PyLink_Linux/
echo "Open pymol and install PyLink plugin by going to Plugin Manager"

