#!/bin/bash

while read diarios agua
do
    Lluvia=$((Lluvia+agua))

    dias=$((dias+1))
    
done < precipitaciones.txt

media=$((Lluvia/dias))

echo "Aqui llueve de media $media litros diarios."