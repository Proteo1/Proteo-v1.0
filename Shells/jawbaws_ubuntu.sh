#! /bin /bash
wget http://www.compbio.dundee.ac.uk/jabaws/download.jsp#war
cd jabaws

#dependencies
sudo add-apt-repository ppa:linuxuprising/java

sudo apt-get install oracle-java11-installer
sudo apt-get install oracle-java11-set-default

java -jar jabaws-full-client-2.2.0.jar
