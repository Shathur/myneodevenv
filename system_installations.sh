#! /bin/bash

# update upgrade and necessary packages
sudo apt update &&
sudo apt upgrade -y &&

sudo apt install file -y && # some ubuntu images are barebone, and need this for building from source

# reason we are here -- build from source, cause arm64
# code taken from here https://github.com/neovim/neovim/blob/master/BUILD.md
# dependencies first
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
# clone the repo
git clone https://github.com/neovim/neovim
cd neovim
# we want stable version
git checkout stable
# build
make CMAKE_BUILD_TYPE=RelWithDebInfo
# create deb and install, to be able to uninstall easier
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

# install extra dependencies to accomodate our setup
sudo apt install ripgrep -y # for treesitter
sudo apt-get install pkg-config libhdf5-hl-100 libhdf5-dev # for h5py, which is needed for torch, necessary for aarch64 installation

# get the latest version of node.js, necessary for our lsp config (pyright)
# for the changes to take place maybe you need to close and open the terminal
HTTP_CODE=$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash)
source ~/.nvm/nvm.sh
nvm install 20 # safe to install the latest LTS version

# necessary for python
sudo apt install python3-pip -y
sudo apt install python3-venv -y
