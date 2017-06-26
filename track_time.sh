#!/bin/bash
WRK="${@}"
WRK="${WRK:=Sonstige Arbeiten}"
if ledger -f timelog.ledger print > /dev/null
then
	echo $(date +'i %Y/%m/%d %H:%M:%S')" Timesheet:${USER}    ${WRK}" >> timelog.ledger
	echo "Logge: Timesheet:${USER}    ${WRK}"
	echo "Press Return to Exit tracking"
	read
	echo $(date +'o %Y/%m/%d %H:%M:%S')" Timesheet:${USER}" >> timelog.ledger
else
	echo "Ur ledger file has errors, press Enter to run editor before u start tracking"
	read
	"${EDITOR:=vi}" timelog.ledger
	"${0}" "${@}"
fi
