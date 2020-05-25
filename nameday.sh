#!/bin/bash
NEVNAPOK="ndays.csv"


AktDatum=`date '+%d %m'`
AktNap=${AktDatum:0:2}
AktHonap=`echo ${AktDatum:3:3} | awk '{print}'`

while IFS="," read honap nap nev;
do    
    honap=`echo $honap | awk '{print}'`
    nap=`printf "%02d\n" $nap`        
    if [ $nap == $AktNap -a $honap == $AktHonap ]
    then
	echo "A mai névnap:" $nev 
    fi
done < $NEVNAPOK 


