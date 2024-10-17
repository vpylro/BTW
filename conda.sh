#!/bin/sh

#BTW - Bioinformatics Through Windows - 2.0

#Update and upgrade Ubuntu
apt-get update -y
apt-get upgrade -y

#Install pip3
apt-get install python3-pip -y

#Install Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p miniconda3
miniconda3/bin/conda init
echo "export PATH=$HOME/miniconda3/bin:$PATH" >> .bashrc
source ~/.bashrc
