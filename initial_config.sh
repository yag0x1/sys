#!/bin/bash
sudo apt-get update
sudo apt-get upgrade

sudo rm -rf /var/lib/apt/lists/lock
sudo rm /var/lib/dpkg/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock-frontend

sudo apt install btop -y #Resource monitor
sudo apt install tmux -y #split terminal and save sections
sudo apt install ranger -y #Files Manager on terminal

sudo apt install zsh -y #installing the zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt autoremove -y

