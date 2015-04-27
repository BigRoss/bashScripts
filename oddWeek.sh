#!/bin/bash
#This file was created on 25/04/15

WEEKOFFSET=$[ $(date +"%V") % 2 ]

if [ $WEEKOFFSET -eq "0" ]
	then
		echo "Put out garbage cans!"
		#echo "Put out garbage cans!" | mail -s "Garbage! alin5605@gmail.com
else
	echo "No garbage collection this week!"
fi
