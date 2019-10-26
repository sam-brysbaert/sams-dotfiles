# load Xresources file for things like cursor size
xrdb ~/.Xresources

# load sxhkd for keyboard shortcuts
sxhkd &

# for turning numlock on automatically
numlockx &

# set volume to a reasonably low number by default on startup
amixer set Master 20% &

# window manager
exec bspwm
