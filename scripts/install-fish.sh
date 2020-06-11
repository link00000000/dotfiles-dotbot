#!/bin/sh

sudo add-apt-repository -y ppa:fish-shell/release-3
sudo apt update -y
sudo apt install -y fish curl

# Set default shell to fish
chsh -s "$(which fish)"

# Install fisher and packages
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
$(which fish) -c fisher

# Install base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Install pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

echo "Run `echo $(which fish)` to start using the new config files"
