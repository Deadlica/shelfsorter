#!/bin/bash

helpInfo() {
	echo "Usage: shelfsorter [-p|-s {i|n|v|l|b|h}]"
	echo "Used primarily for sorting furniture data with"
	echo "FILE as underlying data."
	echo "	-p	print data contents and exit"
	echo "	-s	sort by additional argument: id (i),"
	echo "		  name (n), weight (v), length(l)"
	echo "		  width (b), height (h), print data"
	echo "		  contents and exit"
	echo "	--help	displays this help and exit"
	exit 1
}

while getopts ":-hps:" opt
do
	case $opt in
		p)
			cat furniture.txt
			exit 1
		;;
		s)
			sorts=$OPTARG
		;;
		h | -help)
			helpInfo
		;;
		\?)
			echo "Error: Invalid option"
			exit 1
		;;
	esac
done

if [[ "$sorts" == *i* ]]
then
	echo "id"
elif [[ "$sorts" == *n* ]]
then
	echo "name"
elif [[ "$sorts" == *v* ]]
then
	echo "weight"
elif [[ "$sorts" == *l* ]]
then
	echo "length"
elif [[ "$sorts" == *b* ]]
then
	echo "width"
elif [[ "$sorts" == *h* ]]
then
	echo "height"
fi
