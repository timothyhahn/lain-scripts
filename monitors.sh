#!/bin/bash

## This file exists because udev runs scripts as root/something weird
## so xrandr never found the correct display.

export DISPLAY=:0.0
 
function connect(){
#echo "connect" > /home/tim/hi
	xrandr --output DP1 --auto --above eDP1
}
 
function disconnect(){
#echo "disconnect" > /home/tim/hi
	xrandr --output DP1 --off --output eDP1 --auto
}
 
xrandr | grep "^DP1 connected" &> /dev/null && connect || disconnect
