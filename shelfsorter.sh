#!/bin/bash
export LANG=utf8_swedish_ci

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
			echo "ID      Namn            Vikt    L       B       H"
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
	echo "ID      Namn            Vikt    L       B       H"
	cat | sort -k 1n
elif [[ "$sorts" == *n* ]]
then
	echo "ID      Namn            Vikt    L       B       H"
	cat | sort -k 2 
elif [[ "$sorts" == *v* ]]
then
	echo "ID      Namn            Vikt    L       B       H"
	cat | sort -k 3n
elif [[ "$sorts" == *l* ]]
then
	echo "ID      Namn            Vikt    L       B       H"
	cat | sort -k 4n
elif [[ "$sorts" == *b* ]]
then
	echo "ID      Namn            Vikt    L       B       H"
	cat | sort -k 5n
elif [[ "$sorts" == *h* ]]
then
	echo "ID      Namn            Vikt    L       B       H"
	cat | sort -k 6n
fi
