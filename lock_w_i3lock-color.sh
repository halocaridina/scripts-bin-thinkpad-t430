#!/usr/bin/env sh

TEXT='#D3D7CF'
TEXT2='#000000'
FONT='Iosevka Term SS03,Iosevka Term SS03 Regular'

####################################################################
# Prelock.....

/usr/bin/systemd-cat -t "i3lock-color-pre" /usr/bin/echo "***** SCREEN LOCK READY TO ACTIVATE - $(date) *****"

/usr/bin/killall -SIGUSR1 dunst

####################################################################
# Lock.....

/usr/bin/i3lock \
-n -f -b -i /home/srsantos/.i3/wallpapers/dark-metal-grids/dark-metal-grid-8_1600x900.png \
--time-color=$TEXT --date-color=$TEXT --verif-color=$TEXT2 --wrong-color=$TEXT2 --modif-color=$TEXT2 \
--layout-color=$TEXT --clock --indicator --time-str="%H:%M:%S" --date-str="%A, %Y-%m-%d" \
--verif-text="Verifying..." --wrong-text="Wrong!" --noinput-text="No Input" --lock-text="Locking..." --lockfailed-text="Lock Failed!" \
--greeter-color=$TEXT --greeter-pos="800:640" --greeter-text="" --time-font=$FONT --date-font=$FONT \
--layout-font=$FONT --verif-font=$FONT --verif-size=26 --wrong-font=$FONT --greeter-font=$FONT \
--pass-media-keys --pass-screen-keys --pass-power-keys --pass-volume-keys

####################################################################
#Postlock.....

/usr/bin/killall -SIGUSR2 dunst

/usr/bin/systemd-cat -t "i3lock-color-post" /usr/bin/echo "***** SCREEN LOCK DEACTIVATED - $(date) *****"
