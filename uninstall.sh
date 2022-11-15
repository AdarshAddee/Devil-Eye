#!/bin/bash

# Sorry for your inconvenience as you are uninstalling 
# Hope you will again install and use devil eye

clear
echo "Sorry for your inconvenience as you are uninstalling"
echo "Uninstalling Devil - Eye"

if [ -f  /data/data/com.termux/files/usr/etc/bash.bashrc ]; then
  rm  /data/data/com.termux/files/usr/etc/bash.bashrc
fi

if [[ -f /data/data/com.termux/files/usr/etc/devil-eye/bash.bashrc_old ]]; then
	cp -f /data/data/com.termux/files/usr/etc/devil-eye/bash.bashrc_old /data/data/com.termux/files/usr/etc/bash.bashrc;
fi

if [ -d /data/data/com.termux/files/usr/etc/devil-eye ]; then
  rm /data/data/com.termux/files/usr/etc/devil-eye/*
	rmdir /data/data/com.termux/files/usr/etc/devil-eye
fi

if [[ -f /data/data/com.termux/files/usr/bin/devil-eye ]]; then
	rm /data/data/com.termux/files/usr/bin/devil-eye
fi
sleeo 0.5
pkg uninstall toilet figlet cowsay ruby -y
sleep 1
termux-reload-settings 
clear
echo "[!] Delete this Devil-Eye Directory in order to delete this script permanently!"



