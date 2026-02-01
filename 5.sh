#!/bin/bash

while read linea
do
    col1=$(echo "$linea" | awk '{print $1}')
    col2=$(echo "$linea" | awk '{print $2}')
    col3=$(echo "$linea" | awk '{print $3}')
    if [ "$col3" -lt 5 ]; then
        echo "$col1"
        echo $col1 >> temporal.txt
    elif [ "$col3" -eq 5 ]; then
        echo "$col1 no me sirve"
    fi
done < asignaturas.txt

while read linea
do
    col1=$(echo "$linea" | awk '{print $1}')
done < temporal.txt
awk '{print $1}' temporal.txt | sort | uniq > definitivo.txt
while read linea
do
    col1=$(echo "$linea" | awk '{print $1}')
    echo $col1
done < definitivo.txt