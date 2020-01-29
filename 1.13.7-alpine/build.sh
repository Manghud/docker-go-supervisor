#!/bin/sh
cd "$1/src/$MODULE_PATH"
echo "Building $MAIN_FILE_PATH"
go build -o "$1/app" -i $MAIN_FILE_PATH
echo "Build successful. Binary moved to $1"
supervisord -n