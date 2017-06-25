#!/bin/bash
WRK="${@}"
WRK="${WRK:=Sonstige Arbeiten}"
echo $(date +'i %Y/%m/%d %H:%M:%S')" Timesheet:${USER}    ${WRK}" >> timelog.ledger
echo "Logge: Timesheet:${USER}    ${WRK}"
echo "Drücke Enter zum Beenden!"
read
echo $(date +'o %Y/%m/%d %H:%M:%S')" Timesheet:${USER}" >> timelog.ledger
