#!/bin/sh

echo "Downloading configuration example files..."
mkdir -p /etc/ntripcaster/conf
wget -P /etc/ntripcaster/conf https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/users.aut
wget -P /etc/ntripcaster/conf https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/groups.aut
wget -P /etc/ntripcaster/conf https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/clientmounts.aut
wget -P /etc/ntripcaster/conf https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/sourcemounts.aut
wget -P /etc/ntripcaster/conf https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/sourcetable.dat
wget -P /etc/ntripcaster/conf https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/ntripcaster.conf

ls -l /etc/ntripcaster/conf
