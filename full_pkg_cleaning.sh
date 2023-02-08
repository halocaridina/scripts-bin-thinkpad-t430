#!/usr/bin/env bash

/usr/bin/sudo /usr/bin/paccache -ruvk0

/usr/bin/sudo /usr/bin/paccache -k 2 -r -f -v

/usr/bin/sudo /usr/bin/pacdiff

/usr/bin/pacman -Qtdq | /usr/bin/sudo /usr/bin/pacman -Rns -
