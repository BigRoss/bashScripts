#!/bin/bash
#This file was created on 27/04/15
# -f DELIMITER = ":"
# NR==1, NR==10, display 10 rows of information
# print $1, print coloumn 1
#length is internal function of awk, shows how many chars are in $1
#left justified -8, right justified with positive number
awk -F":" '
BEGIN { 
print "============" 
printf"%-8s %-3s\n", "User", "UID"
print "============"
}
NR==1, NR==10 { printf "%-8s %3d\n", $1, $3} ' /etc/passwd
#BEING is a header, can also format it using stuff inside {}
