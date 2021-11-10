#!/bin/bash

# Python modules
sudo apt install -y python-pip python-serial python-scipy \
                    python-requests python-twisted python-matplotlib ipython \
                    python3-pip python3-serial python3-scipy python3-requests ipython3

# Python lib
sudo pip install pyModbusTCP --upgrade
sudo pip3 install pyModbusTCP --upgrade
sudo pip install schedule --upgrade
sudo pip3 install schedule --upgrade
