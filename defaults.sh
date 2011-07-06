#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y -u install vim vim-gnome
sudo apt-get -y -u install pidgin
sudo apt-get -y -u install gimp
sudo apt-get -y -u install xchat
sudo apt-get -y -u install gimp
sudo apt-get -y -u install tasksel

sudo tasksel install lamp-server
