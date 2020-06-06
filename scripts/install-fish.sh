#!/bin/sh

sudo add-apt-repository -y ppa:fish-shell/release-3
sudo apt update -y
sudo apt install -y fish curl

# Change default shell to fish
chsh -s $(which fish)

# Install fisher and packages
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
$(which fish) -c fisher

exec $(which fish)