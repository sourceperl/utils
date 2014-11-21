#!/bin/bash

# update APT index
sudo apt-get update

# Misc
sudo apt-get install bc hexedit vim nmap gnuplot-x11 lftp git minicom

# Arduino
#sudo apt-get install gcc-avr avr-libc avrdude

# Node.js
sudo apt-get install nodejs-legacy

# Script "daemonize" like
sudo apt-get install supervisor

# Python modules
sudo apt-get install python-pip python-serial python-scipy \
python-requests python-twisted ipython \
python3-pip python3-serial python3-scipy python3-requests ipython3

# Python lib
sudo pip install pyModbusTCP --upgrade
sudo pip-3.2 install pyModbusTCP --upgrade

# FTP server
sudo apt-get install proftpd
# not start at system init
sudo /etc/init.d/proftp stop
sudo insserv -r proftpd

