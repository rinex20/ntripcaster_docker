# NTRIPCASTER Docker

## Prepare for configuration
You must prepare for some configuration in host at first:
```shell
$ wget -O config.sh https://raw.githubusercontent.com/rinex20/ntripcaster_docker/master/config.sh
```

Then :
```shell
$ chmod +x config.sh && ./config.sh
```

then config ntripcaster.conf and other users or group, sourcetable files.
```shell
$ vim /etc/ntripcaster/ntripcaster.conf
```

- ntripcaster.conf,   main configuration
- clientmounts.aut,   stream authentication for ntrip clients
- sourcemounts.aut,   stream authentication for ntrip sources (Ntrip 2.0)
- users.aut,          user definitions
- groups.aut,        group definitions
- sourcetable.dat,    the sourcetable containing stream information
  
If you want to use user and password authenticated streams, you need to edit the .aut files accordingly.

In these files you will find help about what can be specified there and how to do that.

## Start container
The following is an example to start a container that listens on port 2101, run as a ntripcaster like below:
```shell
$ docker run -d -p 2101:2101 --name ntripcaster --restart=always -v /etc/ntripcaster:/etc/ntripcaster rinex20/ntripcaster
```
