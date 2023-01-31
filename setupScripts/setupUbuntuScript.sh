#!/usr/bin/env bash

# This script will work only on debian based distros.
# You can manually add or remove package name according to your choice in script for installation.
# Just copy the script and make your own script, also give the execute permission to the script.
# Run command chmod u+x script_name.sh for assinging execute permission to the script.
# Then execute the script by running command 'bash script_name.sh' or './script_name.sh'.
#
echo "=============================================================================================================";
echo "                                Setup for the system will begin shortly!";
echo "=============================================================================================================";
sleep 3s;
sudo apt update && sudo apt upgrade -y 
sudo apt-get install neofetch
echo 
neofetch --version
echo 
sudo apt install vim
echo 
vim --version
echo 
sudo apt install git
echo 
git --version
echo 
sudo apt install make
echo 
make --version
echo 
sudo apt install gcc
sudo apt install g++
echo 
gcc --version
echo 
g++ --version
echo 
sudo apt install build-essential 
sudo apt install openjdk-17-jre-headless
echo 
java --version
echo 
sudo apt install htop
echo 
htop --version
echo 
sudo apt install wget
echo 
wget --version
echo 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo 
google-chrome --version
echo 
sudo snap install --classic code
echo 
code --version
echo 
sudo snap install intellij-idea-community --classic
echo 
sudo apt update && sudo apt upgrade -y
echo 
echo "=============================================================================================================";
echo "                               Setup Completed! Now enjoy with your computer."; 
echo "=============================================================================================================";
echo 
