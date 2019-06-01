#! /bin/bash
#site
wget https://github.com/matonto/mobi.git
 #installation dependencies//
sudo apt-get install openjdk-8-jre
sudo apt-get update
sudo apt-get install maven
sudo apt install nodejs
sudo dpkg -i google-chrome-stable_current_amd64.deb

mvn clean install
