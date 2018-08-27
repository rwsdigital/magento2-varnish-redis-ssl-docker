#!/bin/bash

if [ $1 == 'no-bootstrap' ]; then
  exec bash
fi

if ( id ${USER} ); then
  echo "User ${USER} already exists"
else
  echo "Creating user ${USER}"
  ENC_PASS=$(perl -e 'print crypt($ARGV[0], "password")' ${PASS})
  useradd -d /var/www/html -m -p ${ENC_PASS} -u 1000 -g 33 -s /bin/sh ${USER}
fi

/usr/bin/supervisord