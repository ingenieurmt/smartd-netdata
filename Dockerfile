FROM alpine:latest
RUN apk add --update --no-cache smartmontools

COPY smartd.conf /etc/

USER root

ENTRYPOINT ["/usr/sbin/smartd", "-n", "--quit=never", "--attributelog=/var/log/smartd"]
CMD ["--interval=10"]

MAINTAINER ingenieurmt <matthew@thompsons.id.au>
