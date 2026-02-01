#!/bin/bash

contadorWindows=0
contadorLinux=0
sumaWindows=0
sumaLinux=0

while read linea
do
    col2=$(echo "$linea" | awk '{print $2}')
    col3=$(echo "$linea" | awk '{print $3}')

    if [ "$col2" = "Windows" ]; then
        contadorWindows=$((contadorWindows + 1))
        sumaWindows=$((sumaWindows + $col3))
    else
        contadorLinux=$((contadorLinux + 1))
        sumaLinux=$((sumaLinux + $col3))
    fi
done < listado.txt

echo "Tenemos $contadorWindows usan Windows. Con $sumaWindows"
echo "Tenemos $contadorLinux usan Linux. Con $sumaLinux"
