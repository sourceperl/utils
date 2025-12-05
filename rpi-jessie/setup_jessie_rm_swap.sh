sudo swapoff --all
sudo apt-get remove --purge dphys-swapfile
sudo apt-get autoremove
sudo rm /var/swap
