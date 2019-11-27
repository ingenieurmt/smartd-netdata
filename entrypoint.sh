#!/bin/sh -e

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

exec /usr/sbin/smartd "$@"
