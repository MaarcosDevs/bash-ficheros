#!/bin/bash

read -p "Usuario a buscar: " usuario

contador=0
temprano=0

while read user hora; do
    h=$(awk -F: '{print $1}' <<< "$hora")

    if [ "$user" = "$usuario" ]; then
        contador=$((contador + 1))
    fi

    if [ "$h" -lt 8 ]; then
        temprano=$((temprano + 1))
    fi

done < accesos.txt

echo "El usuario $usuario se conectó $contador veces"
echo "Usuarios conectados antes de las 08:00: $temprano"
