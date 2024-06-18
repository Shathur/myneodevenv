#! /bin/bash

sudo mkdir ~/.config/
sudo mkdir ~/.config/nvim/
sudo cp -r ./* ~/.config/nvim/
sudo cp .tmux.conf ~/.tmux.conf

# don't forget to add the nvim executable to path
echo "export PATH="$PATH:/opt/nvim-linux64/bin"" >> ~/.bashrc

# To add the tmux functionality do the following:
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Reload TMUX env so TPM is sourced
# tmux source ~/.tmux.conf
# Now from inside a TMUX session press prefix + I to fetch the plugins
