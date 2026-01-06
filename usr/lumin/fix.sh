#!/bin/bash

# Code by NyanRay64 =3

echo "Fixing LuminContainer"
sudo rm -rf ~/container/LuminOS
cd ~/container
sudo apt update && sudo apt install git -y
git clone https://github.com/nixxlte/LuminOS
cd ~/container/LuminOS
cp .bashrc ~/.bashrc
source ~/.bashrc
cd ..
ls
git rm -rf ~/container/LuminCORE
git clone https://github.com/nixxlte/LuminCORE
cd LuminCORE/System/Modifications
cp extensions.md ~/container
mkdir /home/luminos
cp -r System/Modifications/* /home/luminos

echo "Done. Please restart the computer to apply all changes."