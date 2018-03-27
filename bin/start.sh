#!/bin/bash

PIDS=`ps -ef | grep "jenkins-project" | grep -v grep | awk '{print $2}'`
if [ -n "$PIDS" ]; then
    echo "ERROR: The $SERVER_NAME already started!"
    exit 1
fi

LOGS_DIR="/home/enn/logs"

if [ ! -d $LOGS_DIR ]; then
	mkdir -p $LOGS_DIR
fi
STDOUT_FILE=$LOGS_DIR/service.log

nohup java -jar /home/enn/jenkins-project-1.0-SNAPSHOT.jar > $STDOUT_FILE 2>&1 &