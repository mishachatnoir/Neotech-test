#!/bin/bash
appdir=./appdata
backupdir=./backups

if [ ! -d ${appdir} ]; then 	
    mkdir ${appdir}   
fi

if [ ! -d ${backupdir} ]; then
    mkdir ${backupdir}
fi

if [ -z "$(ls -A ${appdir})" ]; then
   rm -rf ${appdir}/*
   head -c 50m </dev/urandom >$appdir/appdata
   #truncate -s 50m  ${appdir}/appdata
fi

rm -rf ${backupdir}/*
for VAR in 1 2 3 4 5
do
    truncate -s 20m ${backupdir}/appdata.tar.gz.${VAR}
    touch -t 20200"$((4+${VAR}))"010000.00 ${backupdir}/appdata.tar.gz.${VAR}
done

