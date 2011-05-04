#!/bin/bash

sudo add-apt-repository ppa:sun-java-community-team/sun-java6
sudo apt-get update
sudo apt-get install -u sun-java6-jdk sun-java6-plugin sun-java6-fonts sun-java6-source
sudo update-java-alternatives -s java-6-sun
