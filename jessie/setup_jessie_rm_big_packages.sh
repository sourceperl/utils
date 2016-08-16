# remove big packages from raspbian-jessie (gui version)

sudo apt-get purge wolfram-engine scratch minecraft-pi sonic-pi gpicview penguinspuzzle nodered
sudo apt-get remove --purge libreoffice*
sudo apt-get clean
sudo apt-get autoremove
