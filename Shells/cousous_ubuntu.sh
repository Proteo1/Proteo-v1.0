#! /bin /bash
#site
wget https://cran.rstudio.com/src/contrib/COUSCOus_1.0.0.tar.gz
tar -xf COUSCOus_1.0.0.tar.gz
cd COUSCOus_1.0.0
sudo apt-get install r-base

Rscript COUSCOus.R