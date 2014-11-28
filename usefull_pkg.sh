#!/bin/bash

# update APT index
sudo apt-get update

# Misc
sudo apt-get -y install bc hexedit vim nmap gnuplot-x11 lftp git minicom

# Arduino
#sudo apt-get install gcc-avr avr-libc avrdude

# Node.js
sudo apt-get -y install nodejs-legacy

# Script "daemonize" like
sudo apt-get -y install supervisor

# Python modules
sudo apt-get -y install python-pip python-serial python-scipy \
python-requests python-twisted python-matplotlib ipython \
python3-pip python3-serial python3-scipy python3-requests ipython3

# Python lib
sudo pip install pyModbusTCP --upgrade
sudo pip-3.2 install pyModbusTCP --upgrade

# Perl lib
sudo perl -MCPAN -e'install MBclient'

# FTP server
sudo apt-get -y install proftpd
# not start at system init
sudo /etc/init.d/proftpd stop
sudo insserv -r proftpd

