# load Xresources file for things like cursor size
xrdb ~/.Xresources

# load sxhkd for keyboard shortcuts
sxhkd &

# for turning numlock on automatically
numlockx &

# set volume to a reasonably low number by default on startup
amixer set Master 20% &

# set keyboard backlight brightness to zero
sudo ~/.scripts/kb-light.py - 5

# window manager
exec bspwm
