#! /bin /bash
#site
sudo apt install git
 git clone https://github.com/jgreener64/allopred.git
cd allopred
#dependencies
sudo apt install python
sudo apt install pyhton-pip
pip install numpy
pip install proDy
sudo apt install gcc
wget http://fpocket.sourceforge.net/
cd fpocket2
make
make install
cd ..
wget http://svmlight.joachims.org/
cd svm_light
make
make install
cd ..
cd allopred
export ALLOPRED_DIR=/path/to/allopred/
  export SVM_LIGHT_DIR=/path/to/svm_light/
 python $ALLOPRED_DIR/run_allopred.py in_file act_res.txt
