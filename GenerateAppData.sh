#!/bin/bash
appdata=./appdata
backupdir=./backups

if [ ! -d ${appdata} ]; then 	
    mkdir ${appdata}   
elif [ ! -d ${backupdir} ]; then
    mkdir ${backupdir}
fi

if [ -z "$(ls -A ${appdata})" ]; then
   rm -rf ${appdata}/*
   #trunc -s 50m  appdata
fi

if [ -z "$(ls -A ${backupdir})"]; then
	for VAR in 1 2 3 4 5
	do
	    truncate -s 50m appdata.tar.gz.${VAR}
	done
fi

