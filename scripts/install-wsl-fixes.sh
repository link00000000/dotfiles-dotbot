#!/bin/bash

sudo rm -rf /etc/resolv.conf
sudo rm -rf /etc/wsl.conf

sudo cp ./wsl/resolv.conf /etc
sudo cp ./wsl/wsl.conf /etc
