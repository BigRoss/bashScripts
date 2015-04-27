#!/bin/bash
#This filee was created on 25/04/15
while true
do
	echo -e "Enter directory, link, or file, or q to quit: \c"
	read DIR
	if [[ $DIR = q ]] || [[ $DIR = quit ]]
		then
			exit
	fi	
	case $DIR in
		"directory")
			find /etc -maxdepth 1 -type d
		;;
		"link")
			find /etc -maxdepth 1 -type l
		;;
		"file")
			find /etc -maxdepth 1 -type f
		;;
		*)
			echo "Usage: $0 file | directory | link"
		;;
	esac
done
