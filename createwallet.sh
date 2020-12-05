#!/bin/bash
if [ $# -eq 0 ] 
then
	echo "cleos wallet create [default] ......"
	cleos wallet create --file default
else 
	if [ $# -eq 1 ] 
	then
		echo "cleos wallet create -n '$1' --file $1"
		cleos wallet create -n "$1" --file $1
	else 
		echo "Usage: $0 [wallet-name]"
	fi
fi
