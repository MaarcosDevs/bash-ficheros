#!/bin/bash

total=0

while read producto cantidad precio; do
    if [ "$cantidad" -lt 10 ]; then
        echo "⚠️ Stock bajo: $producto ($cantidad unidades)"
    fi

    valor=$(awk "BEGIN { print $cantidad * $precio }")
    total=$(awk "BEGIN { print $total + $valor }")

done < stock.txt

echo "💰 Valor total del inventario: $total"
