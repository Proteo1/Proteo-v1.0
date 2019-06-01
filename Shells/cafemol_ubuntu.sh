#! /bin/bash
# download cafe mol from this link manually

# http://www.cafemol.org/download.php
tar xvfz cafemol_3.1(1).tar.gz

cd cafemol_3.1(1)/src/
make clean
make
cd ..
sudo apt install lam-runtime 
./cafemol example/proteing/proteing.inp
