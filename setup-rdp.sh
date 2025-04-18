#!/bin/bash
sudo apt update
sudo apt install -y xrdp lxde-core lxde-common
sudo systemctl enable xrdp
sudo systemctl start xrdp
echo "startlxde" > ~/.xsession
sudo sed -i 's/port=3389/port=3389/' /etc/xrdp/xrdp.ini
sudo systemctl restart xrdp
