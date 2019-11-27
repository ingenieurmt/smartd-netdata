#!/bin/sh -e

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

if [ "$1" == "smartd" ]; then
  exec /usr/sbin/smartd "$@"
fi
