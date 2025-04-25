#!/bin/bash

tr -d '\r' < $1 > output.csv

echo "grades" > gradecol.csv
for line in $(cat output.csv)
do
    a=$(echo $line | cut -d ',' -f 6,6)
    if (($a>85)); then
        echo "AA" >> gradecol.csv
    elif (($a>65)); then
        echo "AB" >> gradecol.csv
    elif (($a>45)); then
        echo "BB" >> gradecol.csv
    elif (($a>35)); then
        echo "CC" >> gradecol.csv 
    elif (($a>=1)); then
        echo "F" >> gradecol.csv
    fi
done  

paste -d ',' output.csv gradecol.csv > output2.csv
grep -E "23B[0-9]*" output2.csv > ug223.csv
echo "rollno,quiz1,quiz2,midsem,endsem,total-marks,grades" > ug23.csv
sort -t ',' -k7,7 -k1,1 ug223.csv >> ug23.csv

grep -E "24B[0-9]*" output2.csv > ug224.csv
echo "rollno,quiz1,quiz2,midsem,endsem,total-marks,grades" > ug24.csv
sort -t ',' -k7,7 -k1,1 ug224.csv >> ug24.csv

rm output.csv 
rm output2.csv 
rm ug223.csv 
rm ug224.csv
rm gradecol.csv