#!/bin/bash
#This file was created on 27/04/15
COUNT=10
while (( COUNT > 0 ))
do
	echo -e "$COUNT \c"
	sleep 1
	(( COUNT -- ))
done
echo -e "\n\nFire!!"

