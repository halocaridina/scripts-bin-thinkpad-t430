#!/usr/bin/env bash

export DISPLAY=:0
export XAUTHORITY=/home/srsantos/.Xauthority
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

if [ -z "$(pidof Xorg)" ] ; then
        /usr/bin/systemd-cat -t "yubikey-screen_lock-trigger" /usr/bin/echo "***** XORG NOT STARTED - YUBIKEY REMOVAL SCREEN LOCK NOT ACTIVATED - $(date) *****"
        /usr/bin/pkill gpg-agent &>/dev/null
        exit 0
 elif [ -z "$(lsusb | grep Yubikey)" ] ; then
        /usr/bin/systemd-cat -t "yubikey-screen_lock-trigger" /usr/bin/echo "***** YUBIKEY REMOVED - SCREEN LOCK ACTIVATED - $(date) *****"
        /usr/bin/xset dpms force off
        /usr/bin/pkill gpg-agent &>/dev/null
        exit 0
 else
        /usr/bin/pkill gpg-agent &>/dev/null
        exit 0
fi

