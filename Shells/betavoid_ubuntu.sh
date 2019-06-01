#! /bin /bash
wget http://voronoi.hanyang.ac.kr/SWList_for_download.htm
unzip BetaVoid_v1.1_64bit.zip
cd BetaVoid_v1.1_64bit
#dependencies
sudo apt-get install g++-5
sudo apt-get -y install cmake
sudo apt install gcc
 sudo apt install build-essential

#installation
 sudo ./BetaVoid64
