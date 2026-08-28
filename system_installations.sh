# #! /bin/bash
# 
# # update upgrade and necessary packages
# sudo apt update &&
# sudo apt upgrade -y &&
# 
# sudo apt install file -y && # some ubuntu images are barebone, and need this for building from source
# 
# # reason we are here -- build from source -- both for arm and x86 architectures
# # code taken from here https://github.com/neovim/neovim/blob/master/BUILD.md
# # dependencies first
# sudo apt-get install ninja-build gettext cmake unzip curl build-essential
# # clone the repo
# git clone https://github.com/neovim/neovim
# cd neovim
# # we want stable version
# git checkout stable
# # build
# make CMAKE_BUILD_TYPE=RelWithDebInfo
# # check on which architecture we are
# ARCH=$(uname -m)
# case "$ARCH" in
# 	x86_64|amd64) ASSET="nvim-linux-x86_64.deb" ;;
# 	aarch64|arm64) ASSET="nvim-linux-arm64.deb" ;;
# esac
# echo "Installing neovim for : $ARCH architecture"
# # create deb and install, to be able to uninstall easier
# # cd build && cpack -G DEB && sudo dpkg -i nvim-linux-arm64.deb
# cd build && cpack -G DEB && sudo dpkg -i $ASSET

# install extra dependencies to accomodate our setup
sudo apt install ripgrep -y # for treesitter
case "$ARCH" in
	aarch64|arm64) sudo apt install libhdf5-hl-100 -y ;; # for h5py, dependency for torch aarch64 installation
esac
sudo apt-get install pkg-config libhdf5-dev -y # for h5py, which is needed for torch -- universal for both arm and x86
sudo apt install luarocks lua5.1 -y # for both arm64 and x86_64 to fix problems with building hererocks and image.nvim
sudo luarocks install dkjson

# # get the latest version of node.js, necessary for our lsp config (pyright)
# # for the changes to take place maybe you need to close and open the terminal
# HTTP_CODE=$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash)
# source ~/.nvm/nvm.sh
# nvm install 22 # safe to install the latest LTS version
# 
# # necessary for python
# sudo apt install python3-pip -y
# sudo apt install python3-venv -y
# 
# # necessary if you want to run optuna and save to a database, for installing pip install mysqlclient
# # sudo apt-get install python3-dev default-libmysqlclient-dev build-essential
