#!/bin/bash
if [ $# -eq 0 ] 
then
	echo "cleos wallet import private-key to wallet [default] ......"
	cleos wallet import
else 
	if [ $# -eq 1 ] 
	then
		echo "cleos  wallet import private-key to wallet [$1] ......"
		cleos wallet import -n "$1"
	else 
		echo "Usage: import [wallet-name]"
	fi
fi
# cleos wallet unlock -n "$1"
