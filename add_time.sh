#!/bin/bash
HOURS="${1}"
shift
HOURS="${HOURS:=1h}"
WRK="${@}"
WRK="${WRK:=Sonstige Arbeiten}"
TAB="    "
if ledger -f timelog.ledger print > /dev/null
then
	echo $(date +'%Y/%m/%d')" ${WRK}" > timelog.ledger.tmp
	echo "${TAB}(Timesheet:${USER})    ${HOURS}" >> timelog.ledger.tmp
	echo "Adding to Journal:"
	cat timelog.ledger.tmp
	cat timelog.ledger.tmp >> timelog.ledger
	rm timelog.ledger.tmp
else
	echo "Ur ledger file has errors, press Enter to run editor before u add entry"
	read
	"${EDITOR:=vi}" timelog.ledger
	"${0}" "${HOURS}" "${@}"
fi
