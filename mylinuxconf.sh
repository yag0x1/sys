#!/bin/bash

sudo rm -rf /var/lib/apt/lists/lock
sudo rm /var/lib/dpkg/lock
sudo rm /var/cache/apt/archives/lock

sudo apt-get update
sudo dpkg –configure -a
sudo apt-get -f install

sudo rm /var/lib/dpkg/lock-frontend
sudo dpkg --configure -a
sudo apt update

sudo apt-get update # Update

sudo apt install snapd -y
sudo apt-get install gnome-software-plugin-snap -y
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y


sudo apt install btop -y #Resource monitor
sudo apt install zsh -y #installing the zsh
sudo apt install tmux -y #split terminal and save sections

sudo apt install ranger -y #Files Manager on terminal

sudo apt install speedtest-cli -y  #test internet velocity

sudo apt autoremove -y

