#!/bin/sh

sudo apt update -y
sudo apt install -y neovim curl

# Replace vim with neovim
sudo mv $(which vim) /bin/oldvim
sudo ln -s $(which nvim) /bin/vim

# Install vim-plug and plugins
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
vim -c PlugInstall
