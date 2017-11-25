#!/bin/sh

#Update and upgrade Ubuntu
apt-get update -y
apt-get upgrade -y

#Install pip
apt-get install python-pip -y

#Upgrade pip
pip install --upgrade pip

#Install python-tk (essential to Qiime installation)
apt-get install python-tk -y

#Install Numpy
pip install Numpy

#Install Qiime 1.9
pip install qiime

#Install h5py
pip install h5py

#Install fastq-join
git clone https://github.com/brwnj/fastq-join
cd fastq-join
make
cd ..

#Install R (pediu senha)
apt-get install r-base -y

#Install Java
apt install default-jre -y

#graphical
apt-get install vim-gtk -y

#Download programs folder
wget https://github.com/vpylro/BioME/raw/master/bmp_win.tar.gz
tar -xvf bmp_win.tar.gz

#put programs folder in the PATH
echo "export PATH=$HOME/bmp_win/:$PATH" >> $HOME/.bashrc
source $HOME/.bashrc

#put fastq-join in the PATH
echo "export PATH=$HOME/fastq-join/:$PATH" >> $HOME/.bashrc
source $HOME/.bashrc

#put RDP in the PATH
echo "export RDP_JAR_PATH=$HOME/bmp_win/rdp_classifier_2.2/rdp_classifier-2.2.jar" >> $HOME/.bashrc
source $HOME/.bashrc

#atualizar o .bashrc 
export DISPLAY=:0
