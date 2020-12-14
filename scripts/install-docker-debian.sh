#!/bin/bash - 
#===============================================================================
#
#          FILE: install-docker-debian.sh
# 
#         USAGE: ./install-docker-debian.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 13/12/2020 01:59
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
export DEBIAN_FRONTEND=noninteractive
sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get install -y python3 python3-pip
sudo apt-get install remove python-configparser


curl -sSL https://get.docker.com | sh
sudo usermod -aG docker dale
docker run hello-world

sudo pip3 -v install docker-compose
