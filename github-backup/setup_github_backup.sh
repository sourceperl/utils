#!/bin/bash
# assume Raspberry Pi change if not

# create backup dir
mkdir -p /home/pi/github_backup

# install github_backup
sudo pip install github-backup

# add script to cron
sudo cp gitbub-bak /etc/cron.weekly/

# warn
echo "!!! think to update /etc/cron.weekly/github-bak with your credentials !!!"
