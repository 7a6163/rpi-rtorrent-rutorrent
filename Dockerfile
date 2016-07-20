FROM hypriot/rpi-alpine-scratch

MAINTAINER Zac

RUN apk update && \
apk upgrade && \
apk add bash rtorrent nginx && \
rm -rf /var/cache/apk/*

CMD ["/bin/bash"]
