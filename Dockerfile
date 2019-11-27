FROM alpine:latest
RUN apk add --update --no-cache smartmontools

ADD smartd.conf /etc/smartd.conf

ENTRYPOINT ["/usr/sbin/smartd", "-n", "-A /var/log/smartd/", "-i 10"]

MAINTAINER ingenieurmt <matthew@thompsons.id.au>
