# load Xresources file for things like cursor size
xrdb ~/.Xresources

# load sxhkd for keyboard shortcuts
sxhkd &

# for turning numlock on automatically
numlockx &

# when system is inactive: turn off screen, then lock and suspend
xidlehook --not-when-fullscreen --not-when-audio --timer normal 600 'xset dpms force off' '' --timer normal 30 'i3lock -nc 1e1766 & systemctl suspend' '' &

# set volume to a reasonably low number by default on startup
amixer set Master 20% &

# window manager
exec bspwm
