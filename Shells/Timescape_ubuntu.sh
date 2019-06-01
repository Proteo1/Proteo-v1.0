#! /bash /bin	

wget http://timescapes.biomachina.org/disseminate/TimeScapes_1.5.tar.gz
tar xvfz TimeScapes_1.5.tar.gz
 cd TimeScapes_1.5
 make -f GNUmakefile_Linux install
#Build Command
sudo ldconfig -v
./scripts/test_linux.script

