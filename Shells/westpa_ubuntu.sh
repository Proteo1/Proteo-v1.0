#! /bin/bash
sudo apt-get install git
git clone https://github.com/westpa/westpa
unzip westpa-master.zip
cd westpa-master
sudo apt-get update
sudo apt-get install python2.7

wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
cd Downloads/
chmod +x Anaconda2-2019.03-Linux-x86_64.sh 
bash Anaconda2-2019.03-Linux-x86_64.sh 
chmod 777 setup.sh
bash setup.sh


