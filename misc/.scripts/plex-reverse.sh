#!/usr/bin/env bash

xset s on +dpms
sudo systemctl start tlp
sudo xbacklight -set 60

## redshift
# Terminate already running redshift instances
pkill redshift
# Wait until the processes have been shut down
while pidof redshift >/dev/null; do sleep 1; done
# load redshift and set it to automatically change screen warmth after sunset
redshift -l 50:4 -t 6500K:4000K &

