#!/bin/bash

SERVER_NAME="jenkins-project"

PIDS=`ps -ef | grep "jenkins-project" | grep -v grep | awk '{print $2}'`
if [ -z "$PIDS" ]; then
    echo "ERROR: The $SERVER_NAME does not started!"
    exit 1
fi

for PID in $PIDS ; do
        kill -9 $PID > /dev/null 2>&1
done