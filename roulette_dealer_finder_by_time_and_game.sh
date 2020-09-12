#!/bin/bash

if [ $# -gt 3 ]; then
	echo "Too many arguments"
elif [ $# -lt 3 ]; then
	echo "Not enough arguments"
else
	case $3 in
		BlackJack)
			cat $1_Dealer_schedule | grep "$2" | awk -F" " '{print "Dealer: "$3,$4}';;
		Roulette)
			cat $1_Dealer_schedule | grep "$2" | awk -F" " '{print "Dealer: "$5,$6}';;
		TexasHoldEm)
			cat $1_Dealer_schedule | grep "$2" | awk -F" " '{print "Dealer: "$7,$8}';;
		*)
			"Check spelling of casino game and try again";;
	esac
	printf "\n"
fi
