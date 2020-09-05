#!/bin/bash
appdir=./appdata
backupdir=./backups


find ${backupdir}/* -mtime +90 -exec rm -rf {} \;
COUNT=$(($(ls -Art ${backupdir}/ | tail -n 1 | cut -d. -f 4) +1))
tar -zcf  ${backupdir}/appdata.tar.gz.${COUNT} ${appdir}
