#!/bin/bash
diaSemana=0

while read hoy agua
do

    if [ "$agua" -eq 0 ]
    then
        diaSemana=$((diaSemana+1))
        if [ "$diaSemana" -gt 7 ]
        then
            diaSemana=$((1))
        fi

        if [ "$diaSemana" -eq 1 ]
        then
            echo "El lunes $hoy no ha llovido"
        elif [ "$diaSemana" -eq 2 ]
        then
            echo "El martes $hoy no ha llovido"
        elif [ "$diaSemana" -eq 3 ]
        then
            echo "El miercoles $hoy no ha llovido"
        elif [ "$diaSemana" -eq 4 ]
        then
            echo "El jueves $hoy no ha llovido"
        elif [ "$diaSemana" -eq 5 ]
        then
            echo "El viernes $hoy no ha llovido"
        elif [ "$diaSemana" -eq 6 ]
        then
            echo "El sabado $hoy no ha llovido"
        elif [ "$diaSemana" -eq 7 ]
        then
            echo "El domingo $hoy no ha llovido"
        fi
    else
        diaSemana=$((diaSemana+1))
        if [ "$diaSemana" -gt 7 ]
            then
                diaSemana=$((1))
        fi
    fi
done < precipitaciones.txt