#!/bin/sh

sudo apt update -y
sudo apt install -y neovim curl

# Replace vim with neovim
sudo mv $(which vim) /bin/oldvim
sudo ln -s $(which nvim) /bin/vim

# Install Node JS dependency
# https://github.com/neoclide/coc.nvim#quick-start
if ! command -v COMMAND &> /dev/null; then
    curl -sL install-node.now.sh | sudo bash -s -- --yes
fi

# Install vim plug
# https://github.com/junegunn/vim-plug#unix-linux
sh -c 'curl -fLso "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install all vim plugins
# https://github.com/junegunn/vim-plug/wiki/tips#install-plugins-on-the-command-line
nvim -es -u $HOME/.config/nvim/init.vim -i NONE -c "PlugInstall" -c "qa"