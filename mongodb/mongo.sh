#!/bin/bash

HOST=
PORT=

MONGO=$(which mongo)
if [[ ! -x "$MONGO" ]]; then
  echo 1 && exit 1
fi

echo 'db.isMaster()' | mongo --host ${HOST:-localhost} --port ${PORT:-27017} 2>&1 &>/dev/null
echo $?
