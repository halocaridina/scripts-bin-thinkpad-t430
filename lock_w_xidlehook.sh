#!/usr/bin/env bash

# Only exported variables can be used within the timer's command.
export PRIMARY_DISPLAY="$(/usr/bin/xrandr | /usr/bin/awk '/ primary/{print $1}')"

# Run xidlehook
/usr/bin/xidlehook \
  `# Reset the idle timer after woken from suspend` \
  --detect-sleep \
  `# Don't lock when there's a fullscreen application` \
  --not-when-fullscreen \
  `# Don't lock when there's audio playing` \
  --not-when-audio \
  `# Dim the screen after 3 mins, undim if user becomes active` \
  --timer 180 \
    '/usr/bin/xrandr --output "$PRIMARY_DISPLAY" --brightness .1' \
    '/usr/bin/xrandr --output "$PRIMARY_DISPLAY" --brightness 1' \
  `# Undim & lock after 2 more mins` \
  --timer 120 \
    '/usr/bin/xrandr --output "$PRIMARY_DISPLAY" --brightness 1; /usr/bin/i3lock -f -b -i /home/srsantos/.i3/wallpapers/dark-metal-grids/dark-metal-grid-8_1600x900.png' \
    '' \
  `# Finally, suspend an hour after screen lock` \
  --timer 3600 \
    '/usr/bin/systemctl suspend' \
    ''
