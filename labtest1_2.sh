#!/bin/bash
read n
i=1

while [[ $i -le $n ]]
do
	if [[ $((i*i)) -gt $n ]]
	then
		exit
	else
		echo -n "$((i*i)) "
		i=$((i+1))
	fi
done