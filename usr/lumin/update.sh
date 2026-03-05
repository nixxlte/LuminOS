#!/bin/bash

# This is a first version of a kind of Rolling Relase updater, inside of a LTS base
# you can run this shell script by simply type "sudo lumin update" (in a not distant future =3)

# Code by NyanRay64 =3

echo "Updating LuminOS"

nala update && nala upgrade
flatpak update
#cd ~/container/LuminOS # Immutable Lumin container
#git pull
cd ~/container/github
git clone https://github.com/nixxlte/LuminOS
cd LuminOS && cp * ~/container/LuminOS
cd .. && rm -rf LuminOS
cd ~/container/LuminOS/Root
cp .bashrc ~/.bashrc
source ~/.bashrc
cd ~/container
git clone https://github.com/nixxlte/LuminCORE
cd LuminCORE
git pull
sudo mkdir /home/luminos
cp -r System/Modifications/* /home/luminos
cd /home/luminos
rm -rf Overlay.sdkx
curl -fsSL https://github.com/nixxlte/LuminCORE/releases/download/LuminOS%22Eclipse%22/Overlay.sdkx -O

echo "done."