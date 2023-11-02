#!/usr/bin/env sh

/usr/bin/i3 -c /home/srsantos/.i3/bling.conf -V >> /tmp/i3log-$(date +'%F-%k-%M-%S') 2>&1
