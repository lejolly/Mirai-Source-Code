#!/bin/bash
if [[ $EUID > 0 ]]
  then echo "Please run as root"
  exit
fi  
if [ ! -f ./busybox ]; then
   echo "downloading busybox"
   wget https://busybox.net/downloads/binaries/1.26.2-i686/busybox
fi
echo "running telnetd"
sudo ./busybox telnetd -F
