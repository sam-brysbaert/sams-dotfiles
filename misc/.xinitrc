# load Xresources file for things like cursor size
xrdb ~/.Xresources

# load sxhkd for keyboard shortcuts
sxhkd &

# for turning numlock on automatically
numlockx &

# when system is inactive: turn off screen, then lock and suspend
xidlehook --not-when-fullscreen --not-when-audio --timer 600 'xset dpms force off' '' --timer 30 'systemctl suspend & slock' '' &

# set volume to a reasonably low number by default on startup
amixer set Master 20% &

# set x to use both displays
xrandr --output DP-0 --primary --mode 2560x1440 --rotate normal --output DVI-I-1 --mode 2560x1440 --rotate normal --right-of DP-0

# window manager
exec bspwm
