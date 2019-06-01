#! /bin /bash
#site
sudo apt install git
git clone https://github.com/fibonaccirabbits/allo.git

sudo apt install python
sudo apt install python-pip
sudo pip install numpy
sudo pip install scipy

cd allo
cd src

python predict_nb.py  
python rank_nn.py 
