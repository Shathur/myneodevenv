#! /bin/bash

cp -r ./* ~/.config/nvim/
cp .tmux.conf ~/.tmux.conf

# don't forget to add the nvim executable to path
echo "export PATH="$PATH:/opt/nvim-linux64/bin"" >> ~/.bashrc
