#!/usr/bin/env bash

sudo ./install -p dotbot-apt/apt.py -c packages.conf.yaml
./install -c fish.conf.yaml
./install -c tmux.conf.yaml
./install -c vim.conf.yaml
