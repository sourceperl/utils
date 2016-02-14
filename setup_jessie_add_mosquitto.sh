# home
cd

# add repo key
wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key
sudo apt-key add mosquitto-repo.gpg.key
rm mosquitto-repo.gpg.key

# add repo to apt
cd /etc/apt/sources.list.d/
sudo wget http://repo.mosquitto.org/debian/mosquitto-jessie.list

# refresh apt
sudo apt-get update

# install broker and clients
sudo apt-get install mosquitto mosquitto-clients
