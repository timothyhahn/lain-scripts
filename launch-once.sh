#!/bin/bash

## Things I want to launch only once

# spawn args
# $1: The process to look for
# $2: (optional) the process to launch.
# If $2 is empty it will launch $1
function spawn {
	if [ "$(pgrep $1)" ]; then
		echo "$1 already running."
	else
		if [ "$2" ]; then
			"$($2)" &
		else
			"$($1)" &
		fi
	fi
}

spawn "wicd-client" "wicd-client --tray"
spawn "alsa-tray"
spawn "xcompmgr"
spawn "caffeine"
