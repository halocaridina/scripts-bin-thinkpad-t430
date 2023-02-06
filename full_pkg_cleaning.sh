#!/usr/bin/env bash

/usr/bin/paccache -ruk0

/usr/bin/paccache -k 2 -r -f

/usr/bin/pacman -Qtdq | /usr/bin/pacman -Rns -

/usr/bin/pacdiff
