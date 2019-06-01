#! /bin/bash 

wget  http://ftp.gromacs.org/pub/gromacs/gromacs-5.1.4.tar.gz


   tar xfz gromacs-5.1.4.tar.gz
   cd gromacs-5.1.4
   mkdir build
   cd build
   cmake .. -DGMX_BUILD_OWN_FFTW=ON -DREGRESSIONTEST_DOWNLOAD=ON
   make
   make check
