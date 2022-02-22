#!/bin/bash

file=$1
domain=$2

while read line; do
	ip="$(grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' <<< "$line")"
	echo `host $ip` | grep "$domain" >> result_for_reverselookup.txt
done < $file
