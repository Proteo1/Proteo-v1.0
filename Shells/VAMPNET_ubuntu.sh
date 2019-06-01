#! /bin /bash
#site
https://github.com/markovmodel/deeptime.git  
sudo apt-get install python-pip
sudo apt-get install python3 --version
sudo apt-get install ip3 --version
sudo apt-get install virtualenv --version
sudo apt update
sudo apt install python3-dev python3-pip
sudo pip3 install -U virtualenv  
virtualenv --system-site-packages -p python3 ./venv
source ./venv/bin/
pip install --upgrade pip
install --upgrade tensorflow
python -c "import tensorflow as tf; tf.enable_eager_execution()
cd deeptime

python setup.py install

