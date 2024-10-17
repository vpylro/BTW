#!/bin/bash

# BTW - Bioinformatics Through Windows 2.0

# Install essential packages
sudo apt-get install -y python3-pip wget git make python3-tk r-base default-jre vim-gtk3

# Create a qiime1 env
conda create -n btw python=2.7 -y
conda activate btw
conda install -c conda-forge -c bioconda qiime=1.9.1 matplotlib=1.5.3 -y
conda install -c conda-forge libgfortran=3 -y

# Download programs folder
wget https://github.com/vpylro/BioME/raw/master/bmp_win.tar.gz
tar -xvf bmp_win.tar.gz

# Install fastq-join
git clone https://github.com/brwnj/fastq-join
cd fastq-join
make
cd ..
cp fastq-join/fastq-join bmp_win/

# Put programs folder in the PATH
echo "export PATH=\$HOME/bmp_win:\$PATH" >> .bashrc

# Put RDP in the PATH
echo "export RDP_JAR_PATH=\$HOME/bmp_win/rdp_classifier_2.2/rdp_classifier-2.2.jar" >> .bashrc

# Update DISPLAY variable
echo "export DISPLAY=:0" >> .bashrc

# Notify user to source .bashrc
echo "Please run 'source ~/.bashrc' to apply changes."
