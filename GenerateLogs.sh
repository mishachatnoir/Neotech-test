#!/bin/bash
if [ -d "./dir" ]; then 	
   mkdir log
fi

touch -t 202004010000.00 log/app_health.log.5
touch -t 202005010000.00 log/app_health.log.4
touch -t 202006010000.00 log/app_health.log.3
touch -t 202007010000.00 log/app_health.log.2
touch -t 202008010000.00 log/app_health.log.1
touch -t 202009010000.00 log/app_health.log

