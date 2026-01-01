#!/bin/bash

# Code by NyanRay64 =3

echo "Fixing LuminContainer"
sudo rm -rf ~/container/LuminOS
cd ~/container
sudo apt update && sudo apt install git -y
git clone https://github.com/nixxlte/LuminOS
echo "Done. Please restart the computer to apply all changes."