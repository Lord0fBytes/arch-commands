#!/bin/bash

#COMMAND=@Wifi
#TITLE=Displays the current wifi status

#@HELP -> Displays this help menu for this command
help() {
	#Pulls the help files from this command
	CMD=$(grep -e '^#COMMAND' $BASH_SOURCE | sed 's/#COMMAND=//g')
	echo ""
	echo "~~ $CMD Help Menu ~~"
	echo "----------------------------------"
	grep -e '^#@' $BASH_SOURCE | sed 's/#@//g'
	echo ""
}

#@BLANK -> Displays the current status of the wifi menu
status() {
	#Where it displays the status
	sudo wpa_cli status > /dev/null 2>&1
	exitcode=$?
	if [ $exitcode -gt 0 ] 
	then
		echo "Driver is not enabled. Attempting to force interface on..."
		#connect
	else
		sudo wpa_cli status | grep -e '^ssid' -e '^id=' -e 'wpa_state' -e 'ip_address'
	fi
}

#@CONNECT -> Forces the wireless NIC to reconnect
connect() {
	sudo wpa_supplicant -B -i wlp2s0 -c /etc/wpa_supplicant/wpa_supplicant.conf > /dev/null 2>&1
	echo "Connecting to SSID..."
	wifistatus=$(sudo wpa_cli status | grep -e 'wpa_state')
	while [ -z $(sudo wpa_cli status | grep -e 'ip_address') ] #potential infinite loop; need to add a failsafe counter after 30 seconds
	do
		sleep 1
	done
	ipaddr=$(sudo wpa_cli status | grep -e 'ip_address' | sed 's/ip_address=//g')
	ssid=$(sudo wpa_cli status | grep -e '^ssid' | sed 's/ssid=//g')
	echo "Connected to $ssid@$ipaddr"
}

case $1 in 
	add) add "$2" ;;
	connect) connect ;;
	edit) edit "$2" ;;
	help) help ;;
	*) status ;;
esac
