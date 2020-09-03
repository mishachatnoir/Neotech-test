#!/bin/bash
while [ -z ${FILE} ]
do

echo "Enter abosulte path to the text file"
    read INPUT 
    if [[ "${INPUT}" != /* ]] ; then
	    echo "This is not an absolute path. Absoulte path should start with /"
    elif [ -d "${INPUT}" ] ; then
         echo "${INPUT} is a directory, please enter absolute path to a text file"
    elif [ -f "${INPUT}" ] ; then
	         FILE=${INPUT}
    else
	 echo "This is not a valid path" 
    fi    
done

LINES=$( wc -l ${FILE} | cut -d ' ' -f 1 )
echo "This file contains ${LINES} lines of text"
