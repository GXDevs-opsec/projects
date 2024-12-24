#!/bin/bash

touch save.txt
if [ -f file.txt ]; then
	while read -r line;
	do
		echo "$line $(date)">>save.txt
	done < "file.txt"
	echo "==================================================================">>save.txt
	rm file.txt
elif ! [ -f file.txt ]; then
	echo "ERROR DURING CALCULATION.....">>save.txt
	echo "==================================================================">>save.txt
fi
