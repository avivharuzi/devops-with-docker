#!/bin/bash

# Stop Containers
sudo docker stop $(sudo docker ps -a -q)

# Delete Containers
sudo docker rm $(sudo docker ps -a -q)

# Delete Images
sudo docker rmi $(sudo docker images -q)

# Delete System
sudo docker system prune --volumes
