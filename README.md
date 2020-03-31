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
$ vim /etc/ntripcaster/conf/ntripcaster.conf
```

## Start container
The following is an example to start a container that listens on port 2101, run as a ntripcaster like below:
```shell
$ docker run -d -p 2101:2101 --name ntripcaster --restart=always -v /etc/ntripcaster/conf:/etc/ntripcaster rinex20/ntripcaster
```
