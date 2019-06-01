#! /bin/bash
git clone https://github.com/RUBi-ZA/MODE-TASK.git
unzip MODE-TASK-master.zip
cd MODE-TASK-master

sudo apt install g++
sudo apt-get install python2.7
sudo apt install virtualenvwrapper
sudo apt install python-dev
sudo apt install python-pip
sudo apt install virtualenv venv
pip3 install setuptools
conda install numpy cython -y
pip3 install -r requirements.txt
bash
conda create -n mode_task



conda install -c conda-forge numpy
conda install -c conda-forge cython
conda install -c omnia mdtraj
conda install -c conda-forge scipy
conda install -c conda-forge pandas
conda install -c conda-forge sklearn-contrib-lightning
conda install -c conda-forge matplotlib

conda install -c nizamibilal1064 mode-task
