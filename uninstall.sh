#!/bin/bash

# Sorry for your inconvenience as you are uninstalling 
# Hope you will again install and use devil eye

clear
echo "Sorry for your inconvenience as you are uninstalling"
echo "Uninstalling Devil - Eye"

name=$( basename $0 )

if [ -f  /data/data/com.termux/files/usr/etc/bash.bashrc ]; then
  rm  /data/data/com.termux/files/usr/etc/bash.bashrc
fi

if [[ -f "${PREFIX}/etc/motd" ]]; then
    cp "${PREFIX}/etc/motd.old" "${PREFIX}/etc/motd"
fi

if [[ -f "/data/data/com.termux/files/usr/etc/${name}/bash.bashrc_old" ]]; then
	cp -f "/data/data/com.termux/files/usr/etc/${name}/bash.bashrc_old" /data/data/com.termux/files/usr/etc/bash.bashrc;
fi

if [ -d "/data/data/com.termux/files/usr/etc/${name}" ]; then
    rm "/data/data/com.termux/files/usr/etc/${name}/*"
    rmdir "/data/data/com.termux/files/usr/etc/${name}"
fi

if [[ -f "/data/data/com.termux/files/usr/bin/${name}" ]]; then
	rm "/data/data/com.termux/files/usr/bin/${name}"
fi
sleeo 0.5
pkg uninstall toilet figlet cowsay ruby -y
sleep 1
termux-reload-settings
clear
echo "[!] Delete this Devil-Eye Directory in order to delete this script permanently!"



