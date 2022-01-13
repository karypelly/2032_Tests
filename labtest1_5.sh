#!/bin/bash
value=0
count=0
totalCount=0
while IFS=$'\t' read -r -a line || [ -n "$line" ]
do
	if [[ "${line[2]}" == "$1" ]]
	then
		price=${line[4]}
		value=$((value+price))
		totalCount=$((totalCount+1))
	elif [[ "${line[2]}" != "$1" ]]
	then
		count=$((count+1))
		totalCount=$((totalCount+1))
	fi
done < records.txt

if [[ "$count" == "$totalCount" ]]
then
	echo No such Department
else
	echo $value
fi
