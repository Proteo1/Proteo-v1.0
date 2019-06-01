#! /bin /bash

# MD-task
sudo apt-get install git
git clone https://codeload.github.com/RUBi-ZA/MD-TASK/zip/v0.1.1
unzip MD-TASK-0.1.1.zip
cd MD-TASK-0.1.1
sudo apt-get update
apt-get install python-virtualenv
virtualenv -p /usr/bin/python3 virtualenvironment/project_1
python3 -V
#output is Python 3.6.7
# install python
sudo apt install -y python3-pip
sudo apt install -y python3-venv
pip install gcloud
pip install --upgrade gcloud

sudo apt-get install virtualenvwrapper
sudo apt-get install python-dev
sudo apt-get install libblas-dev
sudo apt-get install liblapack-dev
sudo apt-get install libatlas-base-dev
sudo apt-get install gfortran libpng12-dev
sudo apt-get install libfreetype6-dev
sudo apt-get install python-tk
sudo apt-get install r-base

pip install --upgrade pip
pip install numpy
pip install scipy
pip install matplotlib cython networkx natsort
pip install mdtraj

sudo apt-get update     # refresh
sudo apt-get install software-properties-common
sudo add-apt-repository -y "ppa:marutter/rrutter"
sudo add-apt-repository -y "ppa:marutter/c2d4u"
sudo apt-get update     # now with new repos
sudo apt-get install r-cran-igraph

Rscript MD_TASK.R
