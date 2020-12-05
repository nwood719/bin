#!/bin/bash
if [ $# -eq 1 ] 
then
	echo "lock $1 ......"
	cleos wallet lock -n "\"$1\""
else 
	echo "Usage: lock all wallets! ......"
	cleos wallet lock_all
fi
# cleos wallet unlock -n "$1"
