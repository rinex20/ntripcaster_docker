FROM ubuntu:18.04

ENV ver=1.0
LABEL maintainer="Jacky <cheungyong@gmail.com>"

WORKDIR /root
COPY ntripcaster.tar.gz /root
RUN set -ex \
	&& mkdir -p /etc/ntripcaster/conf \
	&& tar -zxvf ntripcaster.tar.gz -C / \
	&& chmod +x /usr/local/bin/ntripcaster/bin/ntripcaster \
	&& chmod +x /usr/local/bin/ntripcaster/bin/casterwatch \
	&& chmod +x /usr/local/bin/ntripcaster/sbin/ntripdaemon 

EXPOSE 2101
VOLUME /etc/ntripcaster
CMD [ "/usr/local/bin/ntripcaster/sbin/ntripdaemon", "-d", "/etc/ntripcaster/conf" ]
