FROM alpine:3.8
MAINTAINER ingenieurmt <matthew@thompsons.id.au>

RUN set -xe && \
    apk add --update --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    smartmontools && \
    rm -rf /tmp/* /var/tmp/

ADD smartd.conf /etc/smartd.conf

CMD /usr/sbin/smartd -A /var/log/smartd/ -i 600
