#!/bin/bash
SERVER_NAME="jenkins-project-0.0.1-SNAPSHOT.jar"
cp -rf docker/bin /home/enn/
mv target/${SERVER_NAME} /home/enn/bin/
cd /home/enn/bin/
ls
chmod 777 *.*
./stop.sh
BUILD_ID=dontKillMe
./start.sh
