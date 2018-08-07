#!/bin/bash

echo -n "Please enter the number[1-12] of Month: "; read mon

case $mon in 
	1) echo "January!";;
	2) echo "Feburary!";;
	3) echo "March!";;
	4) echo "April!";;
	5) echo "May!";;
	6) echo "June!";;
	7) echo "July!";;
	8) echo "August!";;
	9) echo "September!";;
	10) echo "October!";;
	11) echo "November!";;
	12) echo  "December!";;
	#13) echo "Not a valid number :";;
esac
