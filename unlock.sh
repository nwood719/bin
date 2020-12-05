#!/bin/bash
##################################################
##
## EOS command line simplified version 0.0.1
## by  PY Cheng
## Feb. 19th, 2019
##
##################################################
if [ $# -eq 0 ] 
then
	echo "cleos wallet unlock [defualt] ......"
	cleos wallet unlock
else 
	if [ $# -eq 1 ] 
	then
		echo "cleos wallet unlock [$1] ......"
		cat $1 | cleos wallet unlock -n $1
	else 
		echo "Usage: unlock [wallet-name]"
	fi
fi
