# load Xresources file for things like cursor size
xrdb ~/.Xresources

# set keyboard layout to use alt gr as compose key for international characters
setxkbmap -option compose:ralt

# load sxhkd for keyboard shortcuts
sxhkd &

# for turning numlock on automatically
numlockx &

# when system is inactive: turn off screen, then lock and suspend
xidlehook --not-when-fullscreen --not-when-audio --timer 600 'xset dpms force off' '' --timer 30 'systemctl suspend & slock' '' &

# set volume to a reasonably low number by default on startup
amixer set Master 20% &

# window manager
exec bspwm
