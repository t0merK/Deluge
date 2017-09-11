sudo add-apt-repository ppa:deluge-team/ppa
sudo apt-get update
sudo apt-get install deluge-webui deluged -y
sudo adduser --system --gecos "Deluge Service" --disabled-password --group --home /var/lib/deluge deluge
wget https://raw.githubusercontent.com/Tech-Blog/Deluge/master/ubuntu-16/deluged.service -O /etc/systemd/system/deluged.service
wget https://raw.githubusercontent.com/Tech-Blog/Deluge/master/ubuntu-16/deluge-web.service -O /etc/systemd/system/deluge-web.service
systemctl start deluged
systemctl enable deluged
systemctl start deluge-web
systemctl enable deluge-web
echo "your-server-ip:8112"
