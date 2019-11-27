FROM alpine:latest
RUN apk add --update --no-cache smartmontools

COPY smartd.conf /etc/

USER root

ENTRYPOINT ["/usr/sbin/smartd", "-n", "-q never", "--attributelog=/var/log/smartd"]
CMD ["-i 10"]

MAINTAINER ingenieurmt <matthew@thompsons.id.au>
