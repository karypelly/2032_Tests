#!/bin/bash
if  [[ "$4" == "u" ]]
then 
	if [[ $1 -gt $2 && $2 -gt $3 ]]
	then
		echo $3$2$1
		
	elif [[ $1 -gt $2 && $3 -gt $2 ]]
	then
		if [[ $3 -gt $1 ]]
		then
			echo $2$3$1
		else
			echo $2$1$3
		fi
	elif [[ $2 -gt $1 && $2 -gt $3 ]]
	then
		if [[ $1 -gt $3 ]]
		then 
			echo $2$1$3
		else
			echo $2$3$1
		fi
	elif [[ $3 -gt $2 && $2 -gt $1 ]]
	then
		echo $1$2$3
	elif [[ $3 -gt $1 && $3 -gt $2 ]]
	then
		if [[ $1 -gt $2 ]]
		then
			echo $2$1$3
		else
			echo $1$2$3
		fi
	fi
elif [[ "$4" == "d" ]]
then
	if [[ $1 -gt $2 && $2 -gt $3 ]]
	then
		echo $1$2$3
		
	elif [[ $1 -gt $2 && $3 -gt $2 ]]
	then
		if [[ $3 -gt $1 ]]
		then
			echo $1$3$2
		else
			echo $3$1$2
		fi
	elif [[ $2 -gt $1 && $2 -gt $3 ]]
	then
		if [[ $1 -gt $3 ]]
		then 
			echo $3$1$2
		else
			echo $1$3$2
		fi
	elif [[ $3 -gt $2 && $2 -gt $1 ]]
	then
		echo $3$2$1
	elif [[ $3 -gt $1 && $3 -gt $2 ]]
	then
		if [[ $1 -gt $2 ]]
		then
			echo $3$1$2
		else
			echo $3$2$1
		fi
	fi
fi