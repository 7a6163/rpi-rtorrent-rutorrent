FROM hypriot/rpi-alpine-scratch

MAINTAINER Zac

RUN apk update && \
    apk upgrade && \
    apk add bash rtorrent nginx php unzip wget && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /var/www && \
    wget --no-check-certificate https://bintray.com/artifact/download/novik65/generic/ruTorrent-3.7.zip && \
    unzip ruTorrent-3.7.zip && \
    mv ruTorrent-master /var/www/rutorrent
    rm ruTorrent-3.7.zip

EXPOSE 80
EXPOSE 443
EXPOSE 49160
EXPOSE 49161
CMD ["/bin/bash"]
