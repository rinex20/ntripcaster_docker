FROM ubuntu:16.04

ENV ver=1.0
LABEL maintainer="Jacky <cheungyong@gmail.com>"

WORKDIR /root
COPY ntripcaster.tar.gz /root
RUN set -ex \
	&& mkdir -p /etc/ntripcaster \
	&& tar -zxvf ntripcaster.tar.gz -C / \
	&& mv -t /usr/local/bin/ntripcaster ../ \
	&& chmod +x /usr/local/ntripcaster/bin/ntripcaster \
	&& chmod +x /usr/local/ntripcaster/bin/casterwatch \
	&& chmod +x /usr/local/ntripcaster/sbin/ntripdaemon \
	&& rm -f /root/ntripcaster.tar.gz

EXPOSE 2101
VOLUME /etc/ntripcaster
CMD [ "/usr/local/ntripcaster/sbin/ntripdaemon", "-d", "/etc/ntripcaster" ]
