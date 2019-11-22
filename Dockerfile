MAINTAINER ingenieurmt <matthew@thompsons.id.au>

FROM alpine
RUN apk add --update --no-cache smartmontools

ADD smartd.conf /etc/smartd.conf

ENTRYPOINT /usr/sbin/smartd -A /var/log/smartd/ -i 600
