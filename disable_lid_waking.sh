#!/usr/bin/env bash
#
/usr/bin/echo LID > /proc/acpi/wakeup

/usr/bin/systemd-cat -t "disable_lid_waking.sh" /usr/bin/echo "***** LID WAKING DEACTIVATED - $(date) *****"

exit 0
