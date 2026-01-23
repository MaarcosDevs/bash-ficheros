#!/bin/bash
contadorWindows=0
contadorLinux=0
while read linea
do
    div=linea
    if echo "$linea" | grep -q "Windows"
    then
        echo "$linea es Windows"
        contadorWindows=$((contadorWindows+1))
    else
        echo "$linea es Linux"
        contadorLinux=$((contadorLinux+1)) 
    fi
    echo "Tenemos $contadorWindows Usan Windows"
    echo "Tenemos $contadorLinux Usan Linux"
done < listado.txt