#!/bin/bash
done=0
interval=1
target_offset=0

if [ "$1" ] 
then 
    target_offset=$1 
else 
    target_offset=5 
fi

echo "Starting timer with offset $target_offset mins"
target_time=`date -v +"$target_offset"M`
target_time_epoch=`date -v +"$target_offset"M +%s`

echo "Timer will sound at $target_time / $target_time_epoch"

while [ $done -eq 0 ]
do
    time=`date +%s`
    if [ $time -gt $target_time_epoch ]
    then
        echo "Time!"
        say Timer
        say Timer
        say Timer 
        done=1 
    fi
    sleep $interval
done

