#!/bin/bash

max_global=0
dia_caluroso=""

while read dia min max; do
    oscilacion=$(awk "BEGIN { print $max - $min }")
    echo "$dia: oscilación térmica = $oscilacion"

    if [ "$max" -gt "$max_global" ]; then
        max_global=$max
        dia_caluroso=$dia
    fi

done < temperaturas.txt

echo "Día más caluroso: $dia_caluroso con $max_global °C"
