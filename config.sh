#!/bin/sh

echo "Downloading configuration example files..."
cd ~
wget https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf.zip
unzip conf.zip -d /etc/ntripcaster
