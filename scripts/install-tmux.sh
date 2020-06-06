#!/bin/sh

sudo apt update -y
sudo apt install -y tmux

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Install plugins by pressing ^B + I"