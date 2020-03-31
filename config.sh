#!/bin/sh

echo "Downloading configuration example files..."
mkdir -p /etc/ntripcaster
wget -O /etc/ntripcaster/users.aut https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/users.aut
wget -O /etc/ntripcaster/groups.aut https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/groups.aut
wget -O /etc/ntripcaster/clientmounts.aut https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/clientmounts.aut
wget -O /etc/ntripcaster/sourcemounts.aut https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/sourcemounts.aut
wget -O /etc/ntripcaster/sourcetable.dat https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/sourcetable.dat
wget -O /etc/ntripcaster/ntripcaster.conf https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/conf/ntripcaster.conf

ls -l /etc/ntripcaster
