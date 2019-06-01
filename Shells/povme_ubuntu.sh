#! /bin /bash
sudo apt install git
git clone https://github.com/POVME/POVME.git
unzip POVME-master.zip
cd POVME
wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh

bash Miniconda2-latest-Linux-x86_64.sh -b -p miniconda2

source miniconda2/bin/activate
 sudo pip install povme
