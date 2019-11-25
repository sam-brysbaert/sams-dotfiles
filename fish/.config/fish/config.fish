# turns the welcome message off
set fish_greeting

# adds scripts folder to path
set fish_user_paths $fish_user_paths ~/.scripts

# do startx automatically when you login on tty1
if test (tty) = "/dev/tty1"
	exec startx
end
