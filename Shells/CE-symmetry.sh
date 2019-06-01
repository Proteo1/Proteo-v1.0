#! /bin /bash
#site
sudo apt install git
wget https://github.com/rcsb/symmetry.git
cd symmetry


#dependencies
sudo add-apt-repository ppa:linuxuprising/java

sudo apt-get install oracle-java11-installer
sudo apt-get install oracle-java11-set-default

wget http://maven.apache.org/
 
tar -xf name
mvn package

