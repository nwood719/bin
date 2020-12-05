#!/bin/bash
if [ $# -eq 0 ] 
then
	echo "cleos wallet private-keys to wallet [default] ......"
	cleos wallet private_keys
else 
	if [ $# -eq 1 ] 
	then
		echo "cleos  wallet private_keys to wallet [$1] ......"
		cat $1 | cleos wallet private_keys -n "$1"
	else 
		echo "Usage: priavtekeys.sh [wallet-name]"
	fi
fi
# cleos wallet unlock -n "$1"
