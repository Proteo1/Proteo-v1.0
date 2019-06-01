#! /bin/bash

#DOWNLOADING
wget comprec-lin.iiar.pwr.edu.pl/downloadC2S/

#DEPENDENCIES
sudo apt install perl
sudo apt install python-pip

#INSTALLATION
tar -xf comprec_C2S_src_v1_3.tar.gz
cd comprec_C2S_src_v1_3
cd c2s_pipeline_src
sudo bash init_pipeline.sh 

