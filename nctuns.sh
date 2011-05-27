#!/bin/bash

#install what is needed
sudo apt-get -y -u install build-essential rpm tcl8.5 tcl8.5-dev xinetd rsh-server libncurses5-dev libqt3-mt


#file to get for install
NCTUNS_FILE=NCTUns-allinone-linux-2.6.31.6-f12.20100113.tar.gz
NCTUNS_URL=http://nsl10.csie.nctu.edu.tw/download/${NCTUNS_FILE}
NCTUNS_DIR=NCTUns-6.0

#create a temporary directory to do the work in
DIR=`mktemp --tmpdir -d nctuns-XXXXXX` || {
	echo "There was an error creating the temporary directory for install"	
	exit 1
}

pushd .
echo "Using the directory $DIR for downloading the installation file"
cd $DIR
wget $NCTUNS_URL
tar xzf $NCTUNS_FILE
cd $NCTUNS_DIR


