#!/bin/bash
HOURS="${1}"
shift
HOURS="${HOURS:=1h}"
WRK="${@}"
WRK="${WRK:=Sonstige Arbeiten}"
TAB="    "
echo $(date +'%Y/%m/%d')" ${WRK}" > timelog.ledger.tmp
echo "${TAB}(Timesheet:${USER})    ${HOURS}" >> timelog.ledger.tmp
echo "Adding to Journal:"
cat timelog.ledger.tmp
cat timelog.ledger.tmp >> timelog.ledger
rm timelog.ledger.tmp
