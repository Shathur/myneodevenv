#! /bin/bash

sudo mkdir ~/.config/
sudo mkdir ~/.config/nvim/
sudo mkdir ~/.local/share/
sudo mkdir ~/.local/share/nvim/
sudo cp -r ./* ~/.config/nvim/
sudo cp .tmux.conf ~/.tmux.conf
 
# # don't forget to add the nvim executable to path
echo "export PATH="$PATH:/opt/nvim-linux64/bin"" >> ~/.bashrc
 
# # problem with ownership while updating lazy-lock.json file is solved with
sudo chown -R $USER ~/.config/nvim/
sudo chown -R $USER ~/.local/share/nvim/
 
# molten plugin needs runtime folder
sudo mkdir ~/.local/share/
sudo mkdir ~/.local/share/jupyter/
cd ~/.local/share/jupyter/
sudo mkdir runtime
sudo chmod a+w runtime
cd 

# To add the tmux functionality do the following:
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Reload TMUX env so TPM is sourced
# tmux source ~/.tmux.conf
# Now from inside a TMUX session press prefix + I to fetch the plugins

# send the openaiapikey.txt.gpg to the proper place
cd ~/myneodevenv
sudo cp openaiapikey.txt.gpg ~/.config/
