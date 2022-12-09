#!/bin/sh

echo "Downloading configuration example files..."
mkdir -p /etc/ntripcaster
mkdir -p /etc/ntripcaster/conf
mkdir -p /etc/ntripcaster/logs
mkdir -p /docker
mkdir -p /docker/ntripcaster

wget -O /etc/ntripcaster/sourcetable.dat https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/sourcetable.dat
wget -O /etc/ntripcaster/ntripcaster.conf https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/ntripcaster.conf

wget -O /docker/ntripcaster/docker-compose.yml https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/docker-compose.yml

ls -l /etc/ntripcaster

