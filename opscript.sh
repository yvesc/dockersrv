#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
export http_proxy=http://10.0.2.2:3128
export https_proxy=http://10.0.2.2:3128
apt-get update
apt-get upgrade
apt-get -y install mc
apt-get -y install htop
apt-get -y install screen
apt-get -y install docker.io
apt-get -y autoremove
echo "export http_proxy=http://10.0.2.2:3128" >> /etc/default/docker.io
echo "export https_proxy=http://10.0.2.2:3128" >> /etc/default/docker.io
service docker.io restart
echo
echo --- End provisionning ---
echo
