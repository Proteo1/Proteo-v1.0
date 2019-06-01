#! /bin /bash
# site
wget http://protein.bio.unipd.it/reupred/
cd reupred
#dependencies
sudo apt-get python
pip install numpy
pip install scipy

#  python reupred.py 