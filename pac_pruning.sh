#!/usr/bin/env bash

export XAUTHORITY=/home/srsantos/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

NUM_2_PRUNE="`/usr/bin/paccache -k 2 -d -v | /usr/bin/grep -E -v '==|^$|.sig' | /usr/bin/wc -l`"

if [ "$NUM_2_PRUNE" -lt 40 ]; then
    exit 0
else
    notify-send -u critical 'Time to clean the pacman cache!!' "${NUM_2_PRUNE} packages can be pruned."
fi
exit 0

