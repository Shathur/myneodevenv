#! /bin/bash

# update upgrade and necessary packages
sudo apt update &&
sudo apt upgrade -y &&

# reason we are here -- build from source, cause arm64
# code taken from here https://github.com/neovim/neovim/blob/master/BUILD.md
# dependencies first
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
# clone the repo
git clone https://github.com/neovim/neovim
cd neovim
# we want stable version
git checkout
# build
make CMAKE_BUILD_TYPE=RelWithDebInfo
# create deb and install, to be able to uninstall easier
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

# install extra dependencies to accomodate our setup
sudo apt install ripgrep -y # for treesitter
sudo apt install npm -y # for pyright

# necessary for python
sudo apt install python3-pip -y
sudo apt install python3-venv -y
