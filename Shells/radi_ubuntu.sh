#! /bin /bash
#site 

sudo apt install git


git clone https://github.com/structuralbioinformatics/RADI.git
sudo apt install gcc
sudo apt install build -essential


cd RADI
cd src
make
bash 
ulimit -s unlimited

