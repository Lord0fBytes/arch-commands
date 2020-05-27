#!/bin/bash

#COMMAND=@CMD (Change Me)
#TITLE= Change this title

#@HELP -> Displays this help menu for this command
help() {
	#Pulls the help files from this command
	CMD=$(echo "@${0##*/}" | sed 's/.sh//g')
	echo ""
	echo "~~ $CMD Help Menu ~~"
	echo "----------------------------------"
	grep -e '^#@' $PWD/${0##*/} | sed 's/#@//g'
	echo ""
}

#@BLANK -> Updates settings for when computer is docked
blank(){
	#This runs be default with no options
	xrandr --output eDP1 --mode 2736x1824 --pos 0x1080 --rotate normal --output DP1 --off --output DP2 --off --output DP2-1 --primary --mode 1920x1080 --pos 816x0 --rotate normal --output DP2-2 --mode 1920x1080 --pos 2736x0 --rotate right --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
	xrdb -merge ~/.Xresources.docked
}

case $1 in 
	help) help ;;
	*) blank ;;
esac
