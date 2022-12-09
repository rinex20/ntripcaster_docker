FROM ubuntu:18.04 as builder

WORKDIR /root

COPY ntripcaster ntripcaster

RUN apt-get update && apt-get install build-essential --assume-yes

RUN cd /root/ntripcaster && \
    ./configure && \
    make && \
    make install

# The builder image is dumped and a fresh image is used
# just with the built binary, config and logs made from 'make install'
FROM ubuntu:18.04
ENV ver=1.1.6
LABEL maintainer="Jacky <cheungyong@gmail.com>"
COPY --from=builder /usr/local/ntripcaster/ /usr/local/
RUN mkdir -p /etc/ntripcaster && \
    ln -s /usr/local/ntripcaster/conf /etc/ntripcaster/conf && \
    ln -s /usr/local/ntripcaster/logs /etc/ntripcaster/logs
    

EXPOSE 2101
VOLUME /etc/ntripcaster
WORKDIR /usr/local/ntripcaster/logs
CMD /usr/local/ntripcaster/bin/ntripcaster

