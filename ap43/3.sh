#!/bin/bash

exts=""

while read archivo; do
    if [[ "$archivo" == *.* ]]; then
        ext=$(awk -F. '{print $NF}' <<< "$archivo")
        exts="$exts $ext"
    else
        echo "⚠️ Archivo sin extensión: $archivo"
    fi
done < archivos.txt

for e in $(echo "$exts" | tr ' ' '\n' | sort | uniq); do
    cantidad=$(echo "$exts" | tr ' ' '\n' | grep -c "^$e$")
    echo "Hay $cantidad archivos .$e"
done
