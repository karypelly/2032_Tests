#!/bin/bash
value=0
while IFS=$'\t' read -r -a line || [ -n "$line" ]
do
	if [[ "${line[2]}" == "$1" ]]
	then
		price=${line[4]}
		value=$((value+price))
	fi
done < records.txt
echo $value