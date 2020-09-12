#!/bin/bash

toomanyargs () { printf "Too many arguments provided.\nMake sure to check format of date and time.\n"; }

notenoughargs () { printf "Not enough arguments provided.\nMust provide date and time in valid formats.\n"; }

dealersrch () {
	printf "\nSearching for roulette dealer on $1 at $2...\n"
	cat $1_Dealer_schedule | grep "$2" | awk -F" " '{print "Dealer: "$5,$6}'
	}

checkinput () {
	date="[0-9]{4}"
	tme="[0-1][0-9]:[0-9]{2}:[0-9]{2} [AP]M"
	if [[ $1 =~ ^$date$ ]] && [[ $2 =~ ^$tme$ ]]; then
		dealersrch $1 "$2"
	else
		echo "Incorrect date or time format"
	fi
}
if [ $# -gt 2 ]; then
	toomanyargs
elif [ $# -lt 2 ]; then
	notenoughargs
else
	checkinput $1 "$2"
	printf "\n"
fi
