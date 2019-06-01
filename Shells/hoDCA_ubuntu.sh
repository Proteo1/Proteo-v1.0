#! /bin/bash

#DOWNLOADING
wget www.cbs.tu-darmstadt.de/hoDCA/hoDCA.tar.gz

#DEPENDENCIES
wget https://julialang-s3.julialang.org/bin/linux/x64/1.1/julia-1.1.1-linux-x86_64.tar.gz
tar -xf julia-1.1.1-linux-x86_64.tar.gz
cp -r julia-1.1.1 /opt
sudo ln -s /opt/julia-1.1.1/bin/julia julia
sudo ln -s /opt/julia-1.1.1/bin/julia /bin/julia

julia hoDCA.jl

#INSTALLATION
tar -xf hoDCA.tar.gz
cd hoDCA
julia hoDCA.jl


