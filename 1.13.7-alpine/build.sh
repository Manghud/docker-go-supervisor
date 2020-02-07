#!/bin/sh
cd "/go/src/$MODULE_PATH"
echo "Building $MAIN_FILE_PATH"
go build -o "/go/app" -i $MAIN_FILE_PATH
go clean -cache
echo "Build successful. Binary moved to /go"
if [ -z ${LOG_LEVEL+info} ];
  then echo "Defaulting LogLevel to info";
fi
supervisord
supervisorctl status
tail -n 100 -F /var/log/supervisord.log