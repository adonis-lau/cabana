#!/bin/bash
if [ "$1" == "start" ]; then
    nohup java -jar cabana-start-0.0.1-SNAPSHOT.jar > /dev/null 2>&1 &
    echo "Application is starting."
else if [ "$1" == "stop" ]; then
    PID=$(ps -ef | grep cabana-start-0.0.1-SNAPSHOT.jar | grep -v grep | awk '{ print $2 }')
    if [ -z "$PID" ]; then
        echo Application is already stopped
    else
        echo kill -9 $PID
        kill -9 $PID
    fi
else if [ "$1" == "status" ]; then
    PID=$(ps -ef | grep cabana-start-0.0.1-SNAPSHOT.jar | grep -v grep | awk '{ print $2 }')
    if [ -z "$PID" ]; then
        echo Application is stopped
    else
        echo Application is running
        echo $PID
    fi
fi
fi
fi