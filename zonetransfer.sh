#!/bin/bash

domain=$1

host -t ns $domain | cut -d " " -f 4 >> nameservers.txt


while read line; do
	echo `dig axfr $domain @$line` | grep -v "Transfer failed" >> zonetransfer.txt  
done < nameservers.txt
