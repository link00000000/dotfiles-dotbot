#!/bin/sh

sudo apt update -y
sudo apt install -y neovim curl

# Replace vim with neovim
sudo mv $(which vim) /bin/oldvim
sudo ln -s $(which nvim) /bin/vim
