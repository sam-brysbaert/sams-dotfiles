#!/usr/bin/fish

xset s off -dpms
pkill redshift
sudo systemctl stop tlp
sudo xbacklight -set 100
plexmediaplayer
