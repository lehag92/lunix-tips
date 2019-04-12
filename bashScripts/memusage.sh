#!/bin/bash

#Minimum available memory limit, MB
THRESHOLD=500

main()
{
    available=$(free -m | awk '/^Mem:/{print $7}')

    if [ $available -lt $THRESHOLD ]
        then
        free=$(free -m|awk '/^Mem:/{print $4}')
        buffers=$(free -m|awk '/^Mem:/{print $6}')
        cached=$(free -m|awk '/^Mem:/{print $7}')
        message="Free $free""MB"", buffers $buffers""MB"", cached $cached""MB"", available $available""MB"""


	#18.04
        export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
        DISPLAY=:0.0 /usr/bin/notify-send -u critical "Memory is running out!" "$message"
    fi
}

(sleep 5 && main) &
(sleep 10 && main) &
(sleep 15 && main) &
(sleep 20 && main) &
(sleep 25 && main) &
(sleep 30 && main) &
(sleep 35 && main) &
(sleep 40 && main) &
(sleep 45 && main) &
(sleep 50 && main) &
(sleep 55 && main) &
(sleep 60 && main) &
