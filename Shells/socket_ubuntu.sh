#! /bin/bash

#site
wget https://github.com/socketio/socket.io.git

#installation commands//repositories
sudo apt-get update
sudo apt install Node.js
sudo apt-get install openjdk-8-jre
cd socket.io/
npm install socket.io
