#!/bin/bash
source menu.sh
source checker.sh
checkFile data
if [ ${?} -ne 0 ]
then
	echo "Can not find data"
	exit 1
fi
checkRFile data
if [ ${?} -ne 0 ]
then
        echo "Can read from data"
	exit 2
fi
checkWFile datafile
if [ ${?} -ne 0 ]
then
        echo "Can write to data"
	exit 3
fi

runMenu
exit 0