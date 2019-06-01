#! /bin /bash
#site
 wget http://info.mcmaster.ca/yifei/software/gp4rate.html

cd GP4Rate_V1.0.0
cd ./MyPhyloLib/
 make
cd ../
cd ./src/
make

./gp4rate -h


