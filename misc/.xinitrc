# load Xresources file for things like cursor size
xrdb ~/.Xresources

# set keyboard layout to use alt gr as compose key for international characters
setxkbmap -option compose:ralt

# load sxhkd for keyboard shortcuts
sxhkd &

# for turning numlock on automatically
numlockx &

# when system is inactive: turn off screen, then lock and suspend
#xidlehook --not-when-fullscreen --not-when-audio --timer 600 'xset dpms force off' '' --timer 30 'systemctl suspend & slock' '' &

# set volume to a reasonably low number by default on startup
amixer set Master 20% &

# start picom
picom --experimental-backends --backend glx --vsync --glx-no-rebind-pixmap --glx-no-stencil &

# config for two displays
# xrandr --newmode "2560x1440"x0.0  241.69  2560 2608 2640 2720  1440 1450 1455 1481 +hsync -vsync; xrandr --addmode HDMI1 2560x1440; xrandr --output eDP1 --primary --mode 2560x1440 --rotate normal --output HDMI1 --mode 2560x1440 --rotate normal --left-of eDP1

# window manager
#exec bspwm
exec dwm
