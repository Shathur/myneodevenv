#! /bin/bash

# update upgrade and necessary packages
sudo apt update &&
sudo apt upgrade -y &&

# reason we are here
sudo apt install neovim

# necessary for python
sudo apt install python3-pip -y
sudo apt install python3-venv -y
