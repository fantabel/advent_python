#!/usr/bin/env bash

function process_folder {
	echo "processing folder $1"
	days=$(ls $1)
	for f in $days
	do
		python3 $1/$f/solve.py
	done

}

if [ -z $1 ]
then
	years=(2015 2016);
else
	if [ ! -d "$1" ]
	then
		echo "Folder $1 doesn't exists"
		exit
	fi
	declare -a years=($1)
fi

for f in "${years[@]}"
do
	process_folder $f
done
