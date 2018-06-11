#!/bin/bash


while [ 1 ] 

do

ASTROTEST=`tail -n 1  /lab/logs/astrobox.log`
OPSTRING="Changing monitoring state from [Operational] to [Printing]"
FIL=$(($(date +%s) - $(date +%s -r /var/log/filament-sensor.log)))
if  [[  "$ASTROTEST" =~ "$OPSTRING" ]]; then
	if (( "$FIL" > "220" )); then
  		echo "Inside Print Window filament last $FIL Suspect Air print !!"
	else
		echo "inside Print window filament last $FIL"	
	fi
#  echo "Inside Print Window , $TEST, $OPSTRING"
#else
#  echo "Outside Print Window , $TEST, $OPSTRING"
fi

sleep 10

done

