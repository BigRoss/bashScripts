#!/bin/bash
#This filee was created on 25/04/15

case $1 in
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
