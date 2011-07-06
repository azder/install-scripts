#!/bin/bash


#files
CHROME_FILE_URL=https://dl-ssl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
CHROME_FILE=google-chrome-stable_current_amd64.deb

#create a temporary directory to do the work in
DIR=`mktemp --tmpdir -d chrome-XXXXXX` || {
	echo "There was an error creating the temporary directory for install"	
	exit 1
}


pushd .
echo "Using the directory $DIR for downloading the installation file"
cd $DIR
wget $CHROME_FILE_URL
sudo dpkg -i $CHROME_FILE
popd


