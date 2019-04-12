#!/bin/bash

if [[ $# -eq 0 ]] ; then
    read -p "Say me who is bad boy? " -e input
    echo "Your said $input"
else
    input=$1
fi

PID=`ps -eaf | grep $input | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID
fi
