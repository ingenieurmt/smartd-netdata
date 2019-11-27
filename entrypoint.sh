#!/bin/sh -e

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

exec /usr/sbin/smartd -n -A /var/log/smartd/ -i 10
