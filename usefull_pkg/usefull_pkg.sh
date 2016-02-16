#!/bin/bash

# Arduino
#sudo apt-get install gcc-avr avr-libc avrdude

# Node.js
sudo apt-get -y install nodejs-legacy

# Perl lib
sudo perl -MCPAN -e'install MBclient'

# FTP server
sudo apt-get -y install proftpd
# not start at system init
sudo /etc/init.d/proftpd stop
sudo insserv -r proftpd
