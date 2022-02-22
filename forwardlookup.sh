#!/bin/bash

subdomainlist=$1
domain=$2


while read line; do
	echo `host "${line}.${domain}"` | grep "has address" >> result_for_forwardlookup.txt
done < $subdomainlist
