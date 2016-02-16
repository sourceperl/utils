#!/bin/bash
# add auto-update of debian jessie security packages

# note: after do this /etc/cron.daily/apt will update package list daily, 
# download all upgradeable packages and auto-upgrade security issues

# add unattended-upgrades package
sudo apt-get install -y unattended-upgrades

# configure unattended-upgrades
sudo touch /etc/apt/apt.conf.d/20auto-upgrades
echo 'APT::Periodic::Update-Package-Lists "1";' | sudo tee --append  /etc/apt/apt.conf.d/20auto-upgrades
echo 'APT::Periodic::Download-Upgradeable-Packages "1";' | sudo tee --append  /etc/apt/apt.conf.d/20auto-upgrades
echo 'APT::Periodic::AutocleanInterval "7";' | sudo tee --append  /etc/apt/apt.conf.d/20auto-upgrades
echo 'APT::Periodic::Unattended-Upgrade "1";' | sudo tee --append  /etc/apt/apt.conf.d/20auto-upgrades
