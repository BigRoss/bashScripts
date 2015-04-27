#!/bin/bash
#This file was created on 27/04/15

SPACE=$(df -h | awk '{ print $5 }' | grep -v Use | sort -n | tail -1 | cut -d % -f1 )
case $SPACE in
[1-6]* | ?)
	MESSAGE="Not much going on here."
;;
[7-8]?)
	MESSAGE="Check out some stuff, there's something taking up $SPACE % memory brah."
;;
9[0-8])
	MESSAGE="Yeah.. better do something about this, there's something taking up $SPACE memeory."
;;
99)
	MESSAGE="Yeah i think your computer is dead."
;;
esac

echo $MESSAGE
