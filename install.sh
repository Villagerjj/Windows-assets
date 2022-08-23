#!/bin/sh
echo Welcome to Villagerjjs Debian package installer!
echo this script will install a few things to make your system look modern! (but on old hardware)
echo you computer will look like windows 10 after this installation!
echo -----------------------------------------------------------------------------------------------
echo Make sure you are running this as root!!
echo
echo The following programs are going to be installed:
echo falkon
echo git
echo wine
echo 
apt update  # To get the latest package lists
apt install snapd -y
apt update
snap install falkon -y
apt update
apt install git -y
apt update
dpkg --add-architecture i386
wget https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/amd64/libfaudio0_20.01-0~buster_amd64.deb
apt install ./libfaudio0_20.01-0~buster_amd64.deb
apt install ./libfaudio0_20.01-0~buster_i386.deb
wget -nc https://dl.winehq.org/wine-builds/winehq.key
apt-key add winehq.key
apt-add-repository 'deb http://dl.winehq.org/wine-builds/debian/ buster main'
apt update
apt-get install --install-recommends winehq-stable
wine --version
echo -----------------------------------------------------------------------------------------
echo RUN THE FOLLOWING COMMANDS:
echo wget https://github.com/B00merang-Project/Windows-10-Dark/archive/refs/tags/3.2.1-dark.zip
echo extract the file above to the following directory: /usr/share/themes/
echo wget https://github.com/B00merang-Artwork/Windows-10/archive/master.zip
echo extract the file above to the following directory: /usr/share/icons/
echo
echo you will need to apply the windows theme in the window manager, and appearance settings!