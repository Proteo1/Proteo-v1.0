#! /bin/bash
#site
wget http://bioconductor.org/packages/release/bioc/html/deltaGseg.html
tar -xf deltaGseg_1.22.0
#dependencies
sudo apt install r-base

Rscript deltagseg.R

