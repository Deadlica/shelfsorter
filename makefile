program: shelfsorter.sh
	chmod 755 shelfsorter.sh

id: shelfsorter.sh
	./shelfsorter.sh -s i < furniture.txt

name: shelfsorter.sh
	./shelfsorter.sh -s n < furniture.txt

weight: shelfsorter.sh
	./shelfsorter.sh -s v < furniture.txt

length: shelfsorter.sh
	./shelfsorter.sh -s l < furniture.txt

width: shelfsorter.sh
	./shelfsorter.sh -s b < furniture.txt

height: shelfsorter.sh
	./shelfsorter.sh -s h < furniture.txt
