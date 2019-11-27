FROM alpine
RUN apk add --update --no-cache smartmontools

ADD smartd.conf /etc/smartd.conf
ADD entrypoint.sh /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]

MAINTAINER ingenieurmt <matthew@thompsons.id.au>
