#!/bin/bash

# This is a first version of a kind of Rolling Relase updater, inside of a LTS base
# you can run this shell script by simply type "sudo lumin update" (in a not distant future =3)

# Code by NyanRay64 =3

echo "Updating LuminOS"

nala update && nala upgrade
flatpak update
cd ~/container/LuminOS # Immutable container
git pull
cp .bashrc ~/.bashrc
source ~/.bashrc
cd ~/container
git clone https://github.com/nixxlte/LuminCORE
cd LuminCORE
git pull
mkdir /home/luminos
cp -r System/Modifications/* /home/luminos

echo "done."