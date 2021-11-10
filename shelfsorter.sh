#!/bin/bash
export LANG=sv_SE.UTF8

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
			echo "ID   Namn          Vikt   L    B    H"
			column -t -s$'\t'
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
	echo "ID   Namn          Vikt   L    B    H"
	sort -k 1 | column -t -s$'\t'
elif [[ "$sorts" == *n* ]]
then
	echo "ID   Namn          Vikt   L    B    H"
	sort -k 2 | column -t -s$'\t'
elif [[ "$sorts" == *v* ]]
then
	echo "ID   Namn          Vikt   L    B    H"
	sort -k 3n -t$'\t' | column -t -s$'\t'
elif [[ "$sorts" == *l* ]]
then
	echo "ID   Namn          Vikt   L    B    H"
	sort -k 4n -t$'\t' | column -t -s$'\t'
elif [[ "$sorts" == *b* ]]
then
	echo "ID   Namn          Vikt   L    B    H"
	sort -k 5n -t$'\t' | column -t -s$'\t'
elif [[ "$sorts" == *h* ]]
then
	echo "ID   Namn          Vikt   L    B    H"
	sort -k 6n -t$'\t' | column -t -s$'\t'
fi
