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

#@BLANK -> Default command (CHANGE ME)
blank(){
	#This runs be default with no options
	echo "hello"
}

case $1 in 
	help) help ;;
	*) blank ;;
esac