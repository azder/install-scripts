#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade

# shell and editors
sudo apt-get -y -u install vim vim-gnome
sudo apt-get -y -u install guake

# communication
sudo apt-get -y -u install pidgin
sudo apt-get -y -u install xchat
sudo apt-get -y -u install skype
sudo apt-get -y -u install thunderbird thunderbird-gnome-support enigmail

# applications 
sudo apt-get -y -u install gimp

# servers
sudo apt-get -y -u install tasksel

sudo tasksel install lamp-server


