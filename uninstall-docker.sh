#!/bin/bash

# Identify Docker
dpkg -l | grep -i docker

# Uninstall All Docker Programs
sudo apt-get purge -y docker-engine docker docker.io docker-ce
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce
sudo apt-get autoclean
docker-machine rm -f $(docker-machine ls -q)

# Delete All Docker Files
sudo rm -rf /var/lib/docker
sudo rm /etc/apparmor.d/docker
sudo groupdel docker
sudo rm -rf /var/run/docker.sock
sudo rm -rf /Applications/Docker
sudo rm -f /usr/local/bin/docker
sudo rm -f /usr/local/bin/docker-machine
sudo rm -r /usr/local/bin/docker-machine-driver*
sudo rm -f /usr/local/bin/docker-compose
sudo rm -rf /usr/local/share/boot2docker
