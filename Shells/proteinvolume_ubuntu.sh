#! /bin /bash
# site
wget http://gmlab.bio.rpi.edu
cd ProteinVolume_1.3

# dependencies
sudo add-apt-repository ppa:linuxuprising/java

sudo apt-get install oracle-java11-installer
sudo apt-get install oracle-java11-set-default


#installation

java -jar ProteinVolume.jar
