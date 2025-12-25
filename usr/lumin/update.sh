#!/bin/bash

# This is a first version of a kind of Rolling Relase updater, inside of a LTS base
# you can run this shell script by simply type "sudo lumin update" (in a not distant future =3)

# Code by NyanRay64 =3

sudo su
nala update && nala upgrade
flatpak update
cd ~/container/LuminOS # This is temporary =3 (probably)
git pull