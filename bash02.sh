#!/bin/bash
#This file was created on 25/04/15
if [[ $1 = "directory" ]]
	then
		find /etc -maxdepth 1 -type d
elif [[ $1 = "file" ]]
	then
		find /etc -maxdepth 1 -type f
elif [[ $1 = "link" ]]
	then
		find /etc -maxdepth 1 -type l
else
	echo "Usage: $0 directory | file | link"
fi
