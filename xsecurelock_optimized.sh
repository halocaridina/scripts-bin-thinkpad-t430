#!/usr/bin/env bash

export XSECURELOCK_BACKGROUND_COLOR='#222222'
export XSECURELOCK_AUTH_BACKGROUND_COLOR='#2e3436'
export XSECURELOCK_AUTH_FOREGROUND_COLOR='#babdb6'
export XSECURELOCK_AUTH_WARNING_COLOR='#700000'
############################################################
export XSECURELOCK_AUTH_CURSOR_BLINK=1
export XSECURELOCK_AUTH_SOUNDS=0
export XSECURELOCK_AUTH_TIMEOUT=10
############################################################
export XSECURELOCK_BLANK_TIMEOUT=15
export XSECURELOCK_BLANK_DPMS_STATE='off'
############################################################
export XSECURELOCK_FONT='Roboto Mono for Powerline Regular'
export XSECURELOCK_PASSWORD_PROMPT=time_hex
export XSECURELOCK_SHOW_USERNAME=1
export XSECURELOCK_SHOW_HOSTNAME=2
export XSECURELOCK_SHOW_DATETIME=1
export XSECURELOCK_DATETIME_FORMAT='%I:%M:%S %p / %a-%d-%b,%Y'
############################################################
export XSECURELOCK_SAVER=saver_mpv
export XSECURELOCK_LIST_VIDEOS_COMMAND="find /home/srsantos/.i3/wallpapers/dark-metal-grids/xsecurelock/ -type f"
export XSECURELOCK_VIDEOS_FLAGS='--osd-level=0 --load-scripts=no'
export XSECURELOCK_IMAGE_DURATION_SECONDS=60
############################################################
export XSECURELOCK_DIM_FPS=60
export XSECURELOCK_DIM_TIME_MS=7000
export XSECURELOCK_WAIT_TIME_MS=5000

/usr/bin/xsecurelock
