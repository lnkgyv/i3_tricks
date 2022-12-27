#!/bin/bash
# Got from https://faq.i3wm.org/question/239/how-do-i-suspendlockscreen-and-logout.1.html
lock() {
	# Stock
	i3lock

	# If xscreensaver exists and works
	#xscreensaver-command -lock
}

case "$1" in
	lock)
		lock
		;;
	logout)
		i3-msg exit
		;;
	suspend)
		lock && sudo systemctl suspend
		;;
	hibernate)
		lock && sudo systemctl hibernate
		;;
	reboot)
		sudo systemctl reboot
		;;
	shutdown)
		sudo systemctl poweroff
		;;
	*)
		echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
		exit 2
esac

exit 0
