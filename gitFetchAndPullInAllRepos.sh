#!/bin/bash
#  Takes in a config file of git folders as input and traverse all folders to run 'git fetch' and then 'git pull' 
#  CONFIG FILE FORMAT:
#  	DIRECTORY 1
#	DIRECTORY 2
#	DIRECTORY 3
#	...


# E
if [ -z "$1" ]; then
	echo "ABORT: INPUT CONFIG FILE MISSING"
	exit 0;
else
	IFS=$'\r\n' REPOSITORIES=($(cat $1))
	echo "CONFIG FILE RECOGNIZED"
	echo "RUNNING...."
fi

for REPO in "${REPOSITORIES[@]}"
do
	echo ${REPO};
	cd ${REPO}; 
	git fetch;
	git pull; 
	echo "======================================"; 
done

#End Script
echo "DONE..."


