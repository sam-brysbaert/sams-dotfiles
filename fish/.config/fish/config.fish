# turns the welcome message off
set fish_greeting

# adds scripts folder to path
set fish_user_paths $fish_user_paths ~/.scripts

# set vim as default editor
set -gx EDITOR vim
set -gx VISUAL vim

# do startx automatically when you login on tty1
if test (tty) = "/dev/tty1"
	exec startx
end
