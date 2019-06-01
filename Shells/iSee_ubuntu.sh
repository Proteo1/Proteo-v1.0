#! /bin/bash

#DOWNLOADING
git clone https://github.com/haddocking/iSee.git

#DEPENDENCIES
sudo apt install r-base
Rscript iSee.R

#INSTALLATION
cd iSEE
Rscript run_iSEE.R
