#!/bin/bash
sudo add-apt-repository ppa:deluge-team/ppa -y
sudo apt-get update
sudo apt-get install deluged deluge-web -y
sudo adduser --system --group --home /var/lib/deluge deluge
sudo usermod -aG deluge root

wget http://p.brosgit.pro/vibe/deluged.conf -O /etc/init/deluged.conf
wget http://p.brosgit.pro/vibe/deluge-web.conf -O /etc/init/deluge-web.conf
wget http://p.brosgit.pro/vibe/deluge -O /etc/logrotate.d/deluge

sudo mkdir -p /var/log/deluge
sudo chown -R deluge:deluge /var/log/deluge
sudo chmod -R 770 /var/log/deluge
