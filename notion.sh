#!/bin/bash

#COMMAND=@Notion
#TITLE= Open the Notion App for Linux

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

#@BLANK -> Open the Notion App for Linux
blank(){
	#This runs be default with no options
	cd /home/justin/Installs/lotion/Lotion
	./Lotion &
}

case $1 in 
	help) help ;;
	*) blank ;;
esac
