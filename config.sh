#!/bin/sh

echo "Downloading configuration example files..."
mkdir -p /etc/ntripcaster/conf
wget -O /etc/ntripcaster/conf/users.aut https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/users.aut
wget -O /etc/ntripcaster/conf/groups.aut https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/groups.aut
wget -O /etc/ntripcaster/conf/clientmounts.aut https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/clientmounts.aut
wget -O /etc/ntripcaster/conf/sourcemounts.aut https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/sourcemounts.aut
wget -O /etc/ntripcaster/conf/sourcetable.dat https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/sourcetable.dat
wget -O /etc/ntripcaster/conf/ntripcaster.conf https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/ntripcaster.conf

ls -l /etc/ntripcaster/conf
