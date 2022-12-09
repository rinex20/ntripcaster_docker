#!/bin/sh

echo "Downloading configuration example files..."
mkdir -p /etc/ntripcaster
mkdir -p /etc/ntripcaster/conf
mkdir -p /etc/ntripcaster/logs
mkdir -p /docker
mkdir -p /docker/ntripcaster

wget -O /etc/ntripcaster/conf/sourcetable.dat https://raw.githubusercontent.com/rinex20/ntripcaster_docker/automount/conf/sourcetable.dat
wget -O /etc/ntripcaster/conf/ntripcaster.conf https://raw.githubusercontent.com/rinex20/ntripcaster_docker/automount/conf/ntripcaster.conf
wget -O /etc/ntripcaster/conf/mountpos.conf https://raw.githubusercontent.com/rinex20/ntripcaster_docker/automount/conf/mountpos.conf

wget -O /docker/ntripcaster/docker-compose.yml https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/docker-compose.yml

ls -l /etc/ntripcaster

