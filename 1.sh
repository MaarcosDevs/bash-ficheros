#!/bin/bash
contador=0
while read numero
do
    div=$((numero % 2))
    if [ $div -eq 0 ]
    then
        echo "$numero es par"
        contador=$((count+1))
    else
        echo "$numero es impar"
        contador=$((count+1)) 
    fi
done < numeros.txt