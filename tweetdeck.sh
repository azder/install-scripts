#!/bin/bash

#install what is needed
sudo apt-get -y install lib32asound2 lib32gcc1 lib32ncurses5 lib32stdc++6 lib32z1 libc6 libc6-i386 lib32nss-mdns

#files to get for install
GETLIBS_FILE=getlibs-all.deb
GETLIBS_FILE_URL=http://taurinocerveza.com/scripts/${GETLIBS_FILE}

AIR_FILE=AdobeAIRInstaller.bin
AIR_FILE_URL=http://airdownload.adobe.com/air/lin/download/2.6/${AIR_FILE}

#TweetDeck_0_37.5.air
TWEETDECK_FILE=tweetdeck 
TWEETDECK_FILE_URL=http://tweetdeck.com/go/download/tweetdeck


#create a temporary directory to do the work in
DIR=`mktemp --tmpdir -d getlibs-XXXXXX` || {
	echo "There was an error creating the temporary directory for install"	
	exit 1
}

pushd .
echo "Using the directory $DIR for downloading the installation file"
cd $DIR
wget $GETLIBS_FILE_URL

sudo -n dpkg -i $GETLIBS_FILE

sudo -n getlibs -l libnss3.so.1d libnssutil3.so.1d libsmime3.so.1d libssl3.so.1d libnspr4.so.0d libplc4.so.0d \  libplds4.so.0d libgnome-keyring.so libgnome-keyring.so.0 libgnome-keyring.so.0.1.1


wget $AIR_FILE_URL
chmod +x $AIR_FILE
sudo -n $AIR_FILE

sudo -n ldconfig  

wget $TWEETDECK_FILE_URL
chmod +x $TWEETDECK_FILE
./$TWEETDECK_FILE
